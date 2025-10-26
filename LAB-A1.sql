Create Database SALES

CREATE SCHEMA sales

USE SALES 



CREATE TABLE sales.Customers (
CustomerID INT,
FirstName NVARCHAR(50),
LastName NVARCHAR(50),
Email NVARCHAR(100),
Phone NVARCHAR(20),
Address NVARCHAR(255),
City NVARCHAR(50),
Country NVARCHAR(50),
CreatedAt DATETIME );

USE SALES
CREATE TABLE sales.Products (
ProductID INT ,
ProductName NVARCHAR(100) ,
Description NVARCHAR(255),
Price DECIMAL(10,2) ,
StockQuantity INT );


USE SALES
CREATE TABLE sales.Orders (
OrderID INT,
CustomerID INT,
OrderDate DATETIME,
TotalAmount DECIMAL(12,2),
Status NVARCHAR(50)) ;

CREATE TABLE sales.OrderItems (
OrderItemID INT,
OrderID INT,
ProductID INT,
Quantity INT,
UnitPrice DECIMAL(10,2) )

SELECT * FROM sales.Products;
