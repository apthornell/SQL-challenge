--1. List the following details of each employee: employee number, last name,
--first name, gender, and salary.

SELECT employees.emp_no, 
employees.last_name,
employees.first_name,
employees.gender,
salaries.salary
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no
ORDER BY emp_no

--2. List employees who were hired in 1986.

SELECT employees.first_name,
employees.last_name, 
employees.emp_no,
employees.hire_date
FROM employees
WHERE DATE_PART('year',hire_date) = 1986

--3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, 
--last name, first name, and start and end employment dates.

SELECT dept_manager.dept_no, 
departments.dept_name,
dept_manager.emp_no,
employees.last_name, 
employees.first_name,
dept_manager.from_date,
dept_manager.to_date
FROM dept_manager
LEFT JOIN departments
ON dept_manager.dept_no = departments.dept_no
LEFT JOIN employees 
ON dept_manager.emp_no = employees.emp_no
ORDER BY emp_no

--4. List the department of each employee with the following information:
--employee number, last name, first name, and department name.

SELECT employees.emp_no,
employees.last_name,
employees.first_name,
dept_emp.dept_no,
departments.dept_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON departments.dept_no=dept_emp.dept_no
order by emp_no

--5. List all employees whose first name is "Hercules" 
--and last names begin with "B."

SELECT * FROM employees
WHERE first_name = 'Hercules'
AND last_name like 'B%'


SELECT employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM employees
LEFT JOIN dept_emp 
ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments 
ON departments.dept_no=dept_emp.dept_no
WHERE departments.dept_name='Sales';

SELECT employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM employees
LEFT JOIN dept_emp 
ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments 
ON departments.dept_no=dept_emp.dept_no
WHERE departments.dept_name='Sales' OR departments.dept_name='Development';

SELECT last_name, COUNT(*) AS freq_count
FROM employees
GROUP BY last_name
ORDER BY freq_count DESC;