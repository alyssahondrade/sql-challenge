-- DATA ANALYSIS

-- Question 1
-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT emp_no, last_name, first_name, sex, (
	SELECT salary
	FROM salaries
	WHERE employees.emp_no = salaries.emp_no) AS salary
FROM employees;

-- Question 2
-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE DATE_TRUNC('YEAR', hire_date) = '1986-01-01'
ORDER BY hire_date DESC;