CREATE TABLE dept_emp (
  emp_no int PRIMARY KEY,
dept_no VARCHAR (30) )
;

CREATE TABLE dept_manager (dept_no VARCHAR (30)PRIMARY KEY,
emp_no int  );

CREATE TABLE employees (emp_no int PRIMARY KEY , emp_title_id VARCHAR (30), 
						birth_date date, first_name VARCHAR (30), last_name VARCHAR (30), sex VARCHAR (5),
						hire_date date);
						
CREATE TABLE salaries (emp_no int PRIMARY KEY, salary int);

CREATE TABLE titles (title_id VARCHAR (30) PRIMARY KEY, title VARCHAR (30) 
					 );
					 
select e.emp_no, e.first_name, e.last_name, e.sex, s.salary 
from employees e
join salaries s on (s.emp_no = e.emp_no)
