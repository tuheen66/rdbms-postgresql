SELECT * FROM students;

SELECT country, count(*), avg(age) FROM students GROUP BY country;
--? group by country, returns unique countries
--! Split, apply, Combine (SAC) pattern, group by splits the data into groups based on the country column, then applies the count function to each group, and finally combines the results into a single output.

SELECT country, avg(age)
FROM students
GROUP BY
    country
having
    avg(age) > 20.6;
--? group by country, returns unique countries with average age greater than 20.6

SELECT extract(
        year
        from dob
    ) as birth_year, count(*)
FROM students
GROUP BY
    birth_year;
--? group by birth year, returns unique birth years and the count of students born in each year


