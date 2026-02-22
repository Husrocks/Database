/* 
Task: Home Activity 4
Submitted To: Miss Sobia
Submitted By: Hussnain Bashir
Roll No: IAC-FA23-BSCS-035


*/
use sales;

-- query 1: create and populate dept table
create table sales.dept (
    department_id int primary key,
    department_name nvarchar(30),
    location nvarchar(50)
);

insert into sales.dept (department_id, department_name, location)
select dept_id, dept_name, loc
from sales.department;

-- query 2: create employees2 table
select 
    employee_id as id,
    first_name,
    last_name,
    salary,
    dept_id as dept_id
into sales.employees2
from sales.employees
where 1 = 0;

-- query 3: insert one row and display
insert into sales.employees2
values (501, 'Ali', 'Khan', 45000, 20);

select * from sales.employees2;

-- query 4: drop employees2 table
drop table sales.employees2;
