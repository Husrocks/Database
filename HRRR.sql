USE HR
SELECT employee_id, last_name, job_id, department_id
FROM employees WHERE department_id = 90;

SELECT last_name, job_id, department_id

FROM employees WHERE last_name = 'Whalen';


SELECT last_name , employee_id , job_id
FROM employees 
WHERE hire_date = '17-FEB-96';
 

select last_name,salary,
manager_id
from employees
where last_name in ('hartstein','vargas');  

select last_name
from employees
where last_name like '_o%'

select last_name
from employees
where last_name like '%O__'






select employee_id,last_name,job_id
from employees
where job_id like'%os\ %' escape '\'; 
