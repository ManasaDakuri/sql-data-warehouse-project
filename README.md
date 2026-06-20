# sql-data-warehouse-project

Building a modern SQL Server Data Warehouse using Medallion Architecture to transform ERP and CRM data into business-ready insights.

# SQL Data Warehouse Project

## Overview

This project demonstrates the design and implementation of a modern Data Warehouse using SQL Server and the Medallion Architecture (Bronze, Silver, and Gold layers). The goal is to integrate ERP and CRM data from CSV files, transform it into a business-ready analytical model, and generate insights for decision-making.

---

## Data Architecture

The project follows the Medallion Architecture:

<img width="550" height="344" alt="Data Architecture" src="https://github.com/user-attachments/assets/4e71fce2-6c95-4155-854d-3292537101e7" />

### Bronze Layer

* Stores raw ERP and CRM data imported from CSV files.
* Maintains source data without transformations.
* Serves as the foundation for downstream processing.

### Silver Layer

* Performs data cleansing, validation, and standardization.
* Resolves data quality issues such as duplicates, null values, and inconsistent formats.
* Creates reliable datasets for analysis.

### Gold Layer

* Contains business-ready analytical models.
* Implements fact and dimension tables using a Star Schema.
* Supports reporting, analytics, and ad-hoc SQL queries.

---

## Project Objectives

### Data Engineering

* Import ERP and CRM data from CSV files.
* Build ETL pipelines using SQL Server.
* Clean and transform raw data.
* Integrate multiple sources into a unified analytical model.

### Data Analytics

Generate insights related to:

* Customer Behavior
* Product Performance
* Sales Trends

These insights help stakeholders make informed business decisions.

---

## Technology Stack

* SQL Server
* SQL Server Management Studio (SSMS)
* Draw.io
* Git & GitHub
* Notion

---

## Repository Structure

```text
data-warehouse-project/
│
├── datasets/                           # Raw datasets used for the project (ERP and CRM data)
│
├── docs/                               # Project documentation and architecture details
│   ├── etl.drawio                      # ETL techniques and methods
│   ├── data_architecture.drawio        # Data warehouse architecture
│   ├── data_catalog.md                 # Dataset metadata and field descriptions
│   ├── data_flow.drawio                # Data flow diagram
│   ├── data_models.drawio              # Star schema and data models
│   ├── naming-conventions.md           # Naming standards for tables and columns
│
├── scripts/                            # SQL scripts for ETL and transformations
│   ├── bronze/                         # Raw data loading scripts
│   ├── silver/                         # Data cleansing and transformation scripts
│   ├── gold/                           # Analytical model creation scripts
│
├── tests/                              # Data quality and validation scripts
│
├── README.md
├── LICENSE
├── .gitignore
└── requirements.txt
```

---

## Medallion Flow

```text
ERP & CRM CSV Files
        ↓
Bronze Layer (Raw Data)
        ↓
Silver Layer (Cleaned & Standardized Data)
        ↓
Gold Layer (Business-Ready Data)
        ↓
Reports, Analytics & SQL Queries
```

---

## Key Skills Demonstrated

* Data Warehousing
* SQL Development
* ETL Pipeline Development
* Data Modeling
* Star Schema Design
* Data Quality Management
* Data Integration
* Data Analytics

---

## Project Requirements

### Building the Data Warehouse (Data Engineering)

**Objective**

Develop a modern data warehouse using SQL Server to consolidate sales data, enabling analytical reporting and informed decision-making.

**Specifications**

* Import data from ERP and CRM source systems provided as CSV files.
* Cleanse and resolve data quality issues before analysis.
* Integrate multiple data sources into a unified analytical model.
* Focus on the latest available dataset (historical tracking not required).
* Provide clear documentation for business and analytics users.

### Analytics & Reporting (Data Analysis)

**Objective**

Develop SQL-based analytics to generate business insights related to:

* Customer Behavior
* Product Performance
* Sales Trends

These insights support data-driven decision-making and business strategy.

---

## Acknowledgements

Special thanks to Baraa Khatib Salkini (Data With Baraa) for providing high-quality Data Engineering and Data Warehousing content on YouTube for free. His tutorials, project walkthroughs, and practical explanations were valuable learning resources throughout the development of this project. They helped me strengthen my understanding of SQL, ETL pipelines, data modeling, and modern data warehousing concepts.

This project was developed as part of my learning journey by following and extending the concepts taught in his course. I am grateful for the effort he puts into making quality educational content freely accessible to learners worldwide.

---

## Author

**Manasa Dakuri**

B.Tech Computer Science & Engineering
BV Raju Institute of Technology

Learning and building projects in Data Engineering, Data Warehousing, SQL, and Analytics.
