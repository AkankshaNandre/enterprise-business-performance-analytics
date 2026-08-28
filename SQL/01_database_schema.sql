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


SELECT *
FROM Dim_Date;

-- Enterprise Business Performance Analytics
-- Database schema
-- Creates the dimension and fact tables used for analysis in SQL Server.

USE EnterpriseFinanceDB;
GO

-- Enterprise Business Performance Analytics
-- Business analysis queries
-- SQL queries used to validate the dataset and analyze financial,
-- sales, customer, and product performance.
    
USE EnterpriseFinanceDB;
GO
 
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

SELECT *
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME = 'Dim_Product';


USE EnterpriseFinanceDB;
GO
 
CREATE TABLE Dim_Customer
(
CustomerKey INT IDENTITY(1,1) PRIMARY KEY,
CustomerCode VARCHAR(20) NOT NULL,
CustomerName VARCHAR(150) NOT NULL,
CustomerType VARCHAR(50) NOT NULL,
Industry VARCHAR(100) NOT NULL,
City VARCHAR(50) NOT NULL,
Country VARCHAR(50) NOT NULL,
CustomerSince

DROP TABLE IF EXISTS Dim_Customer;


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


SELECT *
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME = 'Dim_Customer';


CREATE TABLE Dim_Region
(
RegionKey INT IDENTITY(1,1) PRIMARY KEY,
Country VARCHAR(50) NOT NULL,
Region VARCHAR(50) NOT NULL,
City VARCHAR(50) NOT NULL,
CurrencyCode VARCHAR(10) NOT NULL
);




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




CREATE TABLE Dim_Department
(
DepartmentKey INT IDENTITY(1,1) PRIMARY KEY,
DepartmentName VARCHAR(100) NOT NULL,
CostCenter VARCHAR(20) NOT NULL,
ManagerName VARCHAR(100) NOT NULL
);


CREATE TABLE Dim_Currency
(
CurrencyKey INT IDENTITY(1,1) PRIMARY KEY,
CurrencyCode VARCHAR(10) NOT NULL,
CurrencyName VARCHAR(50) NOT NULL,
ExchangeRateToEUR DECIMAL(18,4) NOT NULL
);


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
Forecast DECIMAL(18,2) NOT NULL
);



SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE='BASE TABLE'
ORDER BY TABLE_NAME;




SELECT COUNT(*) FROM Dim_Date;
SELECT COUNT(*) FROM Dim_Product;
SELECT COUNT(*) FROM Dim_Customer;
SELECT COUNT(*) FROM Fact_Finance;



SELECT COUNT(*) 
FROM Dim_Date_Import;


USE EnterpriseFinanceDB;
GO

SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
ORDER BY TABLE_NAME;
