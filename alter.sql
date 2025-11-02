-- Active: 1747754381502@@127.0.0.1@5432@ph

SELECT * from person2;


-- adding a row  with a default value of email
ALTER TABLE person2
ADD COLUMN email VARCHAR(25) default 'default@email.com' not null;


-- adding a new row data
INSERT INTO person2 values(7, 'test', 45);


--adding a row with a value of email
INSERT INTO person2 values(8, 'test2', 45, 'test2@email.com');


--deleting a column
ALTER TABLE person2
DROP COLUMN email;


-- changing name of the column
ALTER TABLE person2
RENAME COLUMN age to user_age
 

--  changing type of column
ALTER TABLE person2
alter COLUMN user_name type VARCHAR(50)


--  setting constraint
ALTER TABLE person2
    alter COLUMN user_age set NOT NULL


-- removing a constraint
ALTER TABLE person2
alter COLUMN user_age DROP NOT NULL


-- adding a constraint
ALTER TABLE person2
    ADD constraint unique_person2_user_age UNIQUE(user_age)

    -- drop a constraint
ALTER TABLE person2
    DROP constraint unique_person2_user_age


-- delete data but keep the table structure
TRUNCATE table person2


-- delete table
drop table person2


