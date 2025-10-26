USE SALES
INSERT INTO sales.Customers(CustomerID,FirstName,LasrtName, Email,
Phone, Address, City, Country, CreatedAt, DateOfBirth)
VALUES (705,'Ali','Khan','ali@gmail.com',763653535,'UUU','Karachi', 'Pak',
'20250312', '2000-07-10'),
(706,'Faisal','Ahmed','FA@gmail.com',2222222,'tttt','Karachi', 'Pak', '20230310',
'2000-07-10')

USE SALES
INSERT INTO sales.Products(ProductID, ProductName,Price,Description,
StockQuantity, Category)
VALUES (1004,'Soap',50,'Rexona',280, 'XYZ'),
(1005,'shampo',100,'Dove',280, 'XYZ'),
(1006,’Oil’,500,'Daber',280, 'XYZ'),
(1007,'Suger',150,'White',600, 'XYZ')


USE SALES
INSERT INTO sales.Orders(OrderID, CustomerID, OrderDate,
TotalAmount, Status)
VALUES (502, 702, '2025-05-28',5000,'Good'),
(503, 701, '2025-05-28',567,'Good'),
(504, 702, '2025-05-28',4599,'Bad'),
(505, 701, '2025-05-28',3333,'Poor'),
(506, 702, '2025-05-28',4589,'Good')
