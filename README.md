# 📊 Enterprise Business Performance Analytics

An end-to-end **Data Analytics & Business Intelligence portfolio project** demonstrating how **Python, SQL Server, and Power BI** can be used to generate, structure, analyze, and visualize enterprise financial, sales, customer, and product data.

The project demonstrates the complete analytics lifecycle — from synthetic data generation and database design to KPI development and interactive executive dashboards.

---

## 🎯 Project Overview

The objective of this project was to build a complete enterprise analytics solution capable of analyzing business performance across multiple dimensions.

The project covers:

- Synthetic enterprise data generation using Python
- Data preparation using Pandas and NumPy
- SQL Server database and dimensional schema design
- SQL-based business analysis
- Power BI data modeling
- DAX measure and KPI development
- Interactive dashboard development
- Sales, financial, customer, and product performance analysis
- Business performance visualization and reporting

The complete dataset contains approximately **250,000 financial transaction records**.

A lightweight **5,000-row sample dataset** is included in this repository for easy review.

> **Note:** All data used in this project is synthetic and was created specifically for learning and portfolio demonstration purposes.

---

## 🛠️ Tech Stack

| Area | Technology |
|---|---|
| Programming | Python |
| Data Manipulation | Pandas, NumPy |
| Synthetic Data Generation | Faker |
| Development Environment | Jupyter Notebook |
| Database | Microsoft SQL Server |
| SQL Environment | SQL Server Management Studio (SSMS) |
| Data Visualization | Power BI |
| BI Calculations | DAX |
| Version Control | Git & GitHub |

---

## 🔄 Project Workflow

```text
Python / Jupyter Notebook
        ↓
Synthetic Enterprise Data Generation
        ↓
Data Cleaning & Transformation
        ↓
CSV Dataset
        ↓
Microsoft SQL Server
        ↓
Dimensional Data Model
        ↓
SQL Business Analysis
        ↓
Power BI Data Model
        ↓
DAX Measures & KPIs
        ↓
Interactive Business Dashboards
```

---

## 🎯 Business Questions

The analytics solution was designed to answer important business questions such as:

- How are **revenue, profit, cost, and profit margin** changing over time?
- Is the business meeting its **budget and forecast targets**?
- Which **regions and countries** generate the highest revenue?
- Which **products and categories** contribute most to business performance?
- Who are the **highest-value customers**?
- How is the **customer base growing over time**?
- Which areas of the business are underperforming?
- Which products generate strong revenue but lower profitability?
- Where are the biggest opportunities for improving overall business performance?

---

# 📊 Dashboard Previews

The Power BI report contains five analytical dashboard pages covering executive, sales, customer, financial, and product performance.

---

## 1️⃣ Business Performance Overview

Provides an executive-level overview of business performance with key financial KPIs, trends, regional performance, and budget comparison.

![Business Performance Overview](Images/01_overview.png)

---

## 2️⃣ Sales Performance

Analyzes sales performance across time, geographic regions, and other business dimensions to identify major revenue drivers and trends.

![Sales Performance](Images/02_sales.png)

---

## 3️⃣ Customer Analytics

Explores customer performance, customer growth, revenue contribution, customer segmentation, and high-value customers.

![Customer Analytics](Images/03_customers.png)

---

## 4️⃣ Financial Performance

Tracks revenue, cost, profit, profit margin, budget, and forecast performance to evaluate the overall financial health of the business.

![Financial Performance](Images/04_financials.png)

---

## 5️⃣ Product Performance

Analyzes product and category-level revenue, profitability, sales contribution, and overall product performance.

![Product Performance](Images/05_products.png)

---

## 📈 Key KPIs

The Power BI solution includes key business performance indicators such as:

| KPI | Purpose |
|---|---|
| Total Revenue | Measures overall sales revenue |
| Total Profit | Measures overall business profitability |
| Total Cost | Tracks total operating/product costs |
| Profit Margin % | Evaluates profitability relative to revenue |
| Quantity Sold | Measures overall sales volume |
| Budget | Tracks planned business performance |
| Forecast | Represents expected business performance |
| Budget Variance | Compares actual performance against budget |
| Revenue Growth | Tracks changes in revenue over time |
| Customer Count | Measures the active customer base |
| Customer Growth | Tracks expansion of the customer base |
| Product Performance | Evaluates contribution at product level |

These KPIs were developed using **DAX measures** to support dynamic filtering and interactive analysis within Power BI.

---

## 🗄️ Data & Analytics Architecture

The project follows a structured analytics approach:

### 🐍 Python

Python was used for:

- Synthetic enterprise data generation
- Data preparation
- Data transformation
- Creation of realistic business dimensions and transactions

Libraries used include:

- Pandas
- NumPy
- Faker

### 🗃️ SQL Server

Microsoft SQL Server was used to:

- Store structured enterprise data
- Organize analytical datasets
- Perform SQL-based business analysis
- Prepare data for reporting and visualization

### 📊 Power BI

Power BI was used for:

- Data modeling
- Creating relationships between business entities
- DAX calculations
- KPI development
- Interactive visualization
- Executive reporting
- Business performance analysis

---

## 🧩 Business Dimensions

The analytical model connects financial transactions with several important business dimensions, including:

- 📅 Date
- 📦 Product
- 👥 Customer
- 🌍 Region
- 👤 Salesperson
- 🏢 Department
- 💱 Currency

This structure enables performance analysis across different areas of the organization.

---

## 🔍 Analytical Focus

The dashboards were designed to go beyond displaying raw totals and support business decision-making through:

- Revenue trend analysis
- Profitability analysis
- Actual vs. Budget comparison
- Actual vs. Forecast comparison
- Regional performance analysis
- Country-level performance
- Customer segmentation
- Customer growth analysis
- High-value customer identification
- Product contribution analysis
- Product profitability analysis
- Identification of high and low-performing business areas

---

## 💡 Key Business Insights

The dashboards enable decision-makers to identify:

- Revenue and profitability trends over time
- Differences between actual, budgeted, and forecasted performance
- High-performing regions and markets
- Major revenue-contributing customers
- Customer acquisition and growth patterns
- High-performing products and categories
- Products with potential profitability improvement opportunities
- Business areas requiring deeper investigation

> Specific insights are derived dynamically from dashboard filters and selected reporting periods.

---

## 📁 Repository Structure

```text
enterprise-business-performance-analytics/
│
├── Images/
│   ├── 01_overview.png
│   ├── 02_sales.png
│   ├── 03_customers.png
│   ├── 04_financials.png
│   └── 05_products.png
│
├── data/
│   └── Sample dataset
│
├── notebooks/
│   └── Python data generation and preparation
│
├── sql/
│   └── SQL analysis queries
│
├── powerbi/
│   └── Power BI report/project
│
└── README.md
```

---

## 🚀 Skills Demonstrated

This project demonstrates practical experience with:

**Data Engineering & Preparation**
- Python
- Pandas
- NumPy
- Data cleaning and transformation
- Synthetic data generation

**Database & SQL**
- Microsoft SQL Server
- SQL querying
- Relational data structures
- Dimensional modeling
- Business data analysis

**Business Intelligence**
- Power BI
- DAX
- Data modeling
- KPI development
- Interactive dashboard design
- Data visualization

**Business Analytics**
- Financial analysis
- Sales analysis
- Customer analytics
- Product analytics
- Budget vs. Actual analysis
- Trend analysis
- Business performance reporting

---

## 🎯 Project Purpose

This project was developed as a portfolio project to demonstrate an end-to-end **Data Analytics and Business Intelligence workflow**.

The focus was not only on creating visually engaging dashboards, but also on demonstrating the ability to:

**Generate Data → Structure Data → Query Data → Model Data → Analyze Performance → Build KPIs → Visualize Results → Communicate Business Insights**

---

## 👤 Author

**Akanksha Nandre**

Aspiring **Data Analyst / Business Intelligence Analyst** with experience in data analysis, SQL, Python, and Power BI.

Interested in transforming complex datasets into meaningful business insights through analytics and visualization.

---

⭐ If you found this project useful or interesting, feel free to explore the repository.



