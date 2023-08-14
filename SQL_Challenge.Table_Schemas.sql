CREATE TABLE titles (
    title_id    VARCHAR(50)     NOT NULL,
    title       VARCHAR(50)     NOT NULL,
    PRIMARY KEY (title_id)
); 

CREATE TABLE departments (
    dept_no     VARCHAR(99)      NOT NULL,
    dept_name   VARCHAR(99)     NOT NULL,
    PRIMARY KEY (dept_no),
    UNIQUE (dept_name)
);

CREATE TABLE employees (
    emp_no      INT             NOT NULL,
	emp_title   VARCHAR(99)     NOT NULL,
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR(99)     NOT NULL,
    last_name   VARCHAR(99)     NOT NULL,
    gender      varchar(99)     NOT NULL,    
    hire_date   DATE            NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title) references titles (title_id)
);

CREATE TABLE dept_manager (
   dept_no      VARCHAR(99)     NOT NULL,
   emp_no       INT             NOT NULL,
   FOREIGN KEY (emp_no)  REFERENCES employees (emp_no),    
   FOREIGN KEY (dept_no) REFERENCES departments (dept_no), 
   PRIMARY KEY (emp_no,dept_no)
); 

CREATE TABLE dept_emp (
    emp_no      INT             NOT NULL,
    dept_no     CHAR(99)        NOT NULL,
    FOREIGN KEY (emp_no)  REFERENCES employees   (emp_no),  
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE salaries (
    emp_no      INT             NOT NULL,
    salary      INT             NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    PRIMARY KEY (emp_no, salary)
) 
; 