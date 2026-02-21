-- 3. Count accounts by Type
SELECT AccountType, COUNT(*) AS TotalAccounts 
FROM Accounts 
GROUP BY AccountType;

SELECT TransactionType, COUNT(*) AS transaction_count
FROM Transactions
WHERE AccountID = 16  -- replace with your account ID
GROUP BY TransactionType;
