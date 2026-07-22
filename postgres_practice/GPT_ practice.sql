--! #01

DROP table students

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade CHAR(2),
    email VARCHAR(100),
    country VARCHAR(50)
);

INSERT INTO students (first_name, last_name, age, grade, email, country)
VALUES
('John', 'Smith', 20, 'A', 'john.smith@email.com', 'USA'),
('Emma', 'Johnson', 19, 'B', 'emma.johnson@email.com', 'Canada'),
('Liam', 'Brown', 22, 'A', 'liam.brown@email.com', 'UK'),
('Olivia', 'Davis', 21, 'A', 'olivia.davis@email.com', 'Australia'),
('Noah', 'Wilson', 18, 'C', 'noah.wilson@email.com', 'USA'),
('Sophia', 'Miller', 20, 'B', 'sophia.miller@email.com', 'Germany'),
('James', 'Moore', 23, 'A', 'james.moore@email.com', 'France'),
('Isabella', 'Taylor', 19, 'B', 'isabella.taylor@email.com', 'Italy'),
('Benjamin', 'Anderson', 24, 'A', 'ben.anderson@email.com', 'Bangladesh'),
('Mia', 'Thomas', 21, 'C', 'mia.thomas@email.com', 'India'),
('Lucas', 'Jackson', 22, 'B', 'lucas.jackson@email.com', 'Brazil'),
('Charlotte', 'White', 20, 'A', 'charlotte.white@email.com', 'Japan'),
('Henry', 'Harris', 18, 'B', 'henry.harris@email.com', 'South Korea'),
('Amelia', 'Martin', 19, 'A', 'amelia.martin@email.com', 'Bangladesh'),
('Alexander', 'Thompson', 25, 'C', 'alex.thompson@email.com', 'USA'),
('Harper', 'Garcia', 22, 'B', 'harper.garcia@email.com', 'Spain'),
('Daniel', 'Martinez', 21, 'A', 'daniel.martinez@email.com', 'Mexico'),
('Evelyn', 'Robinson', 23, 'A', 'evelyn.robinson@email.com', 'Canada'),
('Michael', 'Clark', 20, 'B', 'michael.clark@email.com', 'Bangladesh'),
('Ava', 'Lewis', 19, 'C', 'ava.lewis@email.com', 'India');

SELECT * FROM students

SELECT first_name, last_name, age FROM students

SELECT * FROM students WHERE age > 20

SELECT * FROM students WHERE country = 'Bangladesh'

SELECT * FROM students ORDER BY age DESC

SELECT count(*) FROM students 

SELECT * FROM students ORDER BY age ASC LIMIT 1

UPDATE students set grade = 'A' WHERE student_id = 5

DELETE FROM students WHERE age < 19


-- Insert 20 students.
-- Display all students.
-- Display only first_name, last_name, and grade.
-- Find students older than 20.
-- Find students from Bangladesh.
-- Sort students by age descending.
-- Count total students.
-- Find the youngest student.
-- Update the grade of student ID 5.
-- Delete students whose age is below 18.


-- ! ========================================================================

--! #02
drop table employees


CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary NUMERIC(10,2),
    hire_date DATE
);

INSERT INTO employees (first_name, last_name, department, salary, hire_date)
VALUES
('John', 'Smith', 'IT', 85000.00, '2022-03-15'),
('Emma', 'Johnson', 'HR', 55000.00, '2021-07-10'),
('Michael', 'Brown', 'Finance', 72000.00, '2020-01-20'),
('Sophia', 'Davis', 'Marketing', 63000.00, '2023-05-12'),
('William', 'Wilson', 'Sales', 58000.00, '2024-02-18'),
('Olivia', 'Miller', 'IT', 91000.00, '2019-11-01'),
('James', 'Moore', 'Finance', 68000.00, '2022-08-25'),
('Ava', 'Taylor', 'HR', 49000.00, '2023-09-05'),
('Benjamin', 'Anderson', 'IT', 105000.00, '2018-06-30'),
('Charlotte', 'Thomas', 'Marketing', 61000.00, '2024-01-15'),
('Daniel', 'Jackson', 'Sales', 54000.00, '2021-12-08'),
('Mia', 'White', 'Customer Support', 42000.00, '2025-03-22'),
('Alexander', 'Harris', 'Operations', 76000.00, '2020-10-14'),
('Harper', 'Martin', 'Operations', 69000.00, '2022-04-11'),
('Ethan', 'Garcia', 'IT', 98000.00, '2023-11-07');

SELECT * FROM employees

SELECT * from employees WHERE salary > 70000

SELECT * from employees ORDER BY salary

SELECT * from employees ORDER BY salary DESC LIMIT 1

UPDATE employees set salary = salary * 1.10 WHERE department ='IT'

SELECT department, count(*) FROM employees GROUP BY department

SELECT avg(salary) FROM employees

SELECT * from employees WHERE  extract(year from hire_date) > 2023

DELETE from employees WHERE salary < 30000


UPDATE employees SET department = 'Human Resources' WHERE department = 'HR'


-- Insert 15 employees.
-- Find employees earning more than 70000.
-- Show employees ordered by salary.
-- Find the highest-paid employee.
-- Increase salary by 10% for IT department.
-- Count employees in each department.
-- Find average salary.
-- Find employees hired after 2023.
-- Delete employees with salary below 30000.
-- Rename department "HR" to "Human Resources".


--! ===========================================================================

--! #03

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price NUMERIC(10,2),
    stock INT
);

INSERT INTO  products (product_name, category, price, stock)
VALUES

('Laptop Pro 15', 'Electronics', 1200.00, 15),
('Wireless Mouse', 'Electronics', 25.99, 120),
('Mechanical Keyboard', 'Electronics', 79.99, 60),
('LED Monitor 24"', 'Electronics', 199.99, 35),
('Office Chair', 'Furniture', 149.50, 20),
('Study Desk', 'Furniture', 249.99, 12),
('Bookshelf', 'Furniture', 179.99, 18),
('Water Bottle', 'Accessories', 12.99, 200),
('Travel Backpack', 'Accessories', 59.99, 75),
('Running Shoes', 'Footwear', 89.99, 40),
('Leather Wallet', 'Accessories', 34.99, 90),
('Smartphone X', 'Electronics', 899.99, 25),
('Bluetooth Speaker', 'Electronics', 69.99, 50),
('Coffee Maker', 'Home Appliances', 129.99, 30),
('Air Fryer', 'Home Appliances', 159.99, 22),
('Vacuum Cleaner', 'Home Appliances', 249.99, 14),
('T-Shirt', 'Clothing', 19.99, 150),
('Jeans', 'Clothing', 49.99, 80),
('Winter Jacket', 'Clothing', 119.99, 28),
('Digital Watch', 'Accessories', 99.99, 45);

SELECT * from products

SELECT * FROM products WHERE price > 500

SELECT * FROM products WHERE stock < 10

SELECT * from products ORDER BY price DESC

SELECT avg(price) from products

SELECT * from products ORDER BY stock DESC LIMIT 1

UPDATE products SET price = price * 1.05

DELETE FROM products WHERE stock = 0

SELECT * from products WHERE price >= 200 and price <= 500


SELECT category, count(*) from products GROUP BY category


-- Insert 20 products.
-- Find products costing more than 500.
-- Find products with stock less than 10.
-- Show products ordered by price.
-- Find average product price.
-- Find maximum stock.
-- Increase price by 5%.
-- Delete out-of-stock products.
-- Find products between 200 and 500.
-- Count products in each category.

--!=======================================================================

--! #04

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR(100)
);

-- Insert 15 customers.
-- Find customers from Dhaka.
-- Search customer names beginning with 'A'.
-- Count customers by city.
-- Update phone numbers.
-- Delete customer ID 10.
-- Find duplicate cities.
-- Order customers alphabetically.
-- Display distinct cities.
-- Find customer with longest name.

--! ========================================================================


CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount NUMERIC(10,2),
    status VARCHAR(20)
);

-- Insert 20 orders.
-- Find completed orders.
-- Find orders above 1000.
-- Count completed orders.
-- Calculate total sales.
-- Find highest order value.
-- Update pending orders to processing.
-- Delete cancelled orders.
-- Find today's orders.
-- Find average order value.

--! ==================================================================

CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(100),
    salary NUMERIC(10,2),
    department_id INT REFERENCES departments(department_id)
);

-- Insert departments.
-- Insert employees.
-- Show employee with department name.
-- Find employees in IT.
-- Count employees per department.
-- Find highest salary in each department.
-- Find departments without employees.
-- Find average salary by department.
-- List employees earning above department average.
-- Find employee and manager (self join if manager_id exists).

--! ============================================================================

CREATE TABLE authors (
    author_id SERIAL PRIMARY KEY,
    author_name VARCHAR(100)
);

CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    author_id INT REFERENCES authors(author_id),
    price NUMERIC(10,2)
);

-- Insert authors.
-- Insert books.
-- Show book with author.
-- Find books above 500.
-- Count books per author.
-- Find author with most books.
-- Find average book price.
-- Delete books below 100.
-- Find authors without books.
-- List books alphabetically.

--! ===========================================================================

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT
);

CREATE TABLE enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT,
    course_id INT,
    semester VARCHAR(20)
);

-- Insert courses.
-- Insert enrollments.
-- Find all enrolled students.
-- Count students in each course.
-- Find most popular course.
-- Find courses with no students.
-- Find students taking more than 2 courses.
-- Delete old enrollments.
-- Update semester.
-- Find total credits per student.

--! ============================================================================

CREATE TABLE accounts (
    account_id SERIAL PRIMARY KEY,
    account_holder VARCHAR(100),
    balance NUMERIC(12,2)
);

CREATE TABLE transactions (
    transaction_id SERIAL PRIMARY KEY,
    account_id INT REFERENCES accounts(account_id),
    amount NUMERIC(12,2),
    transaction_date DATE,
    transaction_type VARCHAR(20)
);

-- Insert accounts.
-- Insert transactions.
-- Find deposits.
-- Find withdrawals.
-- Calculate account balance.
-- Find highest transaction.
-- Count transactions.
-- Find average transaction amount.
-- Find accounts with balance above 50000.
-- Find monthly transaction totals.

--! =================================================================

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    price NUMERIC(10,2)
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    order_date DATE
);

CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    product_id INT REFERENCES products(product_id),
    quantity INT
);

-- Insert users.
-- Insert products.
-- Insert orders.
-- Insert order items.
-- Show customer orders.
-- Calculate order totals.
-- Find best-selling product.
-- Find customers who spent the most.
-- Find products never ordered.
-- Find monthly sales.