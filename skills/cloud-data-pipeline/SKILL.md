---
name: cloud-data-pipeline
description: Master cloud data engineering hub for BigQuery, dbt, Dataform, Spark, Cloud Dataflow, and Composer. Features mandatory Accidental Data Loss Prevention (STOP & VERIFY before DROP/DELETE/TRUNCATE), high-performance SQL tuning, and automated ELT data cleaning.
license: MIT
---

# Master Cloud Data Pipeline Hub

Comprehensive cloud data engineering across Google Cloud, BigQuery, dbt, and modern lakehouses.

## 1. STOP & VERIFY: Data Loss Prevention (CRITICAL)
- **Mandatory User Consent**: NEVER execute destructive SQL (`DROP TABLE/VIEW/DATABASE`, `TRUNCATE`, broad `DELETE` without WHERE) or storage deletions (`gsutil rm`, `gcloud storage rm`, bucket destruction) without explicit confirmation.
- **Safe Alternatives**: Prefer staging tables, soft deletes, and dry-run query estimates (`--dry_run`).

## 2. Capabilities & Workflows
Progressively disclosed in `workflows/`:
- `workflows/accidental_data_loss_prevention.md` — Checklist before running any data deletion command.
- `workflows/bigquery_sql_and_ml.md` — Query cost reduction, partition & cluster design, BigFrames, BigQuery ML, Graph GQL.
- `workflows/dbt_dataform_elt.md` — Dataform SQLX pipeline setup, dbt model optimization, GCS to BigQuery ELT, data cleaning.
- `workflows/spark_and_dataflow.md` — Dataproc Serverless, Apache Beam Flex Templates, Cloud Composer orchestration.

## 3. Fast Triggers
- **BigQuery Querying**: Use partition filters in WHERE clause. Select only needed columns (never `SELECT *` on production datasets).
- **Dataform / dbt**: Keep staging models ephemeral/view, materialize core tables as partitioned/clustered tables.
