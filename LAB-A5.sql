USE master

ALTER DATABASE EmployeesDB
SET SINGLE_USER
WITH ROLLBACK IMMEDIATE;

ALTER DATABASE EmployeesDB MODIFY NAME = EmpDB;
ALTER DATABASE EmpDB
SET MULTI_USER;


USE EmpDB;  

CREATE SCHEMA Test;


ALTER SCHEMA Test TRANSFER Emp.Employees_Info;




ALTER TABLE Test.Employees_Info
ADD Department VARCHAR(30);


ALTER TABLE Test.Employees_Info
DROP COLUMN Department;


ALTER TABLE Test.Employees_Info
ADD Location VARCHAR(200);

UPDATE Test.Employees_Info
SET Location = Address;

ALTER TABLE Test.Employees_Info
ALTER COLUMN Location CHAR(20); 

