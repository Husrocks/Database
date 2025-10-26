USE SALES;

UPDATE sales.Customers
SET FirstName = 'Anwar'
WHERE LastName = 'Badar'
AND Address = 'XYZ'
AND City = 'Lahore';
