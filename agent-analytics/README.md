# Agent Analytics & Observability

As AI agents move from prototype to production, organizations face a critical challenge: the "black box" of agent execution. Understanding how agents reason, which tools they call, how many tokens they consume, and why a specific path failed is essential for enterprise deployment.

## **Core Initiatives**

### **BigQuery Agent Analytics**

[BigQuery Agent Analytics](https://cloud.google.com/blog/products/data-analytics/introducing-bigquery-agent-analytics) is the recommended pattern for centralizing agent interaction data. By routing your agent's execution telemetry to BigQuery, you enable:

- **Runtime Observability:** Track agent traces, tool call success/failure rates, root causes, and end-to-end latency in real-time.  
- **Cost & Token Management:** Monitor token consumption across different models and usage patterns to optimize cloud spend.  
- **Enterprise Governance:** Maintain a secure, auditable log of every action an agent takes within your infrastructure.

Whether you are building with Google's Agent Development Kit (ADK) or LangGraph, BigQuery provides the scalable, analytical backend needed to understand your agents.

🎥 Youtube: Agent Analytics powered by BigQuery
<p align="center">
<a href="https://www.youtube.com/watch?v=YIJcJnFVgxU"><img src="https://github.com/user-attachments/assets/96d2a8f9-357b-4843-a2bc-5a8c41fb53fe" alt="Introduction Video" width="50%" /></a>
</p>

### **Learning Resources & Tutorials**

Rather than maintaining custom recipes here, we recommend following the official Google Cloud documentation and hands-on guides to set up Agent Analytics:

* [**ADK Integration Documentation**](https://adk.dev/integrations/bigquery-agent-analytics/): The official guide for configuring the BigQuery exporter within the Agent Development Kit.  
* [**BigQuery Agent Analytics SDK**](https://github.com/GoogleCloudPlatform/BigQuery-Agent-Analytics-SDK): An open-source Python SDK for analyzing, evaluating, and curating agent traces stored in BigQuery.  
* [**Codelab: ADK BigQuery Agent Analytics Plugin**](https://codelabs.developers.google.com/adk-bigquery-agent-analytics-plugin#0): A step-by-step interactive tutorial on setting up telemetry, defining the BigQuery schema, and exporting logs.  
* **Tutorial: [The “Closed Loop” for Agent Observability and Analysis](https://medium.com/google-cloud/the-closed-loop-for-agent-observability-and-analysis-connecting-adk-bigquery-and-d8fe54971b35):** How to instrument, log, and analyze your AI agent’s behavior using nothing but BigQuery — and then query those logs with natural language.

