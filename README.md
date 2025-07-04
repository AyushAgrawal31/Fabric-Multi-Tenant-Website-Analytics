# Multi-Tenant Website Analytics Dashboard

## 🚀 Project Overview
A comprehensive multi-tenant website analytics solution built on Microsoft Fabric that provides real-time insights into website traffic, user behavior, and navigation patterns across multiple tenants with automated schema validation and incremental data loading.

## ✨ Key Features
- **Multi-Tenant Architecture**: Separate analytics for different tenants
- **Schema Validation**: Automated column-level validation with email notifications
- **Incremental Loading**: Watermark-based data ingestion
- **Real-Time Analytics**: Dynamic dashboard updates
- **Data Quality Checks**: Automated validation and error handling
- **Centralized Logging**: Per-tenant and per-step logging

## 🏗️ Architecture

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

## 🚀 Quick Start
1. [Set up MySQL database](sql/create-tables.sql)
2. [Configure Fabric workspace](deployment/fabric-deployment.md)
3. [Deploy pipelines and notebooks](docs/setup-guide.md)
4. [Configure Power BI reports](reports/)

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

## 🔒 Security & Compliance
- **Data Isolation**: Tenant-specific processing
- **Schema Validation**: Ensure data integrity
- **Access Control**: Role-based permissions
- **Audit Logging**: Track all processing steps
- **Data Anonymization**: Remove sensitive information

## 📚 Documentation
- [Architecture Deep Dive](docs/architecture.md)
- [Setup and Configuration](docs/setup-guide.md)
- [Deployment Guide](deployment/fabric-deployment.md)
- [Troubleshooting](docs/troubleshooting.md)

## 🤝 Contributing
1. Fork the repository
2. Create feature branch: `git checkout -b feature/amazing-feature`
3. Commit changes: `git commit -m 'Add amazing feature'`
4. Push to branch: `git push origin feature/amazing-feature`
5. Open Pull Request

## 📄 License
This project is licensed under the MIT License - see the LICENSE file for details.

## 📞 Support
- Create an issue for bug reports
- Use discussions for questions
- Check troubleshooting guide first

---
**Built with Microsoft Fabric** | **Multi-Tenant Ready** | **Production Scale**
