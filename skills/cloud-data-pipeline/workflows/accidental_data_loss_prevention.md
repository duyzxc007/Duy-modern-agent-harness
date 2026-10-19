# Data Loss Prevention Protocol
Before executing any of the following, STOP and ask the user for explicit confirmation:
1. SQL: `DROP TABLE`, `DROP SCHEMA`, `TRUNCATE TABLE`, `DELETE FROM ... WHERE 1=1`.
2. Cloud Storage: `gsutil rm -r`, `gcloud storage rm --recursive`.
3. Infrastructure: `gcloud projects delete`, destroying BigQuery datasets or Spanner instances.
