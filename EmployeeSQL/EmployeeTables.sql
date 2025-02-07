CREATE TABLE Departments(
	dept_no VARCHAR(4) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(50)
);

CREATE TABLE Titles(
	title_id VARCHAR(5) NOT NULL PRIMARY KEY,
	title VARCHAR(30)
);

CREATE TABLE Employees(
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(5) REFERENCES Titles(title_id),
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(1),
	hire_date DATE
);

CREATE TABLE Salaries(
	emp_no INT REFERENCES Employees(emp_no),
	salary INT
);

CREATE TABLE Department_Employees(
	emp_no INT REFERENCES Employees(emp_no),
	dept_no VARCHAR(4) REFERENCES Departments(dept_no)
);

CREATE TABLE Department_Managers(
	dept_no VARCHAR(4) REFERENCES Departments(dept_no),
	emp_no INT REFERENCES Employees(emp_no)
);