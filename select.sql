CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);

DROP TABLE students;

INSERT INTO
    students (
        first_name,
        last_name,
        age,
        grade,
        course,
        email,
        dob,
        blood_group,
        country
    )
VALUES (
        'John',
        'Doe',
        20,
        'A',
        'Math',
        'john.doe@example.com',
        '2004-01-15',
        'O+',
        'USA'
    ),
    (
        'Jane',
        'Smith',
        21,
        'B',
        'History',
        'jane.smith@example.com',
        '2003-05-20',
        'A-',
        'Canada'
    ),
    (
        'Alice',
        'Johnson',
        19,
        'A',
        'Physics',
        'alice.johnson@example.com',
        '2002-11-08',
        'B+',
        'UK'
    ),
    (
        'Bob',
        'Williams',
        22,
        'C',
        'Chemistry',
        'bob.williams@example.com',
        '2001-07-03',
        'AB-',
        'Australia'
    ),
    (
        'Charlie',
        'Brown',
        20,
        'B',
        'English',
        NULL,
        '2004-03-30',
        'A+',
        'New Zealand'
    ),
    (
        'Emman',
        'Jones',
        23,
        'B',
        'Biology',
        'emma.jones@example.com',
        '2000-09-12',
        'A-',
        'USA'
    ),
    (
        'Michael',
        'Johnson',
        22,
        'C',
        'Physics',
        'michael.johnson@example.com',
        '2002-04-05',
        'O-',
        'Canada'
    ),
    (
        'Olivia',
        'Davis',
        21,
        'A',
        'Math',
        'olivia.davis@example.com',
        '2003-12-18',
        'B-',
        'UK'
    ),
    (
        'William',
        'Taylor',
        20,
        'B',
        'Chemistry',
        NULL,
        '2004-08-30',
        'A+',
        'Australia'
    ),
    (
        'Sophia',
        'Brown',
        24,
        'A',
        'English',
        'sophia.brown@example.com',
        '1999-06-25',
        'AB+',
        'New Zealand'
    ),
    (
        'Liam',
        'Miller',
        19,
        'C',
        'History',
        'liam.miller@example.com',
        '2002-02-10',
        'A-',
        'USA'
    ),
    (
        'Ava',
        'Anderson',
        22,
        'B',
        'Biology',
        'ava.anderson@example.com',
        '2000-11-15',
        'B+',
        'Canada'
    ),
    (
        'Noah',
        'Martinez',
        21,
        'A',
        'Physics',
        NULL,
        '2001-04-28',
        'O+',
        'UK'
    ),
    (
        'Isabella',
        'Clark',
        20,
        'C',
        'Chemistry',
        'isabella.clark@example.com',
        '2003-10-03',
        'A-',
        'Australia'
    ),
    (
        'Ethan',
        'Garcia',
        23,
        'B',
        'Math',
        'ethan.garcia@example.com',
        '2000-07-22',
        'B-',
        'New Zealand'
    ),
    (
        'Sophie',
        'Moore',
        22,
        'A',
        'English',
        'sophie.moore@example.com',
        '2002-12-05',
        'A+',
        'USA'
    ),
    (
        'Mia',
        'Hernandez',
        20,
        'C',
        'History',
        'mia.hernandez@example.com',
        '2004-05-18',
        'AB-',
        'Canada'
    ),
    (
        'James',
        'Young',
        21,
        'B',
        'Biology',
        'james.young@example.com',
        '2003-02-08',
        'O-',
        'UK'
    ),
    (
        'Emma',
        'Gonzalez',
        24,
        'A',
        'Physics',
        NULL,
        '1999-09-30',
        'B+',
        'Australia'
    ),
    (
        'Miam',
        'Wright',
        19,
        'C',
        'Math',
        'liam.wright@example.com',
        '2002-06-14',
        'A+',
        'New Zealand'
    );

SELECT * FROM students;

SELECT email, age, blood_group FROM students;

SELECT email as "Student Email" from students;
--? Select email column and rename it as "Student Email - aliasing"

SELECT * FROM students ORDER BY dob ASC;

SELECT DISTINCT blood_group FROM students;
--? Select distinct (removes duplicate) blood groups from students table

SELECT * FROM students WHERE grade = 'A' AND course = 'Physics';
--? Select students with grade A and enrolled in Physics course

SELECT * FROM students WHERE blood_group = 'A+';
--? Select students with blood group A+

SELECT * FROM students WHERE age > 18 and course = 'Physics';
--? Select students older than 18 and enrolled in Physics course

SELECT *
FROM students
WHERE (
        country = 'USA'
        OR country = 'Australia'
    )
    and age = 20;
--? Select students from USA or Australia with age 20

SELECT UPPER(first_name) as "First Name in uppercase", *
FROM students;
--? Convert first_name to uppercase

SELECT concat(first_name, ' ', last_name) as "Fullname"
FROM students;
--? Concatenate first_name and last_name to create a full name

-- ?scaler function

SELECT length(first_name) FROM students;
--? Get the length of first_name

-- ?aggregate function

SELECT min(age) from students;
--? minimum age

SELECT SUM(age) from students;
--? sum of all ages

SELECT count(*) from students;
--? count all rows

SELECT max(length(first_name)) from students;
--? character length of first_name

SELECT * FROM students WHERE country <> 'USA';
--? not equal to 'USA'

SELECT * FROM students WHERE NOT country = 'USA';
--? Not equal to 'USA'

SELECT * FROM students WHERE email is NULL;
--? email is null

SELECT * FROM students WHERE email IS NOT NULL;
--? email is not null

SELECT COALESCE(email, 'Email not provided') as "Email"
from students;
--? Provide a default value for null emails

SELECT *
FROM students
WHERE
    country = 'USA'
    OR country = 'Canada'
    OR country = 'UK' --? OR OPERATOR

SELECT * FROM students WHERE country IN ('USA', 'Canada', 'UK');
--? in operator, only in these countries

SELECT * FROM students WHERE country NOT IN ('USA', 'Canada', 'UK');
--? not in these countries

SELECT * FROM students WHERE age BETWEEN 19 and 22;
--? Between operator, age between 19 and 22

SELECT *
FROM students
WHERE
    dob BETWEEN '2000-01-01' AND '2005-01-01'
ORDER BY dob DESC;
--? Between operator, dob between 2000-01-01 and 2005-01-01, ordered by dob in descending order

SELECT * from students where first_name like '%am';
--? like operator, first_name ends with 'am'

SELECT * from students where first_name like 'A%';
--? like operator, first_name starts with 'A'

SELECT * from students where first_name like '___a%';
--? like operator, first_name has 'a' as the fourth character

SELECT * from students where first_name like '___a_';
--? like operator, first_name has 'a' as the fourth character and has a total of 5 characters

SELECT * from students where first_name ilike 'a%';
--? ilike operator, first_name starts with 'a' (case-insensitive)

-- LIMIT | OFFSET

select * from students limit 5 offset 5;
--? limit to 5 rows and offset by 5 rows

SELECT * FROM students LIMIT 5;
--? limit to 5 rows

select *
from students
where
    country in ('USA', 'UK', 'Canada')
limit 5;
--? limit to 5 rows where country is USA, UK, or Canada

select * from students limit 5 offset 5 * 2;
--? limit to 5 rows and offset by 10 rows (5 * 2)

select * from students where country = 'USA';
--? select students from USA

delete from students where grade = 'B';
--? delete students with grade B

delete from students where grade = 'C' and country = 'USA';
--? delete students with grade C and country USA

select * from students;

update students
set
    email = 'default@example.com'
where
    student_id = 13;

update students
set
    email = 'default@example.com', age=25
where
    student_id = 13;
--? update email and age for student with student_id 13





