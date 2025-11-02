drop table books;

CREATE table books 
(
    id SERIAL PRIMARY KEY,
    title varchar(50),
    author varchar(50),
    price int check(price > 0),
    stock int,
    published_year INTEGER

);

ALTER TABLE books
ALTER COLUMN price TYPE NUMERIC(10,2);

INSERT INTO books (id, title, author, price, stock, published_year) VALUES 
(1, 'The Pragmatic Programmer', 'Andrew Hunt',  40.00,  10,  1999),          
 (2, 'Clean Code', 'Robert C. Martin', 35.00, 5, 2008),          
 (3, 'You Don''t Know JS', 'Kyle Simpson', 30.00, 8, 2014),           
 (4, 'Refactoring', 'Martin Fowler', 50.00, 3, 1999),           
 (5, 'Database Design Principles', 'Jane Smith', 20.00, 0, 2018)


 

SELECT * from books;

CREATE table customer
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50),
    joined_date DATE
);

INSERT INTO customer (id, name, email, joined_date)
VALUES
(1, 'Alice', 'alice@email.com', '2023-01-10'  ),
(2, 'Bob', 'bob@email.com', '2022-05-15'),
(3, 'Charlie', 'charlie@email.com', '2023-06-20 ');

SELECT * FROM customer;

CREATE table orders
(
    id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customer(id),
    book_id INTEGER REFERENCES books(id),
    quantity INTEGER check(quantity > 0),
    order_date DATE
);

INSERT INTO orders (id, customer_id, book_id, quantity, order_date)
VALUES
(1, 1, 2, 1, '2024-03-10'),
(2, 2, 1, 1, '2024-02-20'),
(3, 1, 3, 2, '2024-03-05');

SELECT * from orders;

--? question 01:  Find books that are out of stock.
SELECT title from books WHERE stock = 0;

--? Question 02: Retrieve the most expensive book in the store.

SELECT * FROM books
ORDER BY price DESC
LIMIT 1;

--? Question 03: Find the total number of orders placed by each customer.

SELECT 
customer.name, COUNT (orders.id) as total_orders FROM customer
LEFT JOIN orders ON customer.id= orders.customer_id
GROUP BY customer.name;

--? Question 04:Calculate the total revenue generated from book sales.

SELECT  sum(orders.quantity * books.price) as total_revenue
FROM orders
JOIN books on orders.book_id = books.id;


--? Question 05:List all customers who have placed more than one order.
SELECT customer.name, COUNT(orders.id) as orders_count FROM customer 
JOIN orders ON customer.id = orders.customer_id
GROUP BY customer.name
HAVING COUNT(orders.id) >1;

--? Question 06:Find the average price of books in the store.

SELECT round(avg(price), 2) as Average_price from books;


--? Question 07:Increase the price of all books published before 2000 by 10%.

UPDATE books
SET price = price * 1.10 
WHERE published_year < 2000;

SELECT * from books;

--? Question 08:Delete customers who haven't placed any orders.
SELECT customer.name, COUNT(orders.id) from customer
JOIN orders on customer.id = orders.customer_id
GROUP BY customer.id;

DELETE FROM customer
WHERE id NOT IN(SELECT customer_id FROM orders);

SELECT * from customer


