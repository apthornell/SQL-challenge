
CREATE TABLE if not exists departments(
dept_no VARCHAR (4),
dept_name VARCHAR (30),
PRIMARY KEY (dept_no)
);

CREATE TABLE if not exists dept_emp(
emp_no INTEGER,
dept_no VARCHAR (4),
from_date DATE,
to_date DATE,
);

CREATE TABLE if not exists dept_manager(
dept_no VARCHAR (4),
emp_no INTEGER,
from_date DATE,
to_date DATE,
PRIMARY KEY (emp_no)
);

CREATE TABLE if not exists employees(
emp_no INTEGER,
birth_date DATE,
first_name VARCHAR (15),
last_name VARCHAR (15),
gender VARCHAR(1),
hire_date DATE,
PRIMARY KEY (emp_no)
);

CREATE TABLE if not exists salaries(
emp_no INTEGER,
salary INTEGER,
from_date DATE,
to_date DATE
PRIMARY KEY (emp_no)
);

CREATE TABLE if not exists titles(
emp_no INTEGER,
title VARCHAR(15),
from_date DATE,
to_date DATE
PRIMARY KEY (emp_no)
);