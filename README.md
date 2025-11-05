# Multi-Tenant Website Analytics Dashboard

## 🚀 Project Overview
A comprehensive multi-tenant website analytics solution built on Microsoft Fabric that provides insights into website traffic, user behavior, and navigation patterns across multiple tenants with automated schema validation and incremental data loading.

## ✨ Key Features
- **Multi-Tenant Architecture**: Separate analytics for different tenants
- **Schema Validation**: Automated column-level validation with email notifications
- **Incremental Loading**: Watermark-based data ingestion
- **Data Quality Checks**: Automated validation and error handling
- **Data Model**: Proper Data Modeling with relationships

## 📁 Folder Structure
- `Project Documentation`: Detailed walkthrough for the project (informally written)
- `data_ingestion_pipeline/`: MySQL ingestion, schema validation
- `data_cleaning_pipeline/`: Dataflow Gen2 logic
- `data_enrichment_pipeline/`: Notebooks for traffic trends, session time, etc.
- `data_enrich(DataModeling)_pipeline`: Another Pipeline that is used for the data modeling enrrichment
- `powerbi_report/`: Dashboard visuals and `.pbix` file
- `screenshots/`: detailed screenshots

## 🏗️ Architecture
- **Lakehouse** for Bronze & Silver layers
- **Warehouse** for Gold layer
- **Data Pipelines** for ingestion, cleaning, enrichment
- **Power BI** for visualization
  
MySQL Database → Schema Validation → Incremental Loading → Data Cleaning → Analytics Processing → Power BI Dashboard

### Data Flow:
1. **Bronze Layer**: Raw data from MySQL (Lakehouse)
2. **Silver Layer**: Cleaned and validated data (Lakehouse) 
3. **Gold Layer**: Analytics-ready aggregated data (Warehouse)
4. **Visualization**: Multi-tenant Power BI dashboards

## 📊 Analytics Capabilities
- **Traffic Trends**: Page visits by tenant and time
- **Navigation Paths**: User flow analysis with Sankey diagrams
- **Session Analysis**: Average session duration per tenant
- **Peak Hours**: Hourly traffic patterns with drill-down
- **Tenant Comparison**: Cross-tenant performance metrics

## 🛠️ Technology Stack
- **Microsoft Fabric**: End-to-end data platform
- **MySQL**: Source database
- **Lakehouse**: Bronze/Silver layer storage
- **Warehouse**: Gold layer analytics store
- **Dataflow Gen2**: Data transformation
- **Notebooks**: Custom data processing logic
- **Power BI**: Multi-tenant dashboards
- **Data Pipelines**: Orchestration and scheduling


## 📋 Data Sources
- **Tenant A & B**: Website access logs with session tracking
- **Control Tables**: Incremental loading registry
- **Schema Tables**: Column validation reference

## 🔧 Key Components

### Data Ingestion Pipeline
- **Lookup Activities**: Get table list and timestamps
- **ForEach Loops**: Process each tenant separately
- **Schema Validation**: Column-level validation with notebooks
- **Conditional Logic**: Handle schema mismatches
- **Email Notifications**: Alert on validation failures

### Data Processing
- **Cleaning**: Remove duplicates, filter HTTP 200, URL cleanup
- **Enrichment**: Traffic trends, navigation paths, session analysis
- **Aggregation**: Peak hours, average times, tenant comparisons

### Visualization
- **Tenant Slicer**: Filter by tenant
- **Interactive Charts**: Drill-down capabilities
- **Real-time Updates**: Scheduled refresh
- **Mobile Responsive**: Cross-device compatibility

## 📈 Business Value
- **Traffic Optimization**: Identify peak hours for resource planning
- **Content Strategy**: Understand popular pages and user preferences
- **User Experience**: Analyze navigation patterns for UX improvements
- **Performance Monitoring**: Track session times and engagement
- **Multi-tenant Insights**: Compare performance across tenants

## 🤝 Contributing
1. Fork the repository
2. Create feature branch: `git checkout -b feature/amazing-feature`
3. Commit changes: `git commit -m 'Add amazing feature'`
4. Push to branch: `git push origin feature/amazing-feature`
5. Open Pull Request

## 📞 Support
- Create an issue for bug reports
- Use discussions for questions
- Check troubleshooting guide first

---
**Built with Microsoft Fabric** | **Multi-Tenant Ready** | **Production Scale**
