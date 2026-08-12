select * from students;

insert into students (first_name, last_name, age, grade, course, email, dob, blood_group, country ) values('monirul', 'hassan', '50', 'A', 'Physics', '', '2005-08-14', 'O+', 'USA') 

select coalesce (email, 'Not provided'), * from students
--? coalesce returns value where it gets NULL 

