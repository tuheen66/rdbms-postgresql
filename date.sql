SHOW timezone;

--?  date time - timestamp
SELECT now();

-- ? with time zone and without time sone
CREATE table timeZ (ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);

INSERT into timeZ VALUES ('2024-01-12 10:45:00','2024-01-12 10:45:00')

SELECT * from timeZ;

--?  gives only date
SELECT CURRENT_DATE;

-- ? casting
SELECT now():: date;
SELECT now():: time;

-- ?Converts time stamp to string according to the given format.
SELECT to_char(now(), 'dd-mm-yyyy');

-- ? shows current month
SELECT to_char(now(), 'Month');


-- ? shows date 1 year before current date ( can be with month)
SELECT CURRENT_DATE - INTERVAL '1 year';

-- ? to calculate age from current date
SELECT age(CURRENT_DATE, '1965-08-14');


SELECT *, age(CURRENT_DATE, dob) from students; 


-- ? extract day, month or year from date
select extract(month from '2025-06-02':: date);

SELECT 'n':: BOOLEAN;





