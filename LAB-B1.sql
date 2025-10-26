
USE SALES
INSERT INTO sales.Customers(CustomerID,FirstName,LasrtName, Email,
Phone, Address, City, Country, CreatedAt, DateOfBirth)
VALUES (701,'Areeba','Badar','areeba@gmail.com',0333777777,'XYZ', 'Lahore', 'Pak',
'20250312' '2015-03-09')

USE SALES
INSERT INTO sales.Products(ProductID, ProductName,Price,Description,
StockQuantity,Category)
VALUES (1002,'Soap',400, 'Capri', 300,'XYZ')

USE SALES
INSERT INTO sales.Orders(OrderID, CustomerID,OrderDate, TotalAmount,
Status)
VALUES (501,702, '2025-05-28', 500,'Good')

USE SALES
INSERT INTO sales.OrderItems(OrderItemID, OrderID, ProductID, Quantity)
VALUES (901,501, 1003,35)