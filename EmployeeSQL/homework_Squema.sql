--drop table dept_emp;
create table  departments(
    dept_no varchar primary key,
    dept_name varchar
);	
create table dept_emp(
	emp_no int references employees(emp_no),
	dept_no varchar references departments(dept_no), 
	from_date date,
	to_date date
);
create table employees(
	emp_no int primary key,
	birth_date date,
	first_name varchar,
	last_name varchar,
	gender varchar,
	hire_date date
);
create table manager(
	dept_no varchar references departments(dept_no), 
	emp_no int references employees(emp_no),
	from_date date,
	to_date date
);
create table salaries(
	emp_no int references employees(emp_no),
	salary int,
	from_date date,
	to_date date
);

create table titles(
	emp_no int references employees(emp_no),
	title varchar,
	from_date date,
	to_date date
);
	


	


