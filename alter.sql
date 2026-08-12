-- Active: 1786345408006@@127.0.0.1@5432@postgres


create table person(

person_id SERIAL,
first_name varchar(50),
last_name varchar(50),
age INTEGER,
is_active boolean,
dob DATE

)


 create table person2(
id serial primary key,
usr_name VARCHAR(20) not null,
age integer check (age>=18)

)

create table person3(
id serial ,
usr_name VARCHAR(20) not null unique ,
age integer check (age>=18),
primary key(id)

)

INSERT INTO person2 (usr_name, age) VALUES
('Rahim', 25),
('Karim', 30),
('Hasan', 22),
('Jamal', 28),
('Rafiq', 35),
('Sakib', 24),
('Nabil', 27),
('Tanvir', 31),
('Fahim', 19),
('Arif', 40),
('Imran', 26),
('Sohel', 33),
('Shakil', 21),
('Mahmud', 29),
('Rony', 37),
('Sumon', 23),
('Bashir', 45),
('Nasir', 32),
('Rubel', 20),
('Mizan', 38);



select * from person2;

alter table person2
add column email varchar(25) default 'default@email.com' not null;

alter table person2
drop column email;

insert into person2 values(21, 'test2', 45, 'test2@email.com');

alter table person2 
rename column age to user_age;

alter table person2 
alter column user_name type varchar(50);

alter table person2 
alter column user_age set not null;


--* table level constraint
alter table person2 
alter column user_age DROP NOT NULL; --? drop constraint

alter table person2 
drop constraint unique_person2_user_age ; --? drop constraint

alter table person2
add constraint pk_person2_id primary key(id)

