select * from departments

select * from employees

select * from salaries

select employees.emp_no,first_name,last_name,gender,salaries.salary 
from employees
join salaries
on employees.emp_no = salaries.emp_no;

select first_name,last_name,hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';

select  dept_manager.dept_no,dept_name,dept_manager.emp_no,first_name,last_name
from employees
join dept_manager
on employees.emp_no = dept_manager.emp_no
join departments
on dept_manager.dept_no = departments.dept_no;

select dept_emp.dept_no,dept_emp.emp_no,last_name,first_name,dept_name
from employees
join dept_emp
on employees.emp_no = dept_emp.emp_no
join departments
on dept_emp.dept_no = departments.dept_no;

select first_name,last_name,gender
from employees
where first_name = 'Hercules' And last_name like 'B%';

select dept_emp.emp_no,last_name,first_name
from employees
join dept_emp
on employees.emp_no = dept_emp.emp_no
where dept_no = 'd007';

select dept_emp.emp_no,last_name,first_name,dept_name
from employees
join dept_emp
on employees.emp_no = dept_emp.emp_no
join departments
on dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales' or dept_name = 'Development';

SELECT count(last_name) as frequency, last_name
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;