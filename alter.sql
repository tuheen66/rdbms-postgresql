-- Active: 1784407434089@@127.0.0.1@5432@ph
select * from person2;

alter table person2
add column email varchar(25) default 'default@email.com' not null;

alter table person2
drop column email;

insert into person2 values(8, 'test2', 45, 'test2@email.com');

alter table person2 
rename column age to user_age;

alter table person2 
alter column user_name type varchar(50);

alter table person2 
alter column user_age set not null;

alter table person2 
alter column user_age DROP NOT NULL;

alter table person2 
drop constraint unique_person2_user_age ;



