/* 
Task: Home Activity 7
Submitted To: Miss Sobia
Submitted By: Hussnain Bashir
Roll No: IAC-FA23-BSCS-035

*/





use HR

--Home Activity 1

select employee_id, last_name,salary,round(salary * 1.155,2) as new_salary
from employees;

--Home Activity 2A

select (upper(left(last_name,1)) + lower(substring(last_name,2,len(last_name)))) as Last_name,len(last_name) as length
from employees
where last_name like 'j%'
or last_name like 'A%'
or last_name like 'M%'
order by last_name;

--Home Activity 2B

declare @enter_letter char(1)='h';
select (upper(left(last_name,1)) + lower(substring(last_name,2,len(last_name)))) as Last_name,len(last_name) as length
from employees
where last_name like @enter_letter + '%'
order by last_name;

--Home Activity 3

select last_name, round(DATEDIFF(month,hire_date,getdate()),2) as months_worked
from employees
order by months_worked;

--Home Activity 4

select  last_name,commission_pct,
  case
     when commission_pct is not null then cast(commission_pct as varchar(10))
	 else 'no commsion'
  end as COMM
from employees;

--Home Activity 5

SELECT country_id,
       country_name
FROM countries c
WHERE country_id NOT IN (
    SELECT DISTINCT location_country.country_id
    FROM departments d
    JOIN locations location_country
    ON d.location_id = location_country.location_id
)
ORDER BY country_name;

--Home Activity 6

SELECT 
    e.last_name,
    e.department_id,
    (SELECT d.department_name 
     FROM departments d 
     WHERE d.department_id = e.department_id) AS department_name
FROM employees e;

SELECT 
    e.last_name,
    e.department_id,
    d.department_id AS dept_id_from_dept,
    d.department_name
FROM employees e
FULL OUTER JOIN departments d
    ON e.department_id = d.department_id
ORDER BY e.last_name, d.department_name;

