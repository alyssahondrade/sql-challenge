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
WHERE DATE_TRUNC('YEAR', hire_date) = '1986-01-01' -- start date
ORDER BY hire_date DESC; -- descending order to show end date


-- Question 3
-- List the manager of each department along with their department number, department name,
-- employee number, last name, and first name.
SELECT dept_no, dept_name, emp_no, last_name, first_name
FROM dept_manager
INNER JOIN departments
	USING(dept_no)
INNER JOIN employees
	USING(emp_no);


-- Question 4
-- List the department number for each employee along with that employee's employee number,
-- last name, first name, and department name.
CREATE VIEW employee_departments AS
SELECT dept_no, emp_no, last_name, first_name, dept_name
FROM employees
INNER JOIN dept_emp
	USING(emp_no)
INNER JOIN departments
	USING(dept_no);

-- Display the employee_departments view in 1NF.
SELECT *
FROM employee_departments;
-- Result: 311603 rows, due to duplicate 'emp_no'
-- This means there are employees with multiple departments.

-- Return the result for each employee, accounting for multiple departments.
SELECT emp_no, last_name, first_name,
	STRING_AGG(dept_no, ', ') AS department_numbers,
	STRING_AGG(dept_name, ', ') AS department_names
FROM employee_departments
GROUP BY emp_no, last_name, first_name;


-- Question 5
-- List the first name, last name, and sex of each employee whose first name is Hercules and
-- whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%';


-- Question 6
-- List each employee in the Sales department, including their employee number, last name,
-- and first name.
SELECT emp_no, last_name, first_name, dept_name
FROM employee_departments
WHERE dept_name = 'Sales';


-- Question 7
-- List each employee in the Sales and Development departments, including their employee
-- number, last name, first name, and department name.
SELECT emp_no, last_name, first_name, dept_name
FROM employee_departments
WHERE dept_name = 'Sales'
	OR dept_name = 'Development'; -- Result: 137952 rows

-- Confirm there are no duplicate 'emp_no' as with Question 4.
SELECT emp_no, last_name, first_name,
	STRING_AGG(dept_name, ', ') AS department_names
FROM employee_departments
WHERE dept_name = 'Sales'
	OR dept_name = 'Development'
GROUP BY emp_no, last_name, first_name;
-- Result: 137952 rows
-- This means there are no employees who belong to 'Sales' AND 'Development'.

-- View is no longer required.
DROP VIEW employee_departments;


-- Question 8
-- List the frequency counts, in descending order, of all employee
-- last names (that is, how many employees share each last name).
SELECT last_name, COUNT(last_name) AS surname_frequency
FROM employees
GROUP BY last_name
ORDER BY surname_frequency DESC;