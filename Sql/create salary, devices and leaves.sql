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
