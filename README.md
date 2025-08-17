# snowflake_proj1_warehouse_setup_and_basics
TASK:1 Objective: Set up a new virtual warehouse:

Task Description: Create a virtual warehouse in Snowflake with the name demo, and configure the following settings:
Warehouse Type: Standard
Size: X-Small
Auto-Resume: Enabled
Auto-Suspend: Enabled and set to 5 minutes

TASK:2 Objective: Create a database, table, and load sales data.

Task Description: Select the demo warehouse to execute all SQL commands.
Create a database named sales_db.
Create a table named sales in the public schema with the following columns:
order_id (Integer)
customer_id (Integer)
order_date (Date)
product (String, 100 characters)
quantity (Integer)
price (Numeric)
Insert the following dummy sales data into the sales table:

(1, 101, '2024-01-15', 'Laptop', 2, 1200.00),
(2, 102, '2024-02-05', 'Phone', 1, 800.00),
(3, 103, '2024-02-20', 'Headphones', 3, 150.00)

Query the table to retrieve all sales data.


TASK:3 Objective: Load data from the specified S3 path into Snowflake and verify the data.

Task Description:Use the demo warehouse for executing all SQL commands.
Create a database named sales_s3_db.
Create a table named sales_data_s3 with the following columns:
order_id (Integer)
customer_id (Integer)
customer_name (String, 100 characters)
order_date (Date)
product (String, 100 characters)
quantity (Integer)
price (Numeric)
complete_address (String, 255 characters)

Load the CSV data from the S3 path s3://snowflake-hands-on-data/sample_data_basic/sales_sample_data.csv into the sales_data_s3 table using the provided AWS credentials (in Attachment). Ensure to:-
Set the delimiter to a comma (,).
Skip the header row of the CSV file.
Query the sales_data_s3 table to verify that all data is loaded correctly.







