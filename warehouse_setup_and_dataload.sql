--Assignment - 1 : Configuring a Virtual Warehouse
CREATE WAREHOUSE demo
  WITH 
    WAREHOUSE_SIZE = 'XSMALL'   -- Warehouse size set to X-Small
    AUTO_SUSPEND = 300          -- Auto-Suspend set to 5 minutes
    AUTO_RESUME = TRUE          -- Enable Auto-Resume
    INITIALLY_SUSPENDED = TRUE; -- Initially suspended until needed


SHOW WAREHOUSES LIKE 'demo';

--Assignment - 2 : Setup Database and Table
-- Set the warehouse to use
USE WAREHOUSE demo;

-- Create the database
CREATE DATABASE sales_db;

-- Create the sales table
CREATE OR REPLACE TABLE public.sales (
  order_id INTEGER,
  customer_id INTEGER,
  order_date DATE,
  product STRING(100),
  quantity INTEGER,
  price NUMERIC
);

-- Insert the sales dummy data
INSERT INTO public.sales (order_id, customer_id, order_date, product, quantity, price) VALUES
  (1, 101, '2024-01-15', 'Laptop', 2, 1200.00),
  (2, 102, '2024-02-05', 'Phone', 1, 800.00),
  (3, 103, '2024-02-20', 'Headphones', 3, 150.00);


-- Query the table to verify data insertion
SELECT * FROM public.sales;


--Assignment - 3 : Snowflake Data Loading - Copy Command
-- Set the warehouse to use
USE WAREHOUSE demo;

-- Create the database
CREATE DATABASE sales_s3_db;

-- Create the sales_data_s3 table
CREATE OR REPLACE TABLE public.sales_data_s3 (
  order_id INTEGER,
  customer_id INTEGER,
  customer_name STRING(100),
  order_date DATE,
  product STRING(100),
  quantity INTEGER,
  price NUMERIC,
  complete_address STRING(255)
);

-- Load data from S3 into Snowflake with comma as the delimite
COPY INTO public.sales_data_s3
FROM 's3://snowflake-hands-on-data/sample_data_basic/sales_sample_data.csv'
CREDENTIALS = (
  AWS_KEY_ID = '<YOUR_AWS_KEY_ID>'
  AWS_SECRET_KEY = '<YOUR_AWS_SECRET_KEY>'
)
FILE_FORMAT = (TYPE = 'CSV' FIELD_DELIMITER = ',' SKIP_HEADER = 1 COMPRESSION = 'AUTO');

-- Query the table to verify data insertion
SELECT * FROM public.sales_data_s3 LIMIT 10;
