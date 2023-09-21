CREATE TABLE titles (
	PRIMARY KEY (title_id),
	title_id VARCHAR(5) NOT NULL,
	title VARCHAR(20) NOT NULL	
);

CREATE TABLE employees (
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(5) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(1),
	hire_date DATE
);

CREATE TABLE departments (
	PRIMARY KEY (dept_no),
	dept_no VARCHAR(4) NOT NULL,
	dept_name VARCHAR(20) NOT NULL
);

CREATE TABLE salaries (
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	emp_no INT NOT NULL,
	salary INT NOT NULL
);

CREATE TABLE dept_emp (
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL
);

CREATE TABLE dept_manager (
	PRIMARY KEY (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT NOT NULL
);