CREATE TABLE employees (
 employee_id INT PRIMARY KEY, 
 employee_name VARCHAR(80) NOT NULL,
 department VARCHAR(40) NOT NULL, 
 salary NUMERIC(10,2) NOT NULL,
 city VARCHAR(40), 
 joining_date DATE
);


INSERT INTO employees VALUES
(101,'Aarav Sharma','Sales',45000,'Delhi','2024-01-15'),
(102,'Priya Verma','HR',38000,'Agra','2023-08-10'),
(103,'Rahul Singh','IT',62000,'Mathura','2022-05-20'),
(104,'Neha Gupta','Sales',52000,'Agra','2024-03-12'),
(105,'Kabir Khan','IT',70000,'Delhi','2021-11-01'),
(106,'Isha Patel','Finance',48000,'Jaipur','2023-02-18'),
(107,'Rohan Das','Sales',41000,'Mathura','2022-09-05'),
(108,'Meera Joshi','Finance',56000,'Delhi','2024-06-25');

CREATE TABLE departments (
department VARCHAR(40) PRIMARY KEY, 
manager_name VARCHAR(80) NOT NULL
);

INSERT INTO departments VALUES
('Sales','Amit Mehta'),
('HR','Kavita Rao'),
('IT','Sanjay Jain'),
('Finance','Pooja Nair'),
('Marketing','Vikas Roy');

-- TASK 1: SELECT
SELECT * FROM employees;

SELECT employee_name, department, salary FROM employees;

SELECT employee_name AS "Employee", salary AS "Monthly Salary" FROM employees;

-- TASK 2: WHERE, ORDER BY, aggregates
SELECT * FROM employees WHERE salary > 50000;

SELECT employee_name, salary 
FROM employees 
WHERE city='Delhi' 
AND salary >= 50000;

SELECT employee_name, salary 
FROM employees 
ORDER BY salary DESC;


SELECT COUNT(*) AS employee_count, 
SUM(salary) AS total_salary,
 ROUND(AVG(salary),2) AS average_salary, 
 MIN(salary) AS minimum_salary,
 MAX(salary) AS maximum_salary FROM employees;



-- TASK 3: GROUP BY and HAVING
SELECT department, COUNT(*) AS employee_count, 
ROUND(AVG(salary),2) AS average_salary
FROM employees 
GROUP BY department 
HAVING COUNT(*) >= 2 
ORDER BY average_salary DESC;


-- TASK 4: JOINs
SELECT e.employee_name,
e.department,d.manager_name 
FROM employees e
INNER JOIN departments d 
ON e.department=d.department 
ORDER BY e.employee_id;


SELECT e.employee_name,
e.department,
d.manager_name 
FROM employees e
LEFT JOIN departments d 
ON e.department=d.department 
ORDER BY e.employee_id;


SELECT e.employee_name,
e.department,
d.manager_name 
FROM employees e
RIGHT JOIN departments d 
ON e.department=d.department 
ORDER BY d.department,e.employee_id;

-- TASK 5: subqueries
SELECT employee_name,salary 
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees) 
				ORDER BY salary DESC;


CREATE TABLE products (
product_id VARCHAR(10) PRIMARY KEY, 
product_name VARCHAR(50),
category VARCHAR(40), 
price NUMERIC(10,2), 
stock INT
);

INSERT INTO products VALUES
('P101','Laptop','Electronics',55000,5),('P102','Mouse','Accessories',700,40),
('P103','Keyboard','Accessories',1500,25),('P104','Monitor','Electronics',12000,12),
('P105','Chair','Furniture',6500,8),('P106','Desk','Furniture',9000,4);

SELECT product_name,price 
FROM products
WHERE price > (SELECT AVG(price) FROM products) 
ORDER BY price DESC;


SELECT ROUND(AVG(price),2) 
AS average_product_price 
FROM products;
