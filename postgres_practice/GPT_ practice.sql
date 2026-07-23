-- Active: 1784407434089@@127.0.0.1@5432@B5_assignment_2@public
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

drop table customers

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR(100)
);

INSERT INTO customers (customer_name, city, phone, email)
VALUES
('John Smith', 'New York', '555-1001', 'john.smith@example.com'),
('Emma Johnson', 'Los Angeles', '555-1002', 'emma.johnson@example.com'),
('Michael Brown', 'Chicago', '555-1003', 'michael.brown@example.com'),
('Sophia Davis', 'Houston', '555-1004', 'sophia.davis@example.com'),
('William Miller', 'Dallas', '555-1005', 'william.miller@example.com'),
('Olivia Wilson', 'Philadelphia', '555-1006', 'olivia.wilson@example.com'),
('James Moore', 'San Antonio', '555-1007', 'james.moore@example.com'),
('Isabella Taylor', 'San Diego', '555-1008', 'isabella.taylor@example.com'),
('Benjamin Anderson', 'Dallas', '555-1009', 'ben.anderson@example.com'),
('Mia Thomas', 'San Jose', '555-1010', 'mia.thomas@example.com'),
('Lucas Jackson', 'Austin', '555-1011', 'lucas.jackson@example.com'),
('Charlotte White', 'Jacksonville', '555-1012', 'charlotte.white@example.com'),
('Henry Harris', 'Fort Worth', '555-1013', 'henry.harris@example.com'),
('Amelia Martin', 'Columbus', '555-1014', 'amelia.martin@example.com'),
('Daniel Thompson', 'Charlotte', '555-1015', 'daniel.thompson@example.com');

SELECT * FROM customers

SELECT * FROM customers WHERE city = 'Dallas'

SELECT * FROM customers WHERE city = 'Dallas'

SELECT * FROM customers WHERE customer_name like 'A%'

SELECT city, count(*) FROM customers GROUP BY cardinality

UPDATE customers SET phone = '555-0001'

DELETE FROM customers WHERE customer_id = 10

SELECT city, count(*) FROM customers GROUP BY city HAVING count(*) > 1


SELECT * FROM customers ORDER BY customer_name ASC

SELECT DISTINCT city FROM customers

SELECT * FROM customers ORDER BY length(customer_name) DESC limit 1



-- Insert 15 customers.
-- Find customers from Dallas.
-- Search customer names beginning with 'A'.
-- Count customers by city.
-- Update phone numbers.
-- Delete customer ID 10.
-- Find duplicate cities.
-- Order customers alphabetically.
-- Display distinct cities.
-- Find customer with longest name.

--! ========================================================================

--! #05

drop table orders

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount NUMERIC(10,2),
    status VARCHAR(20)
);

INSERT INTO orders (customer_id, order_date, total_amount, status)
VALUES
(1, '2026-01-05', 250.50, 'Completed'),
(2, '2026-01-08', 120.00, 'Pending'),
(3, '2026-01-10', 499.99, 'Completed'),
(4, '2026-01-12', 75.25, 'Cancelled'),
(5, '2026-01-15', 320.00, 'Completed'),
(6, '2026-01-18', 150.75, 'Pending'),
(7, '2026-07-23', 980.00, 'Completed'),
(8, '2026-01-22', 60.00, 'Cancelled'),
(9, '2026-01-25', 215.40, 'Completed'),
(10, '2026-01-28', 430.10, 'Pending'),
(11, '2026-02-01', 99.99, 'Completed'),
(12, '2026-02-03', 180.00, 'Completed'),
(13, '2026-02-05', 520.25, 'Pending'),
(14, '2026-02-08', 890.00, 'Completed'),
(15, '2026-02-10', 310.50, 'Cancelled'),
(1, '2026-02-12', 145.75, 'Completed'),
(3, '2026-02-15', 670.00, 'Pending'),
(5, '2026-02-18', 55.50, 'Completed'),
(7, '2026-02-20', 1200.00, 'Completed'),
(10, '2026-02-22', 275.80, 'Pending');

select * from orders

SELECT * FROM orders WHERE status='Completed'

SELECT * FROM orders WHERE total_amount > 1000

SELECT count(*) as Completed FROM orders WHERE status = 'Completed'

SELECT  sum(total_amount) as Total_Sales FROM orders

SELECT * FROM orders ORDER BY total_amount DESC LIMIT 1

UPDATE orders set status = 'Processing' WHERE status = 'Pending'


DELETE FROM orders WHERE status = 'Cancelled'

SELECT * FROM orders WHERE order_date = CURRENT_DATE

SELECT round(avg(total_amount)) as Average_value FROM orders

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

--! #06

CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Insert departments.

INSERT INTO departments (department_name)
VALUES
('Human Resources'),
('Information Technology'),
('Finance'),
('Sales'),
('Marketing');

SELECT * FROM departments

DROP table new_employees

CREATE TABLE new_employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(100),
    salary NUMERIC(10,2),
    department_id INT REFERENCES departments(department_id)
);

-- Insert employees.
INSERT INTO new_employees (employee_name, salary, department_id)
VALUES
('John Smith', 55000.00, 2),
('Emma Johnson', 48000.00, 1),
('Michael Brown', 72000.00, 3),
('Sophia Davis', 65000.00, 2),
('William Miller', 45000.00, 4),
('Olivia Wilson', 51000.00, 5),
('James Moore', 80000.00, 2),
('Isabella Taylor', 47000.00, 1),
('Benjamin Anderson', 62000.00, 3),
('Mia Thomas', 54000.00, 4),
('Lucas Jackson', 58000.00, 5),
('Charlotte White', 76000.00, 2),
('Henry Harris', 49000.00, 1),
('Amelia Martin', 69000.00, 3),
('Daniel Thompson', 52000.00, 4),
('Evelyn Garcia', 61000.00, 5),
('Alexander Martinez', 84000.00, 2),
('Harper Robinson', 53000.00, 1),
('Matthew Clark', 73000.00, 3),
('Abigail Lewis', 56000.00, 4);

SELECT * FROM new_employees

-- Show employee with department name.
SELECT employee_name, department_name FROM new_employees
JOIN departments ON new_employees.department_id = new_employees.department_id

-- Find employees in IT.
SELECT employee_name, department_name FROM new_employees
JOIN departments ON new_employees.department_id = departments.department_id
WHERE department_name = 'Information Technology'

-- Count employees per department.
SELECT department_name, count(*) FROM departments
JOIN new_employees ON departments.department_id = new_employees.department_id
GROUP BY department_name

-- Find highest salary in each department.
SELECT department_name, max(salary) FROM departments
JOIN new_employees ON departments.department_id = new_employees.department_id
GROUP BY department_name

-- Find departments without employees.
SELECT departments.department_id, departments.department_name FROM departments
LEFT JOIN new_employees ON departments.department_id = new_employees.department_id
WHERE new_employees.employee_id is NULL


-- Find average salary by department.
SELECT department_name, round(AVG(salary)) as average_salary FROM departments
JOIN new_employees ON departments.department_id = new_employees.department_id
GROUP BY department_name

-- List employees earning above department average.
SELECT employee_id, employee_name, salary, department_id 
FROM new_employees e
WHERE salary > (
    SELECT avg(salary) FROM new_employees
    WHERE department_id = e.department_id
)



--! ============================================================================

--! #07

CREATE TABLE authors (
    author_id SERIAL PRIMARY KEY,
    author_name VARCHAR(100)
);

-- Insert authors.

INSERT INTO authors (author_name)
VALUES
('J.K. Rowling'),
('George R.R. Martin'),
('Stephen King'),
('Agatha Christie'),
('Paulo Coelho');

SELECT * FROM authors

drop table books

CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    author_id INT REFERENCES authors(author_id),
    price NUMERIC(10,2)
);

-- Insert books.


INSERT INTO books (title, author_id, price)
VALUES
('Harry Potter and the Philosopher''s Stone', 1, 19.99),
('Harry Potter and the Chamber of Secrets', 1, 21.50),
('A Game of Thrones', 2, 24.99),
('A Clash of Kings', 2, 26.99),
('The Shining', 3, 18.75),
('It', 3, 22.50),
('Murder on the Orient Express', 4, 17.99),
('And Then There Were None', 4, 16.99),
('The Alchemist', 5, 15.99),
('Brida', 5, 14.50);

SELECT * from books


-- Show book with author.

SELECT title, author_name FROM books
JOIN authors ON books.author_id = authors.author_id


-- Find books above 500.

SELECT title, price from books WHERE price > 15

-- Count books per author.
SELECT author_name, count(*) FROM authors
JOIN books on authors.author_id = books.author_id
GROUP BY author_name

-- Find author with most books.
SELECT author_name, count(*) as total_books FROM authors a
JOIN books b on a.author_id = b.author_id
GROUP BY author_name
ORDER BY total_books
limit 1

-- Find average book price.
SELECT round(avg(price)) as average_price from books

-- Delete books below 15.
DELETE from books WHERE price < 15

-- Find authors without books.
SELECT a.author_id, a.author_name FROM authors a
LEFT JOIN books b ON a.author_id = b.author_id
WHERE b.book_id IS NULL;

-- List books alphabetically.
SELECT * FROM books ORDER BY title ASC

--! ===========================================================================

--! #08

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT
);

-- Insert courses.
INSERT INTO courses (course_name, credits)
VALUES
('Database Systems', 3),
('Data Structures', 4),
('Web Development', 3),
('Operating Systems', 4),
('Computer Networks', 3);

SELECT * from courses

DROP table enrollments

CREATE TABLE enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT,
    course_id INT,
    semester VARCHAR(20)
);

-- Insert enrollments.
INSERT INTO enrollments (student_id, course_id, semester)
VALUES
(1, 1, 'Spring 2026'),
(1, 2, 'Spring 2026'),
(2, 1, 'Spring 2026'),
(2, 3, 'Spring 2026'),
(3, 2, 'Spring 2026'),
(3, 4, 'Spring 2026'),
(4, 1, 'Fall 2026'),
(4, 5, 'Fall 2026'),
(5, 1, 'Spring 2026'),
(5, 2, 'Spring 2026'),
(5, 3, 'Spring 2026'),
(6, 3, 'Fall 2026'),
(7, 1, 'Fall 2026'),
(7, 4, 'Fall 2026'),
(8, 2, 'Spring 2026'),
(9, 1, 'Spring 2026'),
(9, 5, 'Spring 2026'),
(10, 4, 'Fall 2026'),
(11, 1, 'Fall 2026'),
(11, 2, 'Fall 2026'),
(12, 5, 'Spring 2026'),
(13, 3, 'Spring 2026'),
(13, 4, 'Spring 2026'),
(14, 1, 'Fall 2026'),
(15, 2, 'Spring 2026'),
(15, 3, 'Spring 2026');

SELECT * from enrollments

-- Find all enrolled students.
SELECT student_id, semester FROM enrollments e
JOIN courses c ON e.course_id = c.course_id

-- Count students in each course.
SELECT course_name, count(*) FROM courses c
JOIN enrollments e on c.course_id = e.course_id
GROUP BY course_name

-- Find most popular course.
SELECT course_name, count(*) as total_courses FROM courses c
JOIN enrollments e on c.course_id = e.course_id
GROUP BY course_name
ORDER BY total_courses desc LIMIT 1

-- Find courses with no students.


-- Find students taking more than 2 courses.
SELECT student_id, count(course_id) as total_courses FROM enrollments e
GROUP BY student_id
HAVING count(course_id) > 2



-- Delete old enrollments.


-- Update semester.

-- Find total credits per student.
SELECT student_id, sum(c.credits) as total_credits FROM enrollments e 
JOIN courses c ON e.course_id = c.course_id
GROUP BY student_id ORDER BY student_id ASC

--! ============================================================================

--! #09

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

--! #10

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