CREATE TABLE sales.Department(
	Dept_ID INT CONSTRAINT PK_Department PRIMARY KEY (Dept_ID),
	Dept_Name NVARCHAR(50) NOT NULL,
	Loc NVARCHAR(50),
	Create_Date DATE DEFAULT GETDATE(),
	);
	SELECT *
	FROM sales.Employees

INSERT INTO sales.Department (Dept_ID, Dept_Name, Loc)
VALUES (801, 'Finance', 'Karachi');


CREATE TABLE sales.Employees(
    Employee_ID INT CONSTRAINT PK_Employees PRIMARY KEY(Employee_ID),
    Employee_Name NVARCHAR(50) NOT NULL,
    Address NVARCHAR(50),
    Dept_Id INT,
    CONSTRAINT FK_Employees_Departemt 
        FOREIGN KEY (Dept_Id) REFERENCES sales.Department(DEPT_Id)
);
