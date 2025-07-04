# Data Enrichment

## Overview
This directory contains notebooks and logic to transform cleaned data into analytics-ready gold layer tables.

## Enrichment Logic
1. **Traffic Trends**: URI count per tenant
2. **Navigation Path**: Referrer to URI mapping
3. **Session Time**: Duration of user sessions
4. **Peak Hours**: Hourly activity trends

## Technologies Used
- Microsoft Fabric Notebooks
- PySpark
- Data Wrangler

## Output Tables
- `Gold_Traffic_Trends`
- `Gold_Navigation_Path`
- `Gold_AvgSession_Time`
- `Gold_Peak_Hours`

## Files
- `data_enrichment_notebook.ipynb`: Main enrichment notebook
- `tenant_table.sql`: SQL Query to create tenant table in warehouse

## Notes
All enrichment steps are tenant-aware and support drill-down capabilities in Power BI.
