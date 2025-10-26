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

