CREATE or replace TABLE employee (
    emp_id     INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50)    NOT NULL,
    last_name  VARCHAR(50)    NOT NULL,
    email      VARCHAR(100)   UNIQUE,
    hire_date  DATE           NOT NULL,
    salary     DECIMAL(10,2)  NOT NULL CHECK (salary > 0),
    dept_id    INT,
    manager_id INT NULL,
    FOREIGN KEY (dept_id)    REFERENCES department(dept_id),
    FOREIGN KEY (manager_id) REFERENCES employee(emp_id),
    test VARCHAR,
    test2 VARCHAR
);