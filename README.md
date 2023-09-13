# sql-challenge
Module 9 Challenge - UWA/edX Data Analytics Bootcamp

Github repository at: [https://github.com/alyssahondrade/sql-challenge.git](https://github.com/alyssahondrade/sql-challenge.git)

## Table of Contents
1. [Introduction](https://github.com/alyssahondrade/sql-challenge/tree/main#introduction)
    1. [Goal](https://github.com/alyssahondrade/sql-challenge/tree/main#goal)
    2. [Repository Structure](https://github.com/alyssahondrade/sql-challenge/tree/main#repository-structure)
    3. [Dataset](https://github.com/alyssahondrade/sql-challenge/tree/main#dataset)
2. [Approach](https://github.com/alyssahondrade/sql-challenge/tree/main#approach)
    1. [Data Modelling](https://github.com/alyssahondrade/sql-challenge/tree/main#data-modelling)
    2. [Data Engineering](https://github.com/alyssahondrade/sql-challenge/tree/main#data-engineering)
    3. [Data Analysis](https://github.com/alyssahondrade/sql-challenge/tree/main#data-analysis)
3. [References](https://github.com/alyssahondrade/sql-challenge/tree/main#references)

## Introduction
### Goal
Design tables in a SQL database to hold the data contained in 6 CSV files, by performing: data modelling, data engineering, and data analysis.

### Repository Structure
`EmployeeSQL` directory contains the CSV files:
- [`departments.csv`](https://github.com/alyssahondrade/sql-challenge/blob/main/EmployeeSQL/departments.csv) - Links the `dept_no` to `dept_name`.
- [`dept_emp.csv`](https://github.com/alyssahondrade/sql-challenge/blob/main/EmployeeSQL/dept_emp.csv) - Identifies which department each employee belongs to.
- [`dept_manager.csv`](https://github.com/alyssahondrade/sql-challenge/blob/main/EmployeeSQL/dept_manager.csv) - Identifies the managers for each department.
- [`employees.csv`](https://github.com/alyssahondrade/sql-challenge/blob/main/EmployeeSQL/employees.csv) - Contains information on each employee.
- [`salaries.csv`](https://github.com/alyssahondrade/sql-challenge/blob/main/EmployeeSQL/salaries.csv) - Identifies each employee's salary.
- [`titles.csv`](https://github.com/alyssahondrade/sql-challenge/blob/main/EmployeeSQL/titles.csv) - Links the `title_no` to the `title_name`.

### Dataset
The datasets were generated by **Mockaroo, LLC (2022) Realistic Data Generator**.

## Approach
### Data Modelling
Inspect the CSV files and sketch an Entity Relationship Diagram (ERD).
1. Identify columns with unique values = __PRIMARY KEY__.
2. Identify columns that are common with other CSV files = __FOREIGN KEY__ (will need to use `REFERENCES`).
3. If there are CSV files with no unique values, create a __COMPOSITE KEY__ (more than one field as `PRIMARY KEY`).

### Data Engineering
Create a table schema for each CSV file.

### Data Analysis
1. Employee details: `employee number, last name, first name, sex, salary`.
2. Employeers hired in 1986: `first name, last name, hire date`.
3. Manager of each department: `department number, department name, employee number, last name, first name`.
4. Employee whose first name is `Hercules` and last name starts with `B`: `first name, last name, sex`.
5. Sales department employees: `employee number, last name, first name`.
6. Sales and Development departments: `employee number, last name, first name, department name`.
7. Frequency counts (descending order) of all employee last names.

## References
- [1] QuickBD [https://www.quickdatabasediagrams.com](https://www.quickdatabasediagrams.com)

- [2] 
