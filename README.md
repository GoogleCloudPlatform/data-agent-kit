# Data Agent Kit

This repository serves as the central hub for embedding the Agentic Data Cloud across your favorite developer-focused AI tools. 

Whether you are a developer vibe-coding in Claude Code, an enterprise engineer using the Gemini CLI, or an agent builder constructing complex systems with LangGraph, this kit provides the prescriptive tools like **Skills and MCP servers** you need to interact safely and efficiently with [Google Data Cloud products](https://cloud.google.com/data-cloud).

## 📓 What's Included

The Data Agent Kit is currently organized as an index pointing to product-specific extensions, MCP configurations, and builder tools.

- [Extensions & Plugins](#individual-extensions--plugins)
- [MCP Servers](#model-context-protocol-mcp)
- [Agent Evaluations & Monitoring](#agent-evaluations--monitoring)

## 🏬 Extensions & Plugins Marketplace

Extensions and plugins are the primary way to inject specialized capabilities into your AI agents. Think of a plugin marketplace as a digital registry or catalog that makes it easy to discover, share, and install these tools directly into your environment. By installing these packages, you equip tools like Gemini CLI, Claude Code, and Codex with the exact **Skills, Prompts, and MCP Servers** they need to understand and interact with your Google Data Cloud infrastructure.

<details>
<summary><h3>Gemini CLI Installation</h3></summary>

Gemini CLI extensions are installed directly from their remote GitHub repositories.
```bash
gemini extensions install https://github.com/gemini-cli-extensions/<REPO>
```

</details>

<details>
<summary><h3>Claude Code Installation</h3></summary>

Claude Code utilizes a marketplace system for plugins. Install the Data Agent Kit marketplace to access all Data Cloud plugins:

```bash
# Step 1. Install marketplace
## Option 1. Install marketplace from CLI
claude plugin marketplace add GoogleCloudPlatform/data-agent-kit

## Option 2. Install marketplace from Claude
/plugin marketplace add https://github.com/GoogleCloudPlatform/data-agent-kit.git

# Step 2. Install a plugin
claude
/plugin install <plugin-name>@data-agent-kit

# Step 3. Reload plugins
/reload-plugins

# Optional. Update the marketplace
claude plugin marketplace update data-agent-kit
```

</details>

<details>
<summary><h3>OpenAI Codex Installation</h3></summary>

Codex utilizes a marketplace system for plugins. Install the Data Agent Kit marketplace to access all Data Cloud plugins:

```bash
# Step 1. Clone the repo
git clone https://github.com/GoogleCloudPlatform/data-agent-kit.git
cd data-agent-kit

# Step 2. Open the plugin manager interface
codex
/plugins
# Browse & install plugins from available marketplaces.
```

</details>

### 📦 Individual Extensions & Plugins

These extensions package product-specific Skills and MCP servers for use in any of your AI tools. Refer to the specific product repositories linked above for installation and configuration requirements.

| Product | Location | Description |
| :--- | :--- | :--- |
| **Data Agent Kit Starter Pack** | https://github.com/gemini-cli-extensions/data-agent-kit-starter-pack | This plugin provides a specialized suite of skills for data engineers and database practitioners working on Google Cloud. It acts as an expert assistant, allowing you to use natural language prompts in your preferred coding agent to architect complex data pipelines, transform data with dbt, write Spark and BigQuery SQL notebooks, and orchestrate end-to-end workflows across GCP's data ecosystem. |
| **AlloyDB for PostgreSQL** | https://github.com/gemini-cli-extensions/alloydb | Create, connect, and interact with an AlloyDB for PostgreSQL database and data. |
| **AlloyDB Omni** | https://github.com/gemini-cli-extensions/alloydb-omni | Create, connect, and interact with an AlloyDB Omni database and data. |
| **Bigtable** | https://github.com/GoogleCloudPlatform/cloud-bigtable-ecosystem | Connect, query, and interact with Cloud Bigtable. |
| **Cloud SQL for MySQL** | https://github.com/gemini-cli-extensions/cloud-sql-mysql | Connect and interact with a Cloud SQL for MySQL database and data. |
| **Cloud SQL for PostgreSQL** | https://github.com/gemini-cli-extensions/cloud-sql-postgresql | Create, connect, and interact with a Cloud SQL for PostgreSQL database and data. |
| **Cloud SQL for SQL Server** | https://github.com/gemini-cli-extensions/cloud-sql-sqlserver | Connect to Cloud SQL for SQL Server. |
| **Firestore** | https://github.com/gemini-cli-extensions/firestore-native | Connect and interact with Cloud Firestore. |
| **Looker** | https://github.com/gemini-cli-extensions/looker | Connect to Looker. |
| **Oracle Database** | https://github.com/gemini-cli-extensions/oracledb | Connect, query, and interact with Oracle Databases and their data within Gemini CLI. |
| **Spanner** | https://github.com/gemini-cli-extensions/spanner | Connect and interact with Spanner data using natural language. |


## 🧩 Model Context Protocol (MCP) Servers

If you are building your own agents or using an interface that supports raw MCP connections, check our comprehensive guide on utilizing **Google Cloud MCP Servers** vs. the open-source **MCP Toolbox**.
* 📖 **[View MCP Configurations](./mcp-servers/README.md)**

## 📊 Agent Evaluations & Monitoring

For developers building production agents (e.g., using ADK or LangGraph), we provide opinionated guidance on making your agents observable, safe, and measurable.
* **[Agent Analytics](./agent-analytics/README.md):** Track usage and performance of agents using BigQuery.
* **[Agent Evaluation](./agent-evaluation/README.md):** Benchmark and test your agents using EvalBench.

---

## 🏗️ Contributing

Contributions are welcome. Please, see the [CONTRIBUTING](CONTRIBUTING.md) guide to get started. 

For technical details on setting up an environment for developing on Toolbox itself, see the [DEVELOPER](DEVELOPER.md) guide.

Please note that this project is released with a Contributor Code of Conduct. By participating in this project you agree to abide by its terms. See [Contributor Code of Conduct](CODE_OF_CONDUCT.md) for more information.
