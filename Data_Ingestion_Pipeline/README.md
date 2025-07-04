# Data Ingestion Pipeline

## Overview
This directory contains the logic and scripts for ingesting multi-tenant website log data from an on-premises MySQL database into Microsoft Fabric's Lakehouse.

## Pipeline Overview

## Activities:
1. **Lookup: GetTableList**
   - SQL: `SELECT table_name FROM Control_Ingestion`

2. **ForEach: Iterate over tables**
   - Inside:
     - **Lookup: GetTime**
     - **Notebook: Schema Validation**
     - **If Condition**
       - If True:
         - Copy Data (incremental load)
         - Script: UpdateTime
       - If False:
         - Outlook: Send alert

## Key Components
- **Registry Table**: Tracks last ingestion timestamp for each tenant table.
- **Lookup Activities**: Dynamically fetch table names and timestamps.
- **Schema Validation**: Ensures consistency between source and destination schemas.
- **Incremental Loading**: Loads only new data based on timestamp.
- **Error Handling**: Sends email alerts on schema mismatches.

## Technologies Used
- Microsoft Fabric Data Pipeline
- MySQL
- Spark Notebooks
- Outlook Activity (for alerts)

## Files
- `control_ingestion.sql`: SQL script to create and manage registry table.
- `schema_validation_notebook.ipynb`: Notebook for schema comparison.
- `data_ingestion_pipeline.json`: Pipeline configuration (if exported).

## Notes
Ensure the MySQL database is accessible and the registry table is initialized before running the pipeline.
