# Unit 9 Homework: Employee Database

## Background

In this assignment, I designed tables to hold data in the database of employees CSVs files from 1980s to 1990s, import the CSVs into a SQL database, and analyze the data.

## Before You Begin

1. The repository for this project called `sql-challenge`

2. ERD of the tables `ERD_QuickDBD` inside the repository is created for data modeling by (http://www.quickdatabasediagrams.com).

3. Inside the repository, there is a folder `data` with six CSV files, and folder `EmployeeSQL` with `schemata_QuickDBD.sql` and `queries.sql` to create the tables and analysis the data. Additionally, a `bonus_analysis.ipynb` is included to further analyze the salaries


#### Data Engineering: `schemata_QuickDBD.sql`

* Use the provided information to create a table schema for each of the six CSV files, I imported the ERD (QuickDBD) to pgAdmin to create the SQL tables.

* Import each CSV file into the corresponding SQL table. 

#### Data Analysis: `queries.sql` 

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

### Bonus analysis: `bonus_analysis.ipynb`

To further examine the data by creating a visualization of the data. Follow these steps: 

1. Import the SQL database into Pandas. 

2. Create a histogram to visualize the most common salary ranges for employees.

3. Create a bar chart of average salary by title.


