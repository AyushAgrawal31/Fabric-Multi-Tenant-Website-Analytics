# Data Cleaning

## Overview
This directory contains the logic for cleaning raw session data from multiple tenants to prepare it for analytics.

## Cleaning Steps
- Remove duplicates
- Filter rows with HTTP status 200
- Clean URLs and referrers (remove query strings)
- Select relevant columns
- Rename columns for consistency
- other necessary transformations

## Technologies Used
- Microsoft Fabric Dataflow Gen2
- Spark Notebooks (optional)

## Output
- `Silver_SessionTable`: Unified cleaned dataset for all tenants

## Files
- `dataflow_cleaning_config.json`: Configuration for Dataflow Gen2

## Notes
Ensure both tenant datasets are available and correctly formatted before running the cleaning flow.
