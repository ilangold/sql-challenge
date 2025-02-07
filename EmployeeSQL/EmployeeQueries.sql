--- Employee Info and Salaries ---
Select employees.emp_no, employees.last_name, employees.first_name,
	employees.sex, salaries.salary
From employees, salaries
Where employees.emp_no = salaries.emp_no
Order by employees.emp_no;

--- Employees Hired in 1986
Select first_name, last_name, hire_date
From employees
Where Extract(Year From hire_date) = 1986
Order by hire_date;

--- Department Managers
Select departments.dept_name, departments.dept_no, department_managers.emp_no,
	employees.last_name, employees.first_name
From departments, department_managers, employees
Where departments.dept_no = department_managers.dept_no
AND department_managers.emp_no = employees.emp_no
Order by dept_no;

--- Employee Departments
Select employees.emp_no, department_employees.dept_no, departments.dept_name,
	employees.last_name, employees.first_name
From employees, department_employees, departments
Where employees.emp_no = department_employees.emp_no
And department_employees.dept_no = departments.dept_no
Order by emp_no;

--- Herculean Employees
Select first_name, last_name, sex
From employees
Where first_name = 'Hercules'
And last_name Like 'B%'
Order by last_name;

--- Sales Department Employees
Select departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
From departments, department_employees, employees
Where departments.dept_no = department_employees.dept_no
And department_employees.emp_no = employees.emp_no
And departments.dept_name = 'Sales'
Order by emp_no;

--- Sales and Develoment Department Employees
Select departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
From departments, department_employees, employees
Where departments.dept_no = department_employees.dept_no
And department_employees.emp_no = employees.emp_no
And (departments.dept_name = 'Sales' OR departments.dept_name = 'Development')
Order by dept_name, emp_no;

--- Employee Last Names
Select last_name, count(last_name)
From employees
Group by last_name
Order by count desc;