DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE departments (
	dept_no VARCHAR(4) NOT NULL,
	dept_name VARCHAR(20) NOT NULL,
	PRIMARY KEY(dept_no)
);

CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(5) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1),
	hire_date DATE,
	PRIMARY KEY(emp_no)
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL REFERENCES employees(emp_no),
	dept_no VARCHAR(4) NOT NULL REFERENCES departments(dept_no)
);

CREATE TABLE salaries (
	emp_no INT NOT NULL REFERENCES employees(emp_no),
	salary INT NOT NULL,
	PRIMARY KEY(emp_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL REFERENCES departments(dept_no),
	emp_no INT NOT NULL REFERENCES employees(emp_no)
);

CREATE TABLE titles (
	title_id VARCHAR(5) NOT NULL,
	title VARCHAR(20) NOT NULL,
	PRIMARY KEY(title_id)
);