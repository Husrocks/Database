USE SALES
CREATE SCHEMA Temp;
ALTER SCHEMA Temp TRANSFER sales.Customers;
ALTER TABLE Temp.Customers
ADD DateOfBirth DATE
ALTER TABLE Temp.Customers
ALTER COLUMN Phone NVARCHAR(10);

ALTER TABLE sales.Products
ADD Category NVARCHAR(50);

ALTER TABLE sales.Products
ALTER COLUMN Price DECIMAL(12, 2);
ALTER TABLE sales.Orders
ADD ShippedDate DATETIME;
ALTER TABLE sales.OrderItems
ADD Discount DECIMAL(5, 2) DEFAULT 0;
ALTER TABLE sales.OrderItems
DROP COLUMN UnitPrice;



--now i tranfer the other abjects in Temp 
ALTER SCHEMA Temp TRANSFER sales.Products;

ALTER SCHEMA Temp TRANSFER sales.Orders;

ALTER SCHEMA Temp TRANSFER sales.OrderItems;

