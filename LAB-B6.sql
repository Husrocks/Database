USE SALES;

UPDATE sales.Customers
SET Email = 'alice.johnson@example.com'
WHERE CustomerID = 704;


UPDATE sales.Products
SET StockQuantity = 1768
WHERE ProductID = 1006;


UPDATE sales.OrderItems
SET Quantity = 1001, UnitPrice = 699.99
WHERE OrderItemID = 901;
