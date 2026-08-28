USE EnterpriseFinanceDB;
GO

-- Check the finance table
SELECT TOP 10 *
FROM Fact_Finance;



-- Overall Financial Performance
SELECT
    SUM(Revenue) AS TotalRevenue,
    SUM(Cost) AS TotalCost,
    SUM(Profit) AS TotalProfit,
    SUM(Budget) AS TotalBudget,
    SUM(Forecast) AS TotalForecast
FROM Fact_Finance;


SELECT TOP 10
    Revenue,
    Cost,
    Profit,
    Budget,
    Forecast
FROM Fact_Finance;


SELECT COUNT(*) AS TotalRows
FROM Fact_Finance;


USE EnterpriseFinanceDB;
GO

SELECT COUNT(*) AS TotalRows
FROM Master_Finance;


SELECT TOP 10 *
FROM Master_Finance;


-- Overall Financial KPIs
SELECT
    SUM(Revenue) AS TotalRevenue,
    SUM(Cost) AS TotalCost,
    SUM(Profit) AS TotalProfit,
    SUM(Budget) AS TotalBudget,
    SUM(Forecast) AS TotalForecast
FROM Master_Finance;


-- Revenue and Profit by Product Category
SELECT
    Category,
    SUM(Revenue) AS TotalRevenue,
    SUM(Profit) AS TotalProfit
FROM Master_Finance
GROUP BY Category
ORDER BY TotalRevenue DESC;


-- Top 10 Products by Revenue
SELECT TOP 10
    ProductName,
    SUM(Revenue) AS TotalRevenue,
    SUM(Profit) AS TotalProfit
FROM Master_Finance
GROUP BY ProductName
ORDER BY TotalRevenue DESC;

-- Top 10 Customers by Revenue
SELECT TOP 10
    CustomerName,
    SUM(Revenue) AS TotalRevenue,
    SUM(Profit) AS TotalProfit
FROM Master_Finance
GROUP BY CustomerName
ORDER BY TotalRevenue DESC;



-- Financial Performance for Germany
SELECT
    Country,
    SUM(Revenue) AS TotalRevenue,
    SUM(Cost) AS TotalCost,
    SUM(Profit) AS TotalProfit
FROM Master_Finance
WHERE Country = 'Germany'
GROUP BY Country;




SELECT COUNT(*) AS TotalProducts
FROM Dim_Product;




-- Budget Performance Classification
SELECT
    CASE
        WHEN Revenue > Budget THEN 'Above Budget'
        WHEN Revenue < Budget THEN 'Below Budget'
        ELSE 'On Budget'
    END AS BudgetStatus,
    COUNT(*) AS NumberOfTransactions,
    SUM(Revenue) AS TotalRevenue,
    SUM(Budget) AS TotalBudget
FROM Master_Finance
GROUP BY
    CASE
        WHEN Revenue > Budget THEN 'Above Budget'
        WHEN Revenue < Budget THEN 'Below Budget'
        ELSE 'On Budget'
    END;





	-- Yearly Financial Performance
SELECT
    DateKey / 10000 AS SalesYear,
    SUM(Revenue) AS TotalRevenue,
    SUM(Profit) AS TotalProfit,
    SUM(Budget) AS TotalBudget,
    SUM(Forecast) AS TotalForecast
FROM Master_Finance
GROUP BY DateKey / 10000
ORDER BY SalesYear;

-- ============================================================
-- 11. Year-over-year revenue growth
-- ============================================================

WITH YearlyRevenue AS
(
    SELECT
        DateKey / 10000 AS SalesYear,
        SUM(Revenue) AS TotalRevenue
    FROM Master_Finance
    GROUP BY DateKey / 10000
)

SELECT
    SalesYear,
    TotalRevenue,
    LAG(TotalRevenue) OVER (ORDER BY SalesYear) AS PreviousYearRevenue,
    ROUND(
        100.0 *
        (TotalRevenue - LAG(TotalRevenue) OVER (ORDER BY SalesYear))
        / NULLIF(LAG(TotalRevenue) OVER (ORDER BY SalesYear), 0),
        2
    ) AS RevenueGrowthPct
FROM YearlyRevenue
ORDER BY SalesYear;


-- ============================================================
-- 12. Product revenue ranking
-- ============================================================

WITH ProductPerformance AS
(
    SELECT
        ProductName,
        SUM(Revenue) AS TotalRevenue,
        SUM(Profit) AS TotalProfit
    FROM Master_Finance
    GROUP BY ProductName
)

SELECT
    ProductName,
    TotalRevenue,
    TotalProfit,
    RANK() OVER (ORDER BY TotalRevenue DESC) AS RevenueRank
FROM ProductPerformance
ORDER BY RevenueRank;


-- ============================================================
-- 13. Customer revenue ranking
-- ============================================================

WITH CustomerPerformance AS
(
    SELECT
        CustomerName,
        SUM(Revenue) AS TotalRevenue,
        SUM(Profit) AS TotalProfit
    FROM Master_Finance
    GROUP BY CustomerName
)

SELECT
    CustomerName,
    TotalRevenue,
    TotalProfit,
    RANK() OVER (ORDER BY TotalRevenue DESC) AS CustomerRevenueRank
FROM CustomerPerformance
ORDER BY CustomerRevenueRank;


-- ============================================================
-- 14. Product count
-- ============================================================

SELECT COUNT(*) AS TotalProducts
FROM Dim_Product;

