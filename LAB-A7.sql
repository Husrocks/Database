
USE EmpDB;    

DROP TABLE Test.Employees_Info;



ALTER DATABASE EmpDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE; --ye is wja sy kuy k EmpDb is multi user and conect with master thats why


USE master
DROP DATABASE  EmpDB;
