SELECT Employees.emp_no,
Employees.first_name,
Employees.last_name, 
Employees.gender, 
Salaries.salary
FROM Employees 
INNER JOIN Salaries on 
Employees.emp_no = Salaries.emp_no;

SELECT employees.emp_no,
	employees.first_name,
	employees.last_name,
	EXTRACT (YEAR FROM hire_date) AS YEAR
FROM employees WHERE hire_date > '12/31/1985' AND hire_date < '01/01/1987';


SELECT t1.dept_no,
	t3.dept_name,
	t1.emp_no,
	t2.first_name,
	t2.last_name,
	t1.from_date,
	t1.to_date
FROM dept_manager AS t1
JOIN  employees AS t2 ON
t1.emp_no = t2.emp_no
JOIN departments AS t3
ON t3.dept_no = t1.dept_no;


SELECT t1.emp_no,
	t1.last_name,
	t1.first_name,
	t3.dept_name
FROM employees AS t1
JOIN dept_emp AS t2
ON t1.emp_no = t2.emp_no
JOIN departments AS t3
ON t3.dept_no = t2.dept_no;

SELECT Employees.first_name,
	Employees.last_name
FROM Employees WHERE first_name = 'Hercules' AND last_name like 'B';

SELECT t1.emp_no,
	t1.last_name,
	t1.first_name,
	t3.dept_name
FROM Employees as t1
JOIN dept_emp as t2
ON t1.emp_no = t2.emp_no
JOIN Departments as t3
ON t2.dept_no = t3.dept_no
WHERE dept_name ='Sales'

SELECT t1.emp_no,
	t1.last_name,
	t1.first_name,
	t3.dept_name
FROM Employees as t1
JOIN dept_emp as t2
ON t1.emp_no = t2.emp_no
JOIN Departments as t3
ON t2.dept_no = t3.dept_no
WHERE dept_name ='Sales' or dept_name ='Development'

SELECT last_name, COUNT (last_name) AS name_count
FROM employees
GROUP BY last_name
ORDER BY name_count DESC;

