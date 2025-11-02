drop table students;

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL UNIQUE,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)



INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
    ('John', 'Doe', 20, 'A', 'Math', 'john.doe@example.com', '2004-01-15', 'O+', 'USA'),
    ('Jane', 'Smith', 21, 'B', 'History', 'jane.smith@example.com', '2003-05-20', 'A-', 'Canada'),
    ('Alice', 'Johnson', 19, 'A', 'Physics', 'alice.johnson@example.com', '2002-11-08', 'B+', 'UK'),
    ('Bob', 'Williams', 22, 'C', 'Chemistry', 'bob.williams@example.com', '2001-07-03', 'AB-', 'Australia'),
    ('Charlie', 'Brown', 20, 'B', 'English', NULL, '2004-03-30', 'A+', 'New Zealand'),
    ('Emman', 'Jones', 23, 'B', 'Biology', 'emma.jones@example.com', '2000-09-12', 'A-', 'USA'),
    ('Michael', 'Johnson', 22, 'C', 'Physics', 'michael.johnson@example.com', '2002-04-05', 'O-', 'Canada'),
    ('Olivia', 'Davis', 21, 'A', 'Math', 'olivia.davis@example.com', '2003-12-18', 'B-', 'UK'),
    ('William', 'Taylor', 20, 'B', 'Chemistry', NULL, '2004-08-30', 'A+', 'Australia'),
    ('Sophia', 'Brown', 24, 'A', 'English', 'sophia.brown@example.com', '1999-06-25', 'AB+', 'New Zealand'),
    ('Liam', 'Miller', 19, 'C', 'History', 'liam.miller@example.com', '2002-02-10', 'A-', 'USA'),
    ('Ava', 'Anderson', 22, 'B', 'Biology', 'ava.anderson@example.com', '2000-11-15', 'B+', 'Canada'),
    ('Noah', 'Martinez', 21, 'A', 'Physics', NULL, '2001-04-28', 'O+', 'UK'),
    ('Isabella', 'Clark', 20, 'C', 'Chemistry', 'isabella.clark@example.com', '2003-10-03', 'A-', 'Australia'),
    ('Ethan', 'Garcia', 23, 'B', 'Math', 'ethan.garcia@example.com', '2000-07-22', 'B-', 'New Zealand'),
    ('Sophie', 'Moore', 22, 'A', 'English', 'sophie.moore@example.com', '2002-12-05', 'A+', 'USA'),
    ('Mia', 'Hernandez', 20, 'C', 'History', 'mia.hernandez@example.com', '2004-05-18', 'AB-', 'Canada'),
    ('James', 'Young', 21, 'B', 'Biology', 'james.young@example.com', '2003-02-08', 'O-', 'UK'),
    ('Emma', 'Gonzalez', 24, 'A', 'Physics', NULL, '1999-09-30', 'B+', 'Australia'),
    ('Miam', 'Wright', 19, 'C', 'Math', 'liam.wright@example.com', '2002-06-14', 'A+', 'New Zealand');


SELECT * FROM students;


SELECT email, age, blood_group FROM students

--? RENAME A COLUMN
SELECT email  as "Student Email" FROM students



--? sort with ORDER BY

SELECT * FROM students ORDER BY last_name ASC

SELECT * FROM students ORDER BY age DESC

SELECT * FROM students ORDER BY dob DESC

-- to see all the countries sorted by country name
SELECT country from students ORDER BY country ASC;

-- to see how many unique blood_group names.
SELECT DISTINCT blood_group from students;


--? data filtering

--? select students from country USA
SELECT * from students WHERE COUNTRY = 'USA';

--? select students having grad A and enrolled in Physics
SELECT * from students WHERE grade = 'A' and course = 'Physics';

--? select students having blood_group A+
SELECT * from students where blood_group = 'A+';

--? select students from country USA OR Australia
SELECT * from students where country = 'USA' OR country = 'Australia';

--? select students from country USA OR Australia and age is 20
SELECT * FROM students
WHERE (country = 'USA' OR country = 'Australia') AND age = 20;

--?? select students whose age is greater than 20 and course is History
SELECT * FROM students
WHERE age >= 20;

--?? select students whose age is less than 20 or equal to 20
SELECT * FROM students
WHERE age <= 20;

--? select students whose age is not equal to 20
SELECT * FROM students WHERE age <> 20;

SELECT * FROM students;

--? first_name in uppercase
SELECT upper(first_name) as first_name_in_uppercase, * FROM students;

SELECT concat(first_name, ' ', last_name)   FROM students;


/*
! scalar functions:
? UPPER() Converts a string in uppercase
? LOWER() Converts a string to lower case
? CONCAT() Concatenates two or more strings
? LENGTH() returns number of characters in a string

! Aggregate functions
? AVG() Calculates the average of a set of values
? MAX() Returns the max value in a set
? MIN() Returns the min value in a set
? SUM() Calculates the sum of values in a set
? COUNT() Counts the number of rows in a set
*/

SELECT length(first_name) from students;

SELECT avg(age) from students;

select max(age) from students;

select sum(age) from students;

select count(*) from students;

select max(length(first_name)) from students;

-- ? keyword NOT to negate the query result
SELECT * FROM students
WHERE NOT country = 'USA';


-- ? NULL is a special marker used in SQL to indicate that a data value does not exist in the database.

-- ? IS operator is used to test for NULL values
SELECT * FROM students
WHERE email IS NULL;

SELECT * FROM students;

-- ? show a default value where value is NULL using COALESCE function
SELECT COALESCE(email, 'Email not provided') as "Email"  FROM students ;


-- ? IN operator to specify multiple values in a WHERE clause
SELECT * FROM students 
WHERE country = 'USA' or country = 'UK' or country = 'Canada';
SELECT * FROM students 
WHERE country IN ( 'USA' , 'UK' , 'Canada');
SELECT * FROM students 
WHERE country NOT IN ( 'USA' , 'UK' , 'Canada');

-- ? BETWEEN operator to select values within a range
SELECT * FROM students 
WHERE age BETWEEN 19 AND 21;

SELECT * FROM students 
WHERE dob BETWEEN '2000-01-01' AND '2005-01-01' ORDER BY dob;

-- ? LIKE operator for pattern matching
SELECT * FROM students
WHERE first_name LIKE '__a%';

-- ? ILIKE operator for case insensitive matching
SELECT * FROM students
WHERE first_name ILIKE 'a%';


-- ? LIMIT clause to specify the number of records to return

SELECT * FROM students LIMIT 5


SELECT * FROM students 
WHERE country IN ( 'USA' , 'UK' , 'Canada') LIMIT 5;


-- ? Offset clause to specify the number of records to skip
SELECT * FROM students 
WHERE country IN ( 'USA' , 'UK' , 'Canada') OFFSET 5;

SELECT * FROM students LIMIT 5 OFFSET 5 * 2;





--? DELETE records from the table
DELETE FROM students 
WHERE grade = 'C' and country='USA';


SELECT * FROM students
WHERE  country='USA';

SELECT * FROM students;


--? Update records in the table
UPDATE students SET email ='default@email.com', age=30
WHERE student_id= 25;

