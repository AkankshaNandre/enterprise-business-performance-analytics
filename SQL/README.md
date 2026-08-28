# SQL Analysis

This folder contains the SQL Server scripts used to build and analyze the data model for the Enterprise Business Performance Analytics project.

## Files

### `01_database_schema.sql`

Creates the dimensional model used for analysis, including:

- Date
- Product
- Customer
- Region
- Salesperson
- Department
- Currency
- Finance fact table

The fact table is connected to the dimension tables through foreign-key relationships.

### `02_business_analysis.sql`

Contains the SQL queries used for business analysis, including:

- Overall financial KPIs
- Revenue and profitability analysis
- Product and category performance
- Customer performance
- Country-level analysis
- Budget variance
- Yearly financial performance
- Year-over-year revenue growth
- Product and customer ranking.

The analysis uses SQL techniques including aggregation, `GROUP BY`, `CASE`, CTEs, `LAG()`, `RANK()`, and window functions.
