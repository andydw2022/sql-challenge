--1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT 
emp.emp_no, last_name, first_name, sex,salary 
FROM employees emp
INNER JOIN salaries sal on emp.emp_no=sal.emp_no

----2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT  last_name, first_name, hire_date 
FROM employees
WHERE hire_date LIKE '%1986%'

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT mgr.dept_no, dept_name, mgr.emp_no, last_name, first_name
FROM dept_manager mgr
INNER JOIN employees emp on mgr.emp_no = emp.emp_no
INNER JOIN department dept on mgr.dept_no = dept.dept_no

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
 
 SELECT demp.emp_no, last_name , first_name,  dept_name 
 FROM employees emp
 INNER JOIN dept_emp demp on demp.emp_no = emp.emp_no
 INNER JOIN department dept on demp.dept_no= dept.dept_no
 
 --5. List first name, last name, and sex for employees whose first name 
 --   is "Hercules" and last names begin with "B."
 
 SELECT first_name, last_name, sex 
 FROM employees emp
 WHERE emp.first_name = 'Hercules'
 AND emp.last_name LIKE 'B%'
 
 --6. List all employees in the Sales department, including their 
 --   employee number, last name, first name, and department name.
 
SELECT emp.emp_no, last_name, first_name, dept_name
FROM dept_emp demp
INNER JOIN employees emp on demp.emp_no = emp.emp_no
INNER JOIN department dept on demp.dept_no = dept.dept_no
WHERE dept.dept_name ='Sales'
 
--7. List all employees in the Sales and Development departments, 
--   including their employee number, last name, first name, and department name.
SELECT emp.emp_no, last_name, first_name, dept_name
FROM dept_emp demp
INNER JOIN employees emp on demp.emp_no = emp.emp_no
INNER JOIN department dept on demp.dept_no = dept.dept_no
WHERE dept.dept_name IN ('Sales','Development')

--8. In descending order, list the frequency count of employee last names,
--   i.e., how many employees share each last name. 
SELECT last_name, count(last_name) as Frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC

 
