#!/usr/bin/env bash
# Copyright 2025 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Fails if any submodule pin drifts from the release tag declared in
# .gitmodules. A pin is valid only when the checked-out commit is *exactly*
# the tag named by that submodule's `branch` field. This catches both a pin
# left behind a bumped branch and a pin advanced past its tag onto main.

set -euo pipefail

fail=0

# Enumerate submodule paths from .gitmodules.
paths=$(git config -f .gitmodules --get-regexp '^submodule\..*\.path$' | awk '{print $2}')

for path in $paths; do
  name=$(git config -f .gitmodules --get-regexp "^submodule\..*\.path$" \
    | awk -v p="$path" '$2==p {print $1}' | sed -E 's/^submodule\.(.*)\.path$/\1/')
  branch=$(git config -f .gitmodules --get "submodule.${name}.branch" || true)

  if [ -z "$branch" ]; then
    echo "SKIP  $path (no branch declared in .gitmodules)"
    continue
  fi

  # Resolve the tag that HEAD sits on exactly, if any.
  actual_tag=$(git -C "$path" describe --exact-match --tags HEAD 2>/dev/null || true)

  if [ -z "$actual_tag" ]; then
    sha=$(git -C "$path" rev-parse --short HEAD)
    echo "FAIL  $path pinned to $sha (not a tag); expected tag '$branch'"
    fail=1
  elif [ "$actual_tag" != "$branch" ]; then
    echo "FAIL  $path pinned to tag '$actual_tag'; expected '$branch'"
    fail=1
  else
    echo "OK    $path -> $actual_tag"
  fi
done

if [ "$fail" -ne 0 ]; then
  echo
  echo "Submodule pin drift detected. Re-pin the offending submodule to the"
  echo "tag named in .gitmodules, e.g.:"
  echo "    git -C <path> fetch --tags origin"
  echo "    git -C <path> checkout <tag>"
  echo "    git add <path>"
  exit 1
fi

echo
echo "All submodule pins match their declared release tags."
