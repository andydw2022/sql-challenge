-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
/*
DROP   TABLE Dept_Emp;
DROP   TABLE Dept_Manager;
DROP   TABLE Department;
DROP   TABLE Employees;
DROP   TABLE Titles;
DROP   TABLE Salaries;
*/
CREATE TABLE Department (
    dept_no varchar(5)   NOT NULL,
    dept_name varchar(30)   NOT NULL,
    CONSTRAINT pk_Department PRIMARY KEY (
        dept_no
     )
);

CREATE TABLE Titles (
    title_id varchar(5)   NOT NULL,
    title varchar(30)   NOT NULL,
    CONSTRAINT pk_Titles PRIMARY KEY (
        title_id
     )
);

CREATE TABLE Salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
    CONSTRAINT pk_Salaries PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE Employees (
    emp_no int   NOT NULL,
    emp_title_id varchar(5)   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar(50)   NOT NULL,
    last_name varchar(50)   NOT NULL,
    sex varchar(1)   NOT NULL,
    hire_date date   NOT NULL,
	 CONSTRAINT pk_employees PRIMARY KEY (
        emp_no)
);

CREATE TABLE Dept_Emp (
    emp_no int   NOT NULL,
    dept_no varchar(5)   NOT NULL,
    CONSTRAINT pk_dept_emp PRIMARY KEY (
        emp_no,dept_no)
);

CREATE TABLE Dept_Manager (
    dept_no varchar(5)   NOT NULL,
    emp_no int   NOT NULL,
    CONSTRAINT pk_dept_mgr PRIMARY KEY (
        dept_no,emp_no)
);

ALTER TABLE Employees ADD CONSTRAINT fk_Employees_emp_no FOREIGN KEY(emp_no)
REFERENCES Salaries (emp_no);

ALTER TABLE Employees ADD CONSTRAINT fk_Employees_emp_title_id FOREIGN KEY(emp_title_id)
REFERENCES Titles (title_id);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_dept_no FOREIGN KEY(dept_no)
REFERENCES Department (dept_no);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_dept_no FOREIGN KEY(dept_no)
REFERENCES Department (dept_no);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);


