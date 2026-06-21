/*

# Create Bronze Layer Tables

Purpose:
This script creates all tables required for the Bronze layer
of the Data Warehouse.

Description:
Before creating each table, the script checks whether the
table already exists. If found, the existing table is dropped
and recreated to ensure a clean and consistent structure.

Layer:
Bronze Layer

Architecture:
Medallion Architecture
Bronze → Silver → Gold

Source Systems:
CRM
- crm_cust_info
- crm_prd_info
- crm_sales_details

```
ERP
    - erp_cust_az12
    - erp_loc_a101
    - erp_px_cat_g1v2
```

Table Categories:

```
Customer Data
    - bronze.crm_cust_info
    - bronze.erp_cust_az12
    - bronze.erp_loc_a101

Product Data
    - bronze.crm_prd_info
    - bronze.erp_px_cat_g1v2

Sales Data
    - bronze.crm_sales_details
```

Process:
1. Check whether each Bronze table already exists.
2. Drop the table if it exists.
3. Recreate the table with the required schema.
4. Prepare the tables for raw data ingestion.

Notes:
- Bronze tables store data exactly as received from source files.
- No data cleansing, standardization, or business rules are
applied in this layer.
- Data types are defined to match the source CSV structure.
- These tables serve as the landing zone for ERP and CRM data
before transformation into the Silver layer.
*/

USE DataWarehouse;


if OBJECT_ID ('bronze.crm_cust_info', 'U') is not null
    DROP TABLE bronze.crm_cust_info
create table bronze.crm_cust_info(
	cst_id INT,
	cst_key NVARCHAR(50),
	cst_firstname NVARCHAR(50),
	cst_lastname NVARCHAR(50),
	cst_marital_status NVARCHAR(50),
	cst_gndr NVARCHAR(50),
	cst_create_date DATE
);

IF OBJECT_ID('bronze.crm_prd_info', 'U') IS NOT NULL
    DROP TABLE bronze.crm_prd_info;
CREATE TABLE bronze.crm_prd_info (
    prd_id       INT,
    prd_key      NVARCHAR(50),
    prd_nm       NVARCHAR(50),
    prd_cost     INT,
    prd_line     NVARCHAR(50),
    prd_start_dt DATETIME,
    prd_end_dt   DATETIME
);


IF OBJECT_ID('bronze.crm_sales_details', 'U') IS NOT NULL
    DROP TABLE bronze.crm_sales_details;
CREATE TABLE bronze.crm_sales_details (
    sls_ord_num  NVARCHAR(50),
    sls_prd_key  NVARCHAR(50),
    sls_cust_id  INT,
    sls_order_dt INT,
    sls_ship_dt  INT,
    sls_due_dt   INT,
    sls_sales    INT,
    sls_quantity INT,
    sls_price    INT
);

IF OBJECT_ID('bronze.erp_cust_az12', 'U') IS NOT NULL
    DROP TABLE bronze.erp_cust_az12;
CREATE TABLE bronze.erp_cust_az12 (
    cid    NVARCHAR(50),
    bdate  DATE,
    gen    NVARCHAR(50)
);

IF OBJECT_ID('bronze.erp_loc_a101', 'U') IS NOT NULL
    DROP TABLE bronze.erp_loc_a101;
CREATE TABLE bronze.erp_loc_a101 (
    cid    NVARCHAR(50),
    cntry  NVARCHAR(50)
);

IF OBJECT_ID('bronze.erp_px_cat_g1v2', 'U') IS NOT NULL
    DROP TABLE bronze.erp_px_cat_g1v2;
CREATE TABLE bronze.erp_px_cat_g1v2 (
    id           NVARCHAR(50),
    cat          NVARCHAR(50),
    subcat       NVARCHAR(50),
    maintenance  NVARCHAR(50)
);
