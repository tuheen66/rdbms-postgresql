SELECT * FROM students;


SELECT country, COUNT(*), AVG(age) FROM students
GROUP BY country;

--? Filter Groups Using HAVING to Show Only Countries with Average Age Above 20.60
SELECT country,  AVG(age) FROM students
GROUP BY country
HAVING AVG(age) > 20.60;


--? Count Students Born in Each Year

SELECT extract(year from dob) as birth_year, count(*) 
FROM students
GROUP BY birth_year;


