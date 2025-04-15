# Task 6: Sales Trend Analysis Using Aggregations

## Objective:
To analyze monthly revenue and order volume using SQL aggregation techniques based on the Superstore sales dataset.

## Tools & Technologies:
- PostgreSQL
- Superstore Sales Dataset (CSV)
- pgAdmin (for query execution and data import)

## What I Did:
- Created a new PostgreSQL database `superstore_db`
- Defined the `superstore` table structure to match the Superstore CSV columns
- Imported the dataset into the PostgreSQL table
- Wrote and executed SQL queries to:
  - Calculate **monthly revenue** and **order volume**
  - Identify the **top 3 months by revenue**

## Results:
The query outputs are included in the **result_screenshots/** directory:
- `monthly_revenue.png` — Monthly Revenue and Order Volume table
- `top_3_months.png` — Top 3 months by sales revenue

## Repository Contents:
- `Superstore.csv` — Original dataset 
- `SQL_queries.sql` — SQL queries used to create the table and for the analysis  
- `result_screenshots/` — Screenshots of query outputs  
- `README.md` — This file, explaining the project

## Notes:
- Encoding issues were handled during CSV import (file converted to UTF-8)
- Date columns were converted using `TO_DATE()` during queries for proper extraction
