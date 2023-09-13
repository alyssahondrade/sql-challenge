-- DATA ANALYSIS

-- Question 1
-- List the employee number, last name, first name, sex,
-- and salary of each employee.
SELECT emp_no, last_name, first_name, sex, (
	SELECT salary
	FROM salaries
	WHERE employees.emp_no = salaries.emp_no) AS salary
FROM employees;

-- Question 2
-- List the first name, last name, and hire date for the
-- employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE DATE_TRUNC('YEAR', hire_date) = '1986-01-01'
ORDER BY hire_date DESC;

-- Question 3
-- List the manager of each department along with their
-- department number, department name, employee number,
-- last name, and first name.
SELECT dept_no, dept_name, emp_no, last_name, first_name
FROM dept_manager
INNER JOIN departments
	USING(dept_no)
INNER JOIN employees
	USING(emp_no);

-- Question 4
-- List the department number for each employee along with
-- that employee's employee number, last name, first name,
-- and department name.
SELECT dept_no, emp_no, last_name, first_name, dept_name
FROM employees
INNER JOIN dept_emp
	USING(emp_no)
INNER JOIN departments
	USING(dept_no);

-- Question 5
-- List the first name, last name, and sex of each employee
-- whose first name is Hercules and whose last name begins
-- with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%';

-- Question 6
-- List each employee in the Sales department, including their
-- employee number, last name, and first name.
