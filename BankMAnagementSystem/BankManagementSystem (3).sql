
--DML Phase
USE BankManagementDB;
-- Insert Customers
INSERT INTO Customers (FirstName, LastName, Email, Phone, Address, City, State, ZipCode) VALUES
('John', 'Doe', 'john.doe@example.com', '555-0101', '123 Maple St', 'Springfield', 'IL', '62704'),
('Jane', 'Smith', 'jane.smith@example.com', '555-0102', '456 Oak Ave', 'Columbus', 'OH', '43215'),
('Michael', 'Brown', 'm.brown@example.com', '555-0103', '789 Pine Ln', 'Austin', 'TX', '73301'),
('Emily', 'Davis', 'emily.d@example.com', '555-0104', '321 Elm St', 'Seattle', 'WA', '98101'),
('Chris', 'Wilson', 'c.wilson@example.com', '555-0105', '654 Cedar Dr', 'Denver', 'CO', '80203'),
('Sarah', 'Johnson', 'sarah.j@example.com', '555-0106', '987 Birch Blvd', 'Miami', 'FL', '33101'),
('David', 'Lee', 'david.lee@example.com', '555-0107', '159 Spruce Ct', 'Boston', 'MA', '02108'),
('Laura', 'White', 'laura.w@example.com', '555-0108', '753 Willow Way', 'Phoenix', 'AZ', '85001'),
('James', 'Harris', 'james.h@example.com', '555-0109', '951 Aspen Pl', 'Chicago', 'IL', '60601'),
('Robert', 'King', 'robert.k@example.com', '555-0111', '111 Lake View', 'Madison', 'WI', '53703'),
('Angela', 'Moore', 'angela.m@example.com', '555-0112', '222 Hill Rd', 'San Jose', 'CA', '95112'),
('Brian', 'Taylor', 'brian.t@example.com', '555-0113', '333 Sunset Blvd', 'Los Angeles', 'CA', '90001'),
('Nancy', 'Clark', 'nancy.c@example.com', '555-0114', '444 River St', 'Albany', 'NY', '12207'),
('Kevin', 'Walker', 'kevin.w@example.com', '555-0115', '555 Forest Dr', 'Raleigh', 'NC', '27601'),
('Maria', 'Martin', 'maria.m@example.com', '555-0110', '357 Redwood Rd', 'Portland', 'OR', '97201'),
('Daniel', 'Anderson', 'daniel.a@example.com', '555-0116', '12 North St', 'Dallas', 'TX', '75201'),
('Olivia', 'Thomas', 'olivia.t@example.com', '555-0117', '34 East Ave', 'San Diego', 'CA', '92101'),
('Matthew', 'Jackson', 'matt.j@example.com', '555-0118', '56 South Rd', 'Atlanta', 'GA', '30301'),
('Sophia', 'Martinez', 'sophia.m@example.com', '555-0119', '78 West Blvd', 'San Antonio', 'TX', '78205'),
('Andrew', 'Lopez', 'andrew.l@example.com', '555-0120', '90 Ocean Dr', 'Tampa', 'FL', '33602'),
('Emma', 'Gonzalez', 'emma.g@example.com', '555-0121', '101 Bay St', 'San Francisco', 'CA', '94105'),
('Joshua', 'Perez', 'joshua.p@example.com', '555-0122', '202 Palm Ave', 'Orlando', 'FL', '32801'),
('Isabella', 'Roberts', 'isabella.r@example.com', '555-0123', '303 Hill St', 'Nashville', 'TN', '37201');

-- Insert Accounts (Some customers have multiple accounts)
INSERT INTO Accounts (CustomerID, AccountNumber, AccountType, Balance, Status) VALUES
(1, 'ACC-1001', 'Checking', 1500.00, 'Active'),
(1, 'ACC-1002', 'Savings', 5000.00, 'Active'),
(2, 'ACC-1003', 'Checking', 2500.50, 'Active'),
(3, 'ACC-1004', 'Savings', 10000.00, 'Active'),
(4, 'ACC-1005', 'Checking', 800.00, 'Active'),
(5, 'ACC-1006', 'Savings', 12000.00, 'Active'),
(6, 'ACC-1007', 'Checking', 450.00, 'Active'),
(7, 'ACC-1008', 'Checking', 3200.00, 'Active'),
(7, 'ACC-1009', 'Savings', 500.00, 'Frozen'),
(8, 'ACC-1010', 'Savings', 15000.00, 'Active'),
(9, 'ACC-1011', 'Checking', 200.00, 'Active'),
(10, 'ACC-1012', 'Checking', 5000.00, 'Active'),
(10, 'ACC-1013', 'Savings', 500.00, 'Closed'),
(2, 'ACC-1014', 'Savings', 3000.00, 'Active'),
(3, 'ACC-1015', 'Checking', 100.00, 'Active'),
(11, 'ACC-1016', 'Checking', 1800.00, 'Active'),
(11, 'ACC-1017', 'Savings', 7000.00, 'Active'),
(12, 'ACC-1018', 'Checking', 950.00, 'Active'),
(13, 'ACC-1019', 'Savings', 22000.00, 'Active'),
(14, 'ACC-1020', 'Checking', 600.00, 'Frozen'),
(15, 'ACC-1021', 'Savings', 4000.00, 'Active'),
(16, 'ACC-1022', 'Checking', 2200.00, 'Active'),
(16, 'ACC-1023', 'Savings', 9000.00, 'Active'),
(17, 'ACC-1024', 'Savings', 14000.00, 'Active'),
(18, 'ACC-1025', 'Checking', 1200.00, 'Active'),
(18, 'ACC-1026', 'Savings', 3000.00, 'Active'),
(19, 'ACC-1027', 'Checking', 400.00, 'Frozen'),
(20, 'ACC-1028', 'Savings', 11000.00, 'Active'),
(21, 'ACC-1029', 'Checking', 650.00, 'Active'),
(22, 'ACC-1030', 'Savings', 500.00, 'Closed'),
(23, 'ACC-1031', 'Checking', 8000.00, 'Active');

-- Insert Transactions
INSERT INTO Transactions (AccountID, TransactionType, Amount, Description) VALUES
(1, 'Deposit', 1000.00, 'Initial Deposit'),
(1, 'Withdrawal', 200.00, 'ATM Withdrawal'),
(2, 'Deposit', 5000.00, 'Payroll'),
(3, 'Deposit', 2000.00, 'Check Deposit'),
(3, 'Withdrawal', 50.00, 'Grocery Store'),
(4, 'Deposit', 10000.00, 'Bonus'),
(5, 'Deposit', 500.00, 'Cash Deposit'),
(5, 'Withdrawal', 100.00, 'Gas Station'),
(6, 'Deposit', 12000.00, 'Inheritance'),
(7, 'Deposit', 400.00, 'Freelance Work'),
(7, 'Withdrawal', 20.00, 'Coffee Shop'),
(8, 'Deposit', 3000.00, 'Salary'),
(9, 'Deposit', 500.00, 'Gift'),
(10, 'Deposit', 15000.00, 'Business Profit'),
(11, 'Deposit', 200.00, 'Refund'),
(12, 'Deposit', 5000.00, 'Transfer from Ext'),
(14, 'Deposit', 3000.00, 'Savings Goal'),
(1, 'Withdrawal', 100.00, 'Utility Bill'),
(2, 'TransferOut', 500.00, 'Transfer to Checking'),
(1, 'TransferIn', 500.00, 'Transfer from Savings'),
(16, 'Deposit', 1800.00, 'Opening Balance'),
(16, 'Withdrawal', 300.00, 'Online Shopping'),
(17, 'Deposit', 7000.00, 'Yearly Savings'),
(18, 'Deposit', 950.00, 'Initial Deposit'),
(18, 'Withdrawal', 150.00, 'Electric Bill'),
(19, 'Deposit', 22000.00, 'Property Sale'),
(20, 'Deposit', 600.00, 'Cash Deposit'),
(20, 'Withdrawal', 100.00, 'ATM'),
(21, 'Deposit', 4000.00, 'Bonus Payment'),
(17, 'TransferOut', 1000.00, 'Transfer to Checking'),
(16, 'TransferIn', 1000.00, 'Transfer from Savings'),
(22, 'Deposit', 2200.00, 'Salary Credit'),
(22, 'Withdrawal', 500.00, 'Rent Payment'),
(23, 'Deposit', 9000.00, 'Long Term Savings'),
(24, 'Deposit', 14000.00, 'Investment Return'),
(25, 'Deposit', 1200.00, 'Opening Balance'),
(25, 'Withdrawal', 200.00, 'Mobile Recharge'),
(26, 'Deposit', 3000.00, 'Savings Deposit'),
(27, 'Deposit', 400.00, 'Cash Deposit'),
(27, 'Withdrawal', 50.00, 'Snacks'),
(28, 'Deposit', 11000.00, 'Project Bonus'),
(29, 'Deposit', 650.00, 'Side Hustle'),
(29, 'Withdrawal', 100.00, 'Fuel'),
(30, 'Deposit', 500.00, 'Account Closure Credit'),
(31, 'Deposit', 8000.00, 'Freelance Income'),
(31, 'Withdrawal', 1200.00, 'Laptop Purchase'),
(22, 'TransferOut', 700.00, 'Transfer to Savings'),
(23, 'TransferIn', 700.00, 'Transfer from Checking');


SELECT * FROM Customers; --23
SELECT * FROM Accounts; --31
SELECT * FROM Transactions; --48



-- 1. Retrieve all active customers from Differnet states
SELECT * FROM Customers WHERE State = 'FL';
SELECT * FROM Customers WHERE State = 'IL';
SELECT * FROM Customers WHERE State = 'TX';


-- 2. Calculate Total Bank Liquidity (Sum of all balances)
SELECT SUM(Balance) AS TotalBankLiquidity FROM Accounts;



-- 3. List Customer Names and their total balance across all their accounts
SELECT c.FirstName, c.LastName, SUM(a.Balance) AS TotalBalance
FROM Customers c
INNER JOIN Accounts a ON c.CustomerID = a.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName
ORDER BY TotalBalance DESC;



