-- Query tables
SELECT * FROM titles;
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM dept_manager;
SELECT * FROM dept_emp;
SELECT * FROM salaries;

--Q1.List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no,employees.last_name,employees.first_name,employees.sex,salaries.salary 
FROM employees
LEFT JOIN salaries 
ON salaries.emp_no = employees.emp_no;

--Q2.List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name,last_name,hire_date 
FROM employees
WHERE hire_date >='1986-01-01' AND hire_date <='1986-12-31';

--Q3.List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
CREATE VIEW manager_name AS
SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no IN
(
    SELECT emp_no FROM dept_manager
); 

CREATE VIEW dept_name_manager AS
SELECT departments.dept_no,departments.dept_name,dept_manager.emp_no
FROM departments
RIGHT JOIN dept_manager
ON dept_manager.dept_no = departments.dept_no;

SELECT dept_name_manager.dept_no,dept_name_manager.dept_name,dept_name_manager.emp_no,
manager_name.last_name,manager_name.first_name
FROM  dept_name_manager
RIGHT JOIN manager_name
ON dept_name_manager.emp_no = manager_name.emp_no;

--Q4.List the department of each employee with the following information: employee number, last name, first name, and department name.
CREATE VIEW dept_name_emp AS
SELECT dept_emp.emp_no, dept_emp.dept_no, departments.dept_name
FROM dept_emp
LEFT JOIN departments
ON departments.dept_no = dept_emp.dept_no;

CREATE VIEW dept_name_emp_name AS
SELECT employees.emp_no,employees.last_name,employees.first_name,dept_name_emp.dept_name
FROM employees
LEFT JOIN dept_name_emp
ON dept_name_emp.emp_no = employees.emp_no;

--Q5.List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name,last_name,sex
FROM employees
WHERE employees.first_name = 'Hercules' AND employees.last_name LIKE 'B%';

--Q6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT emp_no,last_name,first_name,dept_name
FROM dept_name_emp_name
WHERE dept_name ='Sales';


--Q7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT emp_no,last_name,first_name,dept_name
FROM dept_name_emp_name
WHERE dept_name ='Sales' OR dept_name ='Development';

--Q8.List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
SELECT last_name,COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;



