/*
=============================================================
Create Data Warehouse and Medallion Schemas
=============================================================

Project:
    SQL Data Warehouse Project

Purpose:
    This script creates and initializes the DataWarehouse database
    used throughout the project.

    The database follows the Medallion Architecture approach by
    organizing data into three logical layers:

    - Bronze Layer : Raw ERP and CRM source data
    - Silver Layer : Cleaned and transformed data
    - Gold Layer   : Business-ready analytical data

Process:
    1. Check if the DataWarehouse database already exists.
    2. Remove the existing database if found.
    3. Create a fresh DataWarehouse database.
    4. Create Bronze, Silver, and Gold schemas.

Note:
    This project focuses on the latest available dataset only.
    Historical data tracking is not implemented.

Warning:
    Running this script will permanently delete the existing
    DataWarehouse database and all associated objects.
*/

USE master;
GO

-- Drop and recreate the DataWarehouse database
IF EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'DataWarehouse'
)
BEGIN
    ALTER DATABASE DataWarehouse
    SET SINGLE_USER
    WITH ROLLBACK IMMEDIATE;

    DROP DATABASE DataWarehouse;
END;
GO

-- Create a new DataWarehouse database
CREATE DATABASE DataWarehouse;
GO

-- Switch to the newly created database
USE DataWarehouse;
GO

-- Create Bronze schema (Raw Layer)
CREATE SCHEMA bronze;
GO

-- Create Silver schema (Cleaned Layer)
CREATE SCHEMA silver;
GO

-- Create Gold schema (Business Layer)
CREATE SCHEMA gold;
GO
