use man;
CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary INT CHECK (salary >= 0)
);
INSERT INTO employee (employee_id, first_name, department, salary) 
VALUES

(202, 'Varun', 'Marketing', 120000),
(203, 'Vinay', 'Sales', 200000),
(204, 'Vishal', 'Finance', 350000),
(205, 'Vivek', 'Engineering', 500000),
(206, 'Vamsi', 'HR', 750000),
(207, 'Vijay', 'Operations', 1000000);


SELECT * 
FROM employee ;
WHERE department NOT IN ('HR', 'Admin') 
  AND salary BETWEEN 70000 AND 300000;
SELECT * 
FROM employee 
WHERE first_name LIKE 'V%' 
  AND salary >= 200000;
  SELECT first_name, department, salary 
FROM employee 
WHERE department != 'Admin' 
  AND salary < 100000;
SELECT CONCAT('₹', FORMAT(AVG(salary), 2)) AS average_admin_salary
FROM employee
WHERE department = 'Admin';
SELECT department, SUM(salary) AS total_salary
FROM employee
WHERE department IN ('HR', 'Admin')
GROUP BY department;
SELECT CONCAT('₹', FORMAT(SUM(salary), 2)) AS total_hr_admin_salary
FROM employee
WHERE department IN ('HR', 'Admin');
SELECT first_name
FROM employee
WHERE first_name LIKE 'V%';
