# Data Cloud MCP Servers

This guide covers the two primary ways to utilize MCP with Google Data Cloud products: [**Google Cloud MCP Servers**][mcp] and the [**MCP Toolbox**][tb].

[mcp]: https://docs.cloud.google.com/mcp/overview
[tb]: https://mcp-toolbox.dev

## Table of Contents

- [Google Cloud MCP Servers vs. MCP Toolbox](#google-cloud-mcp-servers-vs-mcp-toolbox)
- [Quickstart: Google Cloud MCP Servers](#quickstart-google-cloud-mcp-servers)
- [Quickstart: MCP Toolbox](#quickstart-mcp-toolbox)
- [Products](#products)
  - [AlloyDB](#alloydb)
  - [AlloyDB Omni](#alloydb-omni)
  - [BigQuery](#bigquery)
  - [Bigtable](#bigtable)
  - [Cloud SQL for MySQL](#cloud-sql-for-mysql)
  - [Cloud SQL for PostgreSQL](#cloud-sql-for-postgresql)
  - [Cloud SQL for SQL Server](#cloud-sql-for-sql-server)
  - [Dataproc](#dataproc)
  - [Firestore](#firestore)
  - [Knowledge Catalog](#knowledge-catalog)
  - [Looker](#looker)
  - [Memorystore](#memorystore)
  - [Oracle Database](#oracle-database)
  - [Spanner](#spanner)

## Google Cloud MCP Servers vs. MCP Toolbox

Choosing between Google Cloud MCP Servers and the MCP Toolbox depends on your needs for management versus flexibility.

| Feature | Google Cloud MCP Servers | MCP Toolbox |
| :--- | :--- | :--- |
| **Management** | Managed by Google | Self-managed / Open Source |
| **Local Setup** | Zero-install | Requires running `toolbox` |
| **Customization** | Standardized toolsets | Supports standard toolsets and custom tools |
| **Authentication** | Requires MCP Client OAuth support using personal credentials | Flexible credential support via the environment |
| **Best For** | Enterprise-grade, stable toolsets | Prototyping and custom tool requirements |
| **Datasource Support** | [Product List](https://docs.cloud.google.com/mcp/supported-products) | [Product List](https://mcp-toolbox.dev/integrations/) | 

---

## Quickstart: Google Cloud MCP Servers

1. [Enable or disable MCP server](https://docs.cloud.google.com/mcp/enable-disable-mcp-servers)
1. [Authenticate to Google and Google Cloud MCP servers](https://docs.cloud.google.com/mcp/authenticate-mcp)
1. [Configure MCP in an AI application](https://docs.cloud.google.com/mcp/configure-mcp-ai-application)

## Quickstart: MCP Toolbox 

1. [Install Toolbox](https://mcp-toolbox.dev/documentation/introduction/#install-toolbox)
1. [Configure Ready-to-use or custom tools](https://mcp-toolbox.dev/documentation/introduction/#quickstart-running-toolbox-using-npx)
1. [Setup Application Default Credentials](https://cloud.google.com/docs/authentication/gcloud)
1. [Connect to Toolbox](https://mcp-toolbox.dev/documentation/connect-to/)

---
## Products

### AlloyDB for PostgreSQL

#### Google Cloud MCP Servers (Managed)

Learn more about tools, permissions, and configuration at [Use the AlloyDB MCP server](https://docs.cloud.google.com/alloydb/docs/ai/use-alloydb-mcp).

```json
"alloydb-managed": {
  "type": "http",
  "url": "https://alloydb.googleapis.com/mcp",
  "headers": {
    "Authorization": "Bearer ${API_KEY}",
    "x-goog-user-project": "YOUR_PROJECT_ID"
  }
}
```

#### MCP Toolbox (OSS)

Learn more about tools, permissions, and configuration at [AlloyDB prebuilt MCP Toolbox configuration](https://mcp-toolbox.dev/integrations/alloydb/prebuilt-configs/).

```json
"alloydb-toolbox": {
  "command": "npx",
  "args": [
    "-y",
    "@toolbox-sdk/server",
    "--prebuilt",
    "alloydb-postgres",
    "--stdio"
  ],
  "env": {
    "ALLOYDB_POSTGRES_PROJECT": "YOUR_PROJECT_ID",
    "ALLOYDB_POSTGRES_REGION": "YOUR_REGION",
    "ALLOYDB_POSTGRES_CLUSTER": "YOUR_CLUSTER_ID",
    "ALLOYDB_POSTGRES_INSTANCE": "YOUR_INSTANCE_ID",
    "ALLOYDB_POSTGRES_DATABASE": "YOUR_DB_NAME"
  }
}
```

---

### AlloyDB Omni

#### MCP Toolbox (OSS)

Learn more about tools, permissions, and configuration at [AlloyDB Omni prebuilt MCP Toolbox configuration](https://mcp-toolbox.dev/integrations/postgres/prebuilt-configs/alloydb-omni/).

```json
"alloydb-omni-toolbox": {
  "command": "npx",
  "args": [
    "-y",
    "@toolbox-sdk/server",
    "--prebuilt",
    "alloydb-omni",
    "--stdio"
  ],
  "env": {
    "ALLOYDB_OMNI_HOST": "localhost",
    "ALLOYDB_OMNI_PORT": "5432",
    "ALLOYDB_OMNI_DATABASE": "YOUR_DB_NAME",
    "ALLOYDB_OMNI_USER": "postgres",
    "ALLOYDB_OMNI_PASSWORD": "YOUR_PASSWORD"
  }
}
```

---

### BigQuery

#### Google Cloud MCP Servers (Managed)

Learn more about tools, permissions, and configuration at [Use the BigQuery MCP server](https://docs.cloud.google.com/bigquery/docs/use-bigquery-mcp).

```json
"bigquery-managed": {
  "type": "http",
  "url": "https://bigquery.googleapis.com/mcp",
  "headers": {
    "Authorization": "Bearer ${API_KEY}",
    "x-goog-user-project": "my-project"
  }
}
```

##### Gemini CLI extension

The [BigQuery remote MCP server](https://github.com/GoogleCloudPlatform/bigquery-remote-mcp/tree/main) can also be installed as a Gemini CLI extension. Install the extension:

```shell
gemini extensions install https://github.com/GoogleCloudPlatform/bigquery-remote-mcp
```

#### **MCP Toolbox (OSS)**

Learn more about tools, permissions, and configuration at [BigQuery prebuilt MCP Toolbox configuration](https://mcp-toolbox.dev/integrations/bigquery/prebuilt-configs/).

```json
"bigquery-toolbox": {
  "command": "npx",
  "args": [
    "-y",
    "@toolbox-sdk/server",
    "--prebuilt",
    "bigquery",
    "--stdio"
  ],
  "env": {
    "BIGQUERY_PROJECT": "YOUR_PROJECT_ID"
  }
}
```

---

### Bigtable

#### Google Cloud MCP Servers (Managed)

Learn more about tools, permissions, and configuration at [Use the Bigtable MCP server](https://docs.cloud.google.com/bigtable/docs/use-bigtable-mcp).

```json
"bigtable-managed": {
  "type": "http",
  "url": "https://bigtable.googleapis.com/mcp",
  "headers": {
    "Authorization": "Bearer ${API_KEY}",
    "x-goog-user-project": "YOUR_PROJECT_ID"
  }
}
```

---

### Cloud SQL for MySQL

#### Google Cloud MCP Servers (Managed)

Learn more about tools, permissions, and configuration at [Use the Cloud SQL MCP server](https://docs.cloud.google.com/sql/docs/mysql/use-cloudsql-mcp).

```json
"cloud-sql-mysql-managed": {
  "type": "http",
  "url": "https://sqladmin.googleapis.com/mcp",
  "headers": {
    "Authorization": "Bearer ${API_KEY}",
    "x-goog-user-project": "YOUR_PROJECT_ID"
  }
}
```

#### MCP Toolbox (OSS)

Learn more about tools, permissions, and configuration at [Cloud SQL prebuilt MCP Toolbox configuration](https://mcp-toolbox.dev/integrations/cloud-sql-mysql/prebuilt-configs/).

```json
"cloud-sql-mysql-toolbox": {
  "command": "npx",
  "args": [
    "-y",
    "@toolbox-sdk/server",
    "--prebuilt",
    "cloud-sql-mysql",
    "--stdio"
  ],
  "env": {
    "CLOUD_SQL_MYSQL_PROJECT": "YOUR_PROJECT_ID",
    "CLOUD_SQL_MYSQL_INSTANCE": "YOUR_INSTANCE_ID",
    "CLOUD_SQL_MYSQL_DATABASE": "YOUR_DB_NAME"
  }
}
```

---

### Cloud SQL for PostgreSQL

#### Google Cloud MCP Servers (Managed)

Learn more about tools, permissions, and configuration at [Use the Cloud SQL MCP server](https://docs.cloud.google.com/sql/docs/postgres/use-cloudsql-mcp).

```json
"cloud-sql-postgres-managed": {
  "type": "http",
  "url": "https://sqladmin.googleapis.com/mcp",
  "headers": {
    "Authorization": "Bearer ${API_KEY}",
    "x-goog-user-project": "YOUR_PROJECT_ID"
  }
}
```

#### MCP Toolbox (OSS)

Learn more about tools, permissions, and configuration at [Cloud SQL prebuilt MCP Toolbox configuration](https://mcp-toolbox.dev/integrations/cloud-sql-pg/prebuilt-configs/).

```json
"cloud-sql-postgres-toolbox": {
  "command": "npx",
  "args": [
    "-y",
    "@toolbox-sdk/server",
    "--prebuilt",
    "cloud-sql-postgresql",
    "--stdio"
  ],
  "env": {
    "CLOUD_SQL_POSTGRES_PROJECT": "YOUR_PROJECT_ID",
    "CLOUD_SQL_POSTGRES_INSTANCE": "YOUR_INSTANCE_ID",
    "CLOUD_SQL_POSTGRES_DATABASE": "YOUR_DB_NAME"
  }
}
```

---

### Cloud SQL for SQL Server

#### Google Cloud MCP Servers (Managed)

Learn more about tools, permissions, and configuration at [Use the Cloud SQL MCP server](https://docs.cloud.google.com/sql/docs/sqlserver/use-cloudsql-mcp).

```json
"cloud-sql-sqlserver-managed": {
  "type": "http",
  "url": "https://sqladmin.googleapis.com/mcp",
  "headers": {
    "Authorization": "Bearer ${API_KEY}",
    "x-goog-user-project": "YOUR_PROJECT_ID"
  }
}
```

#### MCP Toolbox (OSS)

Learn more about tools, permissions, and configuration at [Cloud SQL prebuilt MCP Toolbox configuration](https://mcp-toolbox.dev/integrations/cloud-sql-mssql/prebuilt-configs/).

```json
"cloud-sql-sqlserver-toolbox": {
  "command": "npx",
  "args": [
    "-y",
    "@toolbox-sdk/server",
    "--prebuilt",
    "cloud-sql-mssql",
    "--stdio"
  ],
  "env": {
    "CLOUD_SQL_MSSQL_PROJECT": "YOUR_PROJECT_ID",
    "CLOUD_SQL_MSSQL_INSTANCE": "YOUR_INSTANCE_ID",
    "CLOUD_SQL_MSSQL_DATABASE": "YOUR_DB_NAME"
  }
}
```

---

### Dataproc / Managed Service for Apache Spark 

#### Google Cloud MCP Servers (Managed)

Learn more about tools, permissions, and configuration at [Use the Managed Service for Apache Kafka remote MCP server](https://docs.cloud.google.com/managed-service-for-apache-kafka/docs/use-managed-service-for-apache-kafka-mcp).

```json
"dataproc-managed": {
  "type": "http",
  "url": "https://managedkafka.REGION.rep.googleapis.com/mcp",
  "headers": {
    "Authorization": "Bearer ${API_KEY}",
    "x-goog-user-project": "YOUR_PROJECT_ID"
  }
}
```

#### MCP Toolbox (OSS)

Learn more about tools, permissions, and configuration at [Dataproc prebuilt MCP Toolbox configuration](https://mcp-toolbox.dev/integrations/dataproc/prebuilt-configs/).

```json
"dataproc-toolbox": {
  "command": "npx",
  "args": [
    "-y",
    "@toolbox-sdk/server",
    "--prebuilt",
    "dataproc",
    "--stdio"
  ],
  "env": {
    "DATAPROC_PROJECT": "YOUR_PROJECT_ID",
    "DATAPROC_REGION": "YOUR_REGION"
  }
}
```

---

### Firestore

#### Google Cloud MCP Servers (Managed)

Learn more about tools, permissions, and configuration at [Use the Firestore MCP server](https://docs.cloud.google.com/firestore/native/docs/use-firestore-mcp).

```json
"firestore-managed": {
  "type": "http",
  "url": "https://firestore.googleapis.com/mcp",
  "headers": {
    "Authorization": "Bearer ${API_KEY}",
    "x-goog-user-project": "YOUR_PROJECT_ID"
  }
}
```

#### MCP Toolbox (OSS)

Learn more about tools, permissions, and configuration at [Firestore prebuilt MCP Toolbox configuration](https://mcp-toolbox.dev/integrations/firestore/prebuilt-configs/).

```json
"firestore-toolbox": {
  "command": "npx",
  "args": [
    "-y",
    "@toolbox-sdk/server",
    "--prebuilt",
    "firestore",
    "--stdio"
  ],
  "env": {
    "FIRESTORE_PROJECT": "YOUR_PROJECT_ID",
    "FIRESTORE_DATABASE": "YOUR_DB_NAME"
  }
}
```

---

### Knowledge Catalog

#### Google Cloud MCP Servers (Managed)

Learn more about tools, permissions, and configuration at [Use the Knowledge Catalog MCP server](https://docs.cloud.google.com/dataplex/docs/use-remote-mcp).

```json
"knowledge-catalog-managed": {
  "type": "http",
  "url": "https://datacatalog.googleapis.com/mcp",
  "headers": {
    "Authorization": "Bearer ${API_KEY}",
    "x-goog-user-project": "YOUR_PROJECT_ID"
  }
}
```

#### MCP Toolbox (OSS)

Learn more about tools, permissions, and configuration at [Knowledge Catalog prebuilt MCP Toolbox configuration](https://mcp-toolbox.dev/integrations/knowledge-catalog/prebuilt-configs/).

```json
"knowledge-catalog-toolbox": {
  "command": "npx",
  "args": [
    "-y",
    "@toolbox-sdk/server",
    "--prebuilt",
    "dataplex",
    "--stdio"
  ],
  "env": {
    "DATAPLEX_PROJECT": "YOUR_PROJECT_ID"
  }
}
```

---

### Looker

#### MCP Toolbox (OSS)

Learn more about tools, permissions, and configuration at [Looker prebuilt MCP Toolbox configuration](https://mcp-toolbox.dev/integrations/looker/prebuilt-configs/).

```json
"looker-toolbox": {
  "command": "npx",
  "args": [
    "-y",
    "@toolbox-sdk/server",
    "--prebuilt",
    "looker",
    "--stdio"
  ],
  "env": {
    "LOOKER_BASE_URL": "https://your-instance.looker.com",
    "LOOKER_CLIENT_ID": "YOUR_CLIENT_ID",
    "LOOKER_CLIENT_SECRET": "YOUR_CLIENT_SECRET"
  }
}
```

---

### Memorystore (Redis, Redis Cluster, Valkey)

#### Google Cloud MCP Servers (Managed)

Learn more about tools, permissions, and configuration at :
* [Connect to Memorystore for Redis from AI applications by using the remote MCP server](https://docs.cloud.google.com/memorystore/docs/redis/use-memorystore-mcp).
* [Connect to Memorystore for Redis Cluster from AI applications by using the remote MCP server](https://docs.cloud.google.com/memorystore/docs/cluster/use-memorystore-mcp)
* [Connect to Memorystore for Valkey from AI applications by using the remote MCP server](https://docs.cloud.google.com/memorystore/docs/valkey/use-memorystore-mcp)

```json
"redis-managed": {
  "type": "http",
  "url": "https://redis.googleapis.com/mcp",
  "headers": {
    "Authorization": "Bearer ${API_KEY}",
    "x-goog-user-project": "YOUR_PROJECT_ID"
  }
}
```

```json
"valkey-managed": {
  "type": "http",
  "url": "https://memorystore.googleapis.com/mcp",
  "headers": {
    "Authorization": "Bearer ${API_KEY}",
    "x-goog-user-project": "YOUR_PROJECT_ID"
  }
}
```

---

### Oracle Database

#### Google Cloud MCP Servers (Managed)

Learn more about tools, permissions, and configuration at [Use the Oracle Database MCP server](https://docs.cloud.google.com/mcp).

```json
"oracledb-managed": {
  "type": "http",
  "url": "https://oracledatabase.googleapis.com/mcp",
  "headers": {
    "Authorization": "Bearer ${API_KEY}",
    "x-goog-user-project": "YOUR_PROJECT_ID"
  }
}
```

#### MCP Toolbox (OSS)

Learn more about tools, permissions, and configuration at [Oracle Database prebuilt MCP Toolbox configuration](https://mcp-toolbox.dev/integrations/oracle/prebuilt-configs/).

```json
"oracledb-toolbox": {
  "command": "npx",
  "args": [
    "-y",
    "@toolbox-sdk/server",
    "--prebuilt",
    "oracle",
    "--stdio"
  ],
  "env": {
    "ORACLE_USER": "YOUR_USER",
    "ORACLE_PASSWORD": "YOUR_PASSWORD",
    "ORACLE_CONNECTION_STRING": "YOUR_CONNECTION_STRING"
  }
}
```

---

### Spanner

#### Google Cloud MCP Servers (Managed)

Learn more about tools, permissions, and configuration at [Use the Spanner MCP server](https://docs.cloud.google.com/spanner/docs/use-spanner-mcp).

```json
"spanner-managed": {
  "type": "http",
  "url": "https://spanner.googleapis.com/mcp",
  "headers": {
    "Authorization": "Bearer ${API_KEY}",
    "x-goog-user-project": "YOUR_PROJECT_ID"
  }
}
```

#### MCP Toolbox (OSS)

Learn more about tools, permissions, and configuration at [Spanner prebuilt MCP Toolbox configuration](https://mcp-toolbox.dev/integrations/spanner/prebuilt-configs/).

```json
"spanner-toolbox": {
  "command": "npx",
  "args": [
    "-y",
    "@toolbox-sdk/server",
    "--prebuilt",
    "spanner",
    "--stdio"
  ],
  "env": {
    "SPANNER_PROJECT": "YOUR_PROJECT_ID",
    "SPANNER_INSTANCE": "YOUR_INSTANCE_ID",
    "SPANNER_DATABASE": "YOUR_DB_NAME"
  }
}
```
