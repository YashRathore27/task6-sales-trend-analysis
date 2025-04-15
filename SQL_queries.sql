----Create the Table

CREATE TABLE superstore (
    "Row ID" INTEGER,
    "Order ID" VARCHAR(50),
    "Order Date" VARCHAR(20),
    "Ship Date" VARCHAR(20),
    "Ship Mode" VARCHAR(50),
    "Customer ID" VARCHAR(50),
    "Customer Name" VARCHAR(100),
    "Segment" VARCHAR(50),
    "Country" VARCHAR(50),
    "City" VARCHAR(50),
    "State" VARCHAR(50),
    "Postal Code" VARCHAR(20),
    "Region" VARCHAR(50),
    "Product ID" VARCHAR(50),
    "Category" VARCHAR(50),
    "Sub-Category" VARCHAR(50),
    "Product Name" VARCHAR(150),
    "Sales" NUMERIC,
    "Quantity" INTEGER,
    "Discount" NUMERIC,
    "Profit" NUMERIC
);

----Import the CSV Data

COPY superstore FROM 'D:\PG\data\superstore.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'LATIN1');

----Run the SQL Queries

----Monthly Revenue and Order Volume

SELECT 
    EXTRACT(YEAR FROM TO_DATE("Order Date", 'MM/DD/YYYY')) AS year,
    EXTRACT(MONTH FROM TO_DATE("Order Date", 'MM/DD/YYYY')) AS month,
    SUM("Sales") AS monthly_revenue,
    COUNT(DISTINCT "Order ID") AS order_volume
FROM 
    superstore
GROUP BY 
    EXTRACT(YEAR FROM TO_DATE("Order Date", 'MM/DD/YYYY')),
    EXTRACT(MONTH FROM TO_DATE("Order Date", 'MM/DD/YYYY'))
ORDER BY 
    year, month;

----Top 3 Months by Sales

SELECT 
    EXTRACT(YEAR FROM TO_DATE("Order Date", 'MM/DD/YYYY')) AS year,
    EXTRACT(MONTH FROM TO_DATE("Order Date", 'MM/DD/YYYY')) AS month,
    SUM("Sales") AS monthly_revenue
FROM 
    superstore
GROUP BY 
    EXTRACT(YEAR FROM TO_DATE("Order Date", 'MM/DD/YYYY')),
    EXTRACT(MONTH FROM TO_DATE("Order Date", 'MM/DD/YYYY'))
ORDER BY 
    monthly_revenue DESC
LIMIT 3;