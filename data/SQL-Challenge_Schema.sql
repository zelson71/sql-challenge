
CREATE TABLE Departments (
    dept_no varchar   NOT NULL,
    dept_name varchar   NOT NULL,
     PRIMARY KEY (
        dept_no
     )
);

CREATE TABLE dept_emp (
    emp_no int   NOT NULL,
    dept_no varchar   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL,
    PRIMARY KEY (
        emp_no,dept_no
     ), 
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

CREATE TABLE Dept_manager (
    dept_no varchar   NOT NULL,
    emp_no int   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL,
	PRIMARY KEY (
        emp_no,dept_no
     ), 
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

CREATE TABLE employees (
    emp_no int   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar   NOT NULL,
    last_name varchar   NOT NULL,
    gender varchar   NOT NULL,
    hire_date date   NOT NULL,
     PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL,
  PRIMARY KEY (
        emp_no, from_date
     ),
	foreign key (emp_no) references employees(emp_no) 
);

CREATE TABLE titles (
    emp_no int   NOT NULL,
    title varchar   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL,
    PRIMARY KEY (
        emp_no, title, from_date
     ), 
	foreign key (emp_no) references employees(emp_no) 
);


