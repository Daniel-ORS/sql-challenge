--1. List the following details of each employee: 
--employee number, last name, first name, gender, and salary.
select e.emp_no, e.last_name, e.first_name, e.gender,s.salary
from employees as e
join salaries as s
on e.emp_no=s.emp_no
order by s.salary desc;

--2. List employees who were hired in 1986.
select last_name, first_name, extract(year from hire_date) as "Hired Year"
from employees
where extract(year from hire_date)=1986;

--3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
select d.dept_no,d.dept_name,m.emp_no,m.from_date,m.to_date,e.last_name,e.first_name 
from departments as d
join manager as m
on d.dept_no=m.dept_no
join employees as e
on m.emp_no=e.emp_no;

--4.List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
select d_e.emp_no,e.last_name,e.first_name,d.dept_name 
from departments as d
inner join dept_emp as d_e
on d.dept_no=d_e.dept_no
inner join employees as e
on e.emp_no=d_e.emp_no
order by e.emp_no;

--5. List all employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name 
from employees
where first_name='Hercules' and last_name like 'B%';

--6. List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.
select d_e.emp_no,e.last_name,e.first_name,d.dept_name 
from departments as d
inner join dept_emp as d_e
on d.dept_no=d_e.dept_no
inner join employees as e
on e.emp_no=d_e.emp_no
where d.dept_name ='Sales'
order by e.emp_no;

--7. List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
select d_e.emp_no,e.last_name,e.first_name,d.dept_name 
from departments as d
inner join dept_emp as d_e
on d.dept_no=d_e.dept_no
inner join employees as e
on e.emp_no=d_e.emp_no
where d.dept_name ='Sales' or d.dept_name ='Development'
order by e.emp_no;

--8. In descending order, list the frequency count of employee last names, i.e., 
--how many employees share each last name.
select last_name,count(last_name) as last_name_count from employees
group by last_name
order by last_name_count desc;
