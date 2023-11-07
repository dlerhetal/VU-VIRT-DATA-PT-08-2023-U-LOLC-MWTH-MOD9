select
employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees, salaries
where employees.emp_no = salaries.emp_no;

select
employees.first_name, employees.last_name, employees.hire_date
from employees
where employees.hire_date between 
'1/1/1986' and '12/31/1986'
order by hire_date desc;

select
departments.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name 
from departments, dept_manager, employees
where employees.emp_no = dept_manager.emp_no
and departments.dept_no = dept_manager.dept_no;

select
departments.dept_no, employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from departments, dept_emp, employees
where employees.emp_no = dept_emp.emp_no
and departments.dept_no = dept_emp.dept_no;

select
employees.first_name, employees.last_name, employees.sex
from employees
where employees.first_name = 'Hercules'
and employees.last_name like 'B%';

select
employees.emp_no, employees.last_name, employees.first_name
from departments, dept_emp, employees
where employees.emp_no = dept_emp.emp_no
and departments.dept_no = dept_emp.dept_no
and departments.dept_name = 'Sales';

select
employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from departments, dept_emp, employees
where employees.emp_no = dept_emp.emp_no
and departments.dept_no = dept_emp.dept_no
and departments.dept_name in ('Sales', 'Development');

select
last_name, count(emp_no) as "total"
from employees
group by last_name
order by total desc;