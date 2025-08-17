# Snowflake Project 1: Warehouse Setup and Basics

## Project Overview
This project focuses on the fundamental setup of Snowflake. It covers creating a virtual warehouse, setting up databases and tables, inserting sample data, and loading external data from Amazon S3 into Snowflake. The aim is to build a strong foundation for future Snowflake projects involving automation, data ingestion, and analytics.

---

## Prerequisites
- Active Snowflake account  
- Access to Snowflake Web UI or SnowSQL  
- AWS credentials with permissions to access the provided S3 bucket  

---

## Tasks Performed

### TASK 1: Virtual Warehouse Setup
- Created a warehouse named demo  
- Configured it as a Standard type, X-Small size  
- Enabled auto-resume and auto-suspend (set to 5 minutes) for cost efficiency  

---

### TASK 2: Database and Table Creation
- Created a database named sales_db  
- Designed a table named sales in the public schema  
- Inserted a few sample records to validate the setup  
- Queried the table to ensure data retrieval worked correctly  

---

### TASK 3: Data Loading from S3
- Created a new database named sales_s3_db  
- Designed a table named sales_data_s3 with customer and sales details  
- Loaded data from the S3 bucket `snowflake-hands-on-data/sample_data_basic/sales_sample_data.csv`  
- Applied configurations like comma delimiter and skipping the header row  
- Verified that all rows were ingested successfully  

---

## Real-World Relevance
- Warehouse Setup ensures queries run efficiently and cost effectively  
- Databases and Tables provide structured environments for organizing transactional and analytical data  
- S3 Data Loading reflects a common enterprise use case where raw data is stored in cloud storage and ingested into Snowflake for reporting and BI
