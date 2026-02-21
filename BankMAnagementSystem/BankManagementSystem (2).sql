
--DDL Phase

CREATE DATABASE BankManagementDB;
USE BankManagementDB;

--Customer Table Creation
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(15),
    Address VARCHAR(255),
    City VARCHAR(50),
    State CHAR(2),
    ZipCode VARCHAR(10),
    RegistrationDate DATETIME DEFAULT GETDATE()
);

--accounts table

CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT NOT NULL,
    AccountNumber VARCHAR(20) UNIQUE NOT NULL,
    AccountType VARCHAR(20) NOT NULL CHECK (AccountType IN ('Savings', 'Checking')),
    Balance DECIMAL(18, 2) NOT NULL DEFAULT 0.00 CHECK (Balance >= 0), -- Prevents negative balance
    Status VARCHAR(20) NOT NULL DEFAULT 'Active' CHECK (Status IN ('Active', 'Closed', 'Frozen')),
    DateOpened DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)  -- Foreign key constraint:
    -- Links each account to a valid customer in the Customers table
    -- Ensures an account cannot exist without an associated customer
);

--  Transactions Table
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY IDENTITY(1,1),
    AccountID INT NOT NULL,
    TransactionType VARCHAR(20) NOT NULL CHECK (TransactionType IN ('Deposit', 'Withdrawal', 'TransferIn', 'TransferOut')),
    Amount DECIMAL(18, 2) NOT NULL CHECK (Amount > 0), -- Transaction amount must be positive
    TransactionDate DATETIME DEFAULT GETDATE(),
    Description VARCHAR(255),
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);


-- Create Index for performance on frequently searched columns --optional
CREATE INDEX idx_Customer_Email ON Customers(Email);
CREATE INDEX idx_Account_Customer ON Accounts(CustomerID);
CREATE INDEX idx_Transaction_Account ON Transactions(AccountID);


