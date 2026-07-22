show timezone;
--? Show the current timezone

-- timestamp

select now();

create table timeZ (
    ts Timestamp without time zone,
    tsz timestamp with time zone
)

insert into
    timeZ
values (
        '2024-01-12 10:45:00',
        '2024-01-12 10:45:00'
    )

select * from timeZ;

select current_date;

SELECT now()::date;
--? current date

SELECT now()::time;
--? current time

SELECT to_char(now(), 'DD-MM-YYYY');
--? current date in DD-MM-YYYY format
--! search in Postgres documentation for more date formatting options

SELECT to_char(now(), 'DDD');
--? day of the year

--! INTERVAL

SELECT CURRENT_DATE - INTERVAL '1 year';
--? current date minus 1 year

SELECT CURRENT_DATE - INTERVAL '1 year 2 months';
--? current date minus 1 year and 2 months

SELECT age (CURRENT_DATE, '1965-08-14');
--? age between current date and 1965-08-14

SELECT *, age (CURRENT_DATE, DOB) FROM students;
--? age between current date and DOB for each student

SELECT extract( year from '2026-07-21'::date );
--? extract year from a date

SELECT extract( day from '2026-07-21'::date );
--? extract day from a date


