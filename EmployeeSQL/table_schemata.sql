CREATE TABLE Departments(
dept_no VARCHAR(30) NOT NULL,
dept_name VARCHAR(30) NOT NULL,
	CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no")
);

CREATE TABLE Dept_manager(
dept_no VARCHAR(30) NOT NULL,
emp_no INT NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL
);

CREATE TABLE Dept_emp(
emp_no INT NOT NULL,
dept_no VARCHAR(30) NOT NULL,
from_date DATE NOT NULL, 
to_date DATE NOT NULL 
);

CREATE TABLE Employees(
emp_no INT NOT NULL, 
birth_date DATE NOT NULL, 
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
gender VARCHAR(30) NOT NULL, 
hire_date DATE NOT NULL,
	CONSTRAINT "pk_Employees" PRIMARY KEY (
		"emp_no")
);

CREATE TABLE Salaries(
emp_no INT NOT NULL,
salary INT NOT NULL,
from_date DATE NOT NULL, 
to_date DATE NOT NULL 
);

CREATE TABLE Titles(
emp_no INT NOT NULL, 
title VARCHAR(30) NOT NULL, 
from_date DATE NOT NULL, 
to_date DATE NOT NULL
);

ALTER TABLE Dept_emp ADD CONSTRAINT fk_Dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Dept_emp ADD CONSTRAINT fk_Dept_emp_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_manager ADD CONSTRAINT fk_Dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_manager ADD CONSTRAINT fk_Dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Titles ADD CONSTRAINT fk_Titles_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);