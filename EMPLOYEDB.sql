CREATE DATABASE EmployeesDB;

USE EmployeesDB;


CREATE SCHEMA Emp;


CREATE TABLE Emp.Employees_Info (
    Id INT NOT NULL PRIMARY KEY,
    CNIC VARCHAR(20) NULL,            
    Name VARCHAR(50) NOT NULL,
    Address VARCHAR(200) NULL,
    Position VARCHAR(50) NULL,
    Salary DECIMAL(10,2) NULL
);

INSERT INTO Emp.Employees_Info (Id, CNIC, Name, Address, Position, Salary)
VALUES
(1, '35202-1234567-1', 'Ali Khan', 'Lahore, Pakistan', 'Manager', 85000.00),
(2, '35202-2234567-2', 'Sara Ahmed', 'Karachi, Pakistan', 'Accountant', 55000.00),
(3, '35202-3234567-3', 'Hassan Raza', 'Islamabad, Pakistan', 'Software Engineer', 95000.00),
(4, '35202-4234567-4', 'Fatima Noor', 'Rawalpindi, Pakistan', 'HR Officer', 60000.00),
(5, '35202-5234567-5', 'Usman Ali', 'Multan, Pakistan', 'Sales Executive', 50000.00),
(6, '35202-6234567-6', 'Ayesha Malik', 'Faisalabad, Pakistan', 'Marketing Manager', 78000.00),
(7, '35202-7234567-7', 'Bilal Aslam', 'Gujranwala, Pakistan', 'Graphic Designer', 45000.00),
(8, '35202-8234567-8', 'Zainab Iqbal', 'Sialkot, Pakistan', 'Customer Support', 40000.00),
(9, '35202-9234567-9', 'Ahmad Rauf', 'Hyderabad, Pakistan', 'Technician', 38000.00),
(10, '35202-1034567-0', 'Maryam Fatima', 'Peshawar, Pakistan', 'Data Analyst', 70000.00);
SELECT * FROM Emp.Employees_Info;
