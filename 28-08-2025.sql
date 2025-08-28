create database murali;
SHOW DATABASES;
USE murali;
DROP TABLE IF EXISTS sales;
CREATE TABLE sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    sale_date DATE,
    amount_sold DECIMAL(10, 2)
);


INSERT INTO sales (product_id, sale_date, amount_sold) VALUES
(1, '2023-08-01', 500.00),
(2, '2023-08-02', 300.00),
(1, '2023-08-03', 200.00),
(3, '2023-08-04', 400.00),
(2, '2023-08-05', 150.00),
(3, '2023-08-06', 600.00),
(1, '2023-08-07', 250.00);


SELECT product_id, SUM(amount_sold) AS total_sold
FROM sales
GROUP BY product_id
ORDER BY total_sold DESC;
show databases;
use alluarjun;
DROP TABLE IF exists EMPLOYEES;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT
);
INSERT INTO employees (emp_id, emp_name, department, salary)
VALUES
(1, 'Ravi Kumar', 'HR', 45000),
(2, 'Anita Sharma', 'Admin', 52000),
(3, 'Vikram Singh', 'IT', 60000),
(4, 'Pooja Reddy', 'Finance', 75000),
(5, 'Rahul Mehta', 'IT', 68000);
SELECT sum(salary)as total_salary,department
from employees
group by department
order by total_salary desc;
select count(*)as count_of_employees
from employees
where  department not in ('HR','ADMIN');