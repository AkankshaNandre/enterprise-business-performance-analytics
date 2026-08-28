-- Enterprise Business Performance Analytics
-- Database schema
-- Defines the dimension and fact tables used in the SQL Server model.

USE EnterpriseFinanceDB;
GO


-- ============================================================
-- Date Dimension
-- ============================================================

CREATE TABLE Dim_Date
(
    DateKey INT PRIMARY KEY,
    FullDate DATE NOT NULL,
    DayNumber TINYINT NOT NULL,
    DayName VARCHAR(20) NOT NULL,
    WeekNumber TINYINT NOT NULL,
    MonthNumber TINYINT NOT NULL,
    MonthName VARCHAR(20) NOT NULL,
    QuarterNumber TINYINT NOT NULL,
    YearNumber SMALLINT NOT NULL,
    FiscalMonth TINYINT NOT NULL,
    FiscalQuarter TINYINT NOT NULL,
    FiscalYear SMALLINT NOT NULL,
    IsWeekend BIT NOT NULL
);
GO


-- ============================================================
-- Product Dimension
-- ============================================================

CREATE TABLE Dim_Product
(
    ProductKey INT IDENTITY(1,1) PRIMARY KEY,
    ProductCode VARCHAR(20) NOT NULL,
    ProductName VARCHAR(100) NOT NULL,
    ProductCategory VARCHAR(50) NOT NULL,
    ProductSubCategory VARCHAR(50) NOT NULL,
    Brand VARCHAR(50) NOT NULL,
    StandardCost DECIMAL(18,2) NOT NULL,
    ListPrice DECIMAL(18,2) NOT NULL,
    IsActive BIT NOT NULL
);
GO


-- ============================================================
-- Customer Dimension
-- ============================================================

CREATE TABLE Dim_Customer
(
    CustomerKey INT IDENTITY(1,1) PRIMARY KEY,
    CustomerCode VARCHAR(20) NOT NULL,
    CustomerName VARCHAR(150) NOT NULL,
    CustomerType VARCHAR(50) NOT NULL,
    Industry VARCHAR(100) NOT NULL,
    City VARCHAR(50) NOT NULL,
    Country VARCHAR(50) NOT NULL,
    CustomerSince DATE NOT NULL,
    IsActive BIT NOT NULL
);
GO


-- ============================================================
-- Region Dimension
-- ============================================================

CREATE TABLE Dim_Region
(
    RegionKey INT IDENTITY(1,1) PRIMARY KEY,
    Country VARCHAR(50) NOT NULL,
    Region VARCHAR(50) NOT NULL,
    City VARCHAR(50) NOT NULL,
    CurrencyCode VARCHAR(10) NOT NULL
);
GO


-- ============================================================
-- Salesperson Dimension
-- ============================================================

CREATE TABLE Dim_Salesperson
(
    SalespersonKey INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeCode VARCHAR(20) NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Country VARCHAR(50) NOT NULL,
    HireDate DATE NOT NULL,
    IsActive BIT NOT NULL
);
GO


-- ============================================================
-- Department Dimension
-- ============================================================

CREATE TABLE Dim_Department
(
    DepartmentKey INT IDENTITY(1,1) PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL,
    CostCenter VARCHAR(20) NOT NULL,
    ManagerName VARCHAR(100) NOT NULL
);
GO


-- ============================================================
-- Currency Dimension
-- ============================================================

CREATE TABLE Dim_Currency
(
    CurrencyKey INT IDENTITY(1,1) PRIMARY KEY,
    CurrencyCode VARCHAR(10) NOT NULL,
    CurrencyName VARCHAR(50) NOT NULL,
    ExchangeRateToEUR DECIMAL(18,4) NOT NULL
);
GO


-- ============================================================
-- Finance Fact Table
-- ============================================================

CREATE TABLE Fact_Finance
(
    FinanceKey BIGINT IDENTITY(1,1) PRIMARY KEY,

    DateKey INT NOT NULL,
    ProductKey INT NOT NULL,
    CustomerKey INT NOT NULL,
    RegionKey INT NOT NULL,
    SalespersonKey INT NOT NULL,
    DepartmentKey INT NOT NULL,
    CurrencyKey INT NOT NULL,

    Quantity INT NOT NULL,
    Revenue DECIMAL(18,2) NOT NULL,
    Cost DECIMAL(18,2) NOT NULL,
    Profit DECIMAL(18,2) NOT NULL,
    Budget DECIMAL(18,2) NOT NULL,
    Forecast DECIMAL(18,2) NOT NULL,

    CONSTRAINT FK_FactFinance_Date
        FOREIGN KEY (DateKey)
        REFERENCES Dim_Date(DateKey),

    CONSTRAINT FK_FactFinance_Product
        FOREIGN KEY (ProductKey)
        REFERENCES Dim_Product(ProductKey),

    CONSTRAINT FK_FactFinance_Customer
        FOREIGN KEY (CustomerKey)
        REFERENCES Dim_Customer(CustomerKey),

    CONSTRAINT FK_FactFinance_Region
        FOREIGN KEY (RegionKey)
        REFERENCES Dim_Region(RegionKey),

    CONSTRAINT FK_FactFinance_Salesperson
        FOREIGN KEY (SalespersonKey)
        REFERENCES Dim_Salesperson(SalespersonKey),

    CONSTRAINT FK_FactFinance_Department
        FOREIGN KEY (DepartmentKey)
        REFERENCES Dim_Department(DepartmentKey),

    CONSTRAINT FK_FactFinance_Currency
        FOREIGN KEY (CurrencyKey)
        REFERENCES Dim_Currency(CurrencyKey)
);
GO


-- ============================================================
-- Schema validation
-- ============================================================

SELECT
    TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'
ORDER BY TABLE_NAME;
GO
