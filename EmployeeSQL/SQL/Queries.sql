-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT 
	e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
FROM employees e
JOIN salaries s
	ON e.emp_no = s.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT
	first_name,
	last_name,
	hire_date
FROM employees
WHERE
	EXTRACT(YEAR FROM hire_date) = 1986;
	
-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT
	d.dept_no,
	d.dept_name,
	e.emp_no,
	e.last_name,
	e.first_name
from departments d
join dept_manager dm
	on dm.dept = d.dept_no
join employees e
	on e.emp_no = dm.emp_no;
	
-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT
	d.dept_no,
	d.dept_name,
	e.emp_no,
	e.last_name,
	e.first_name
from departments d
join dept_emp de
	on de.dept_no = d.dept_no
join employees e
	on e.emp_no = de.emp_no
	
-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT
	first_name,
	last_name,
	sex
FROM EMPLOYEES
WHERE first_name = 'Hercules'
	AND last_name like 'B%'
	
-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT
	emp_no,
	last_name,
	first_name
FROM EMPLOYEES
WHERE emp_no IN
	(select emp_no
	 from dept_emp
	 where dept_no IN
		(select dept_no
		 from departments
		 where dept_name = 'Sales'));

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees e
JOIN dept_emp de
	on e.emp_no = de.emp_no
JOIN departments d
	on d.dept_no = de.dept_no
WHERE
	d.dept_name = 'Sales'
	OR d.dept_name = 'Development'
	
-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT
	last_name,
	COUNT(last_name) AS Frequency
FROM employees
GROUP BY last_name
ORDER BY Frequency DESC;
