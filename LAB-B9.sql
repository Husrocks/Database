USE SALES;   

CREATE TABLE Departments (
    department_id INT,
    department_name NVARCHAR(50),
    manager_id INT,
    location_id INT
);


INSERT INTO Departments
VALUES (70, 'Public Relations', 100, 1700);
