{{
 config(
 materialized = 'table'
 )
}}

select employee.EMP_NO,
employee.FIRST_NAME,
employee.LAST_NAME,
employee.GENDER,
department.DEPT_NAME,
employee.UPDATED_AT
from employee join 
dept_emp
on dept_emp.emp_no=employee.emp_no
join department
on department.dept_no=dept_emp.dept_no