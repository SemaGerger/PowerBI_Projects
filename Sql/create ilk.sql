CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username     VARCHAR(50) UNIQUE NOT NULL,
    full_name    VARCHAR(100),
    email        VARCHAR(100),
    role         VARCHAR(20),
    created_date DATETIME DEFAULT GETDATE()
);

CREATE TABLE positions (
    position_id INT PRIMARY KEY,
    position_name VARCHAR(50)
);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_no VARCHAR(20) UNIQUE NOT NULL,
    position_id INT,
    department_id INT,
    hire_date DATETIME NOT NULL,
    termination_date DATETIME,
    employment_type VARCHAR(20),
    employment_status VARCHAR(20),
    FOREIGN KEY (position_id) REFERENCES positions(position_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE employee_personal (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    full_name AS (first_name + ' ' + last_name) PERSISTED, -- Computed Column
    photo VARCHAR(255),
    gender VARCHAR(10),
    birth_date DATETIME NOT NULL,
    birth_place VARCHAR(50),
    marital_status VARCHAR(15),
    national_no VARCHAR(20) UNIQUE,
    passport_no VARCHAR(20),
    blood_type VARCHAR(5),
    disability_status CHAR(1) DEFAULT 'N',
    disability_rate INT,
    driver_license VARCHAR(30),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);
CREATE TABLE salaries (
    salary_id INT PRIMARY KEY,
    employee_id INT NOT NULL,
    start_date DATE,
    end_date DATE,
    net_salary DECIMAL(10,2),
    created_by INT,
    created_date DATETIME DEFAULT GETDATE(),
    modified_by INT,
    modified_date DATETIME
);

CREATE TABLE salary_incomes (
    income_id INT PRIMARY KEY,
    salary_id INT NOT NULL,
    income_type VARCHAR(50), -- BASE, BONUS, OVERTIME
    amount DECIMAL(10,2),
    created_by INT,
    created_date DATETIME DEFAULT GETDATE()
);

CREATE TABLE salary_deductions (
    deduction_id INT PRIMARY KEY,
    salary_id INT NOT NULL,
    deduction_type VARCHAR(50), -- TAX, SGK, ADVANCE
    amount DECIMAL(10,2),
    created_by INT,
    created_date DATETIME DEFAULT GETDATE()
);

CREATE TABLE leaves (
    leave_id INT PRIMARY KEY,
    employee_id INT NOT NULL,
    leave_type VARCHAR(50),
    start_date DATETIME,
    end_date DATETIME,
    status VARCHAR(20), -- approved, pending, rejected
    created_by INT,
    created_date DATETIME DEFAULT GETDATE(),
    modified_by INT,
    modified_date DATETIME,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
    FOREIGN KEY (created_by) REFERENCES users(user_id),
    FOREIGN KEY (modified_by) REFERENCES users(user_id)
);

CREATE TABLE device_usage (
    device_id INT PRIMARY KEY,
    employee_id INT NOT NULL,       -- FK → employees.employee_id
    device_type VARCHAR(50),        -- Laptop, Phone, Tablet, vb.
    device_serial VARCHAR(50),
    usage_start DATE,
    usage_end DATE,
    created_by INT,
    created_date DATETIME DEFAULT GETDATE(),
    modified_by INT,
    modified_date DATETIME
);
