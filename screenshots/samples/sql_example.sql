-- Database creation and querying example demonstrating syntax highlighting.
CREATE DATABASE CompanyDb;
USE CompanyDb;

-- Create table for employees
CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    hire_date DATE NOT NULL,
    salary DECIMAL(10, 2) CHECK (salary > 0),
    department_id INT
);

-- Insert sample records
INSERT INTO employees (first_name, last_name, email, hire_date, salary, department_id)
VALUES 
('John', 'Doe', 'john.doe@example.com', '2023-01-15', 75000.00, 1),
('Jane', 'Smith', 'jane.smith@example.com', '2022-06-01', 85000.00, 2);

-- Query employing JOIN, aggregation, and conditional filtering
SELECT 
    d.department_name,
    COUNT(e.employee_id) AS total_employees,
    AVG(e.salary) AS average_salary
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
WHERE e.hire_date >= '2020-01-01'
GROUP BY d.department_name
HAVING AVG(e.salary) > 50000.00
ORDER BY average_salary DESC;
