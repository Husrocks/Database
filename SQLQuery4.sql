select *
from jobs
SELECT *
FROM departments;

SELECT department_id,location_id
FROM departments;

SELECT last_name, salary, salary + 300

FROM employees;




SELECT distinct last_name,  12*salary*commission_pct as anual_salary
FROM employees;


SELECT distinct   12*salary*commission_pct as anual_salary
FROM employees;



SELECT last_name AS name, commission_pct  comm
FROM employees;


SELECT last_name + job_id AS Employees
FROM employees;



SELECT employee_id + ' mY NAME IS' + first_name AS [Employee Details]
FROM employees;

SELECT CAST(employee_id AS VARCHAR) + ' MY NAME IS ' + first_name AS [Employee Details]
FROM employees;





