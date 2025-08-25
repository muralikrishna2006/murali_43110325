CREATE DATABASE sathyabama;
USE sathyabama;
CREATE TABLE department_info (
    department_name VARCHAR(50) PRIMARY KEY
);
INSERT INTO department_info (department_name) VALUES
('Computer Science'),
('Information Technology'),
('Electronics'),
('Mechanical'),
('Civil');
CREATE TABLE details (
    reg_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    department VARCHAR(50),
    email VARCHAR(100),
    joining_date DATE,
    FOREIGN KEY (department) REFERENCES department_info(department_name)
        ON UPDATE CASCADE ON DELETE SET NULL
);
INSERT INTO details (reg_id, first_name, department, email, joining_date) VALUES
(101, 'Aarav', 'Computer Science', 'aarav.cs@example.com', '2023-07-15'),
(102, 'Meera', 'Information Technology', 'meera.it@example.com', '2022-08-01'),
(103, 'Rohan', 'Electronics', 'rohan.ec@example.com', '2023-01-10'),
(104, 'Sneha', 'Mechanical', 'sneha.mech@example.com', '2021-09-20'),
(105, 'Vikram', 'Civil', 'vikram.civil@example.com', '2022-06-05');
CREATE TABLE course_info (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    department_name VARCHAR(50),
    FOREIGN KEY (department_name) REFERENCES department_info(department_name)
        ON UPDATE CASCADE ON DELETE SET NULL
);
INSERT INTO course_info (course_id, course_name, department_name) VALUES
(201, 'Data Structures', 'Computer Science'),
(202, 'Web Development', 'Information Technology'),
(203, 'Digital Electronics', 'Electronics'),
(204, 'Thermodynamics', 'Mechanical'),
(205, 'Structural Analysis', 'Civil');

SELECT * FROM department_info;
SELECT * FROM details;
SELECT * FROM course_info;
SELECT d.first_name AS Name, d.email AS Email, dept.department_name AS Dept, c.course_name AS Course FROM details d JOIN department_info dept ON d.department = dept.department_name JOIN course_info c ON dept.department_name = c.department_name WHERE d.first_name LIKE 'M%';
