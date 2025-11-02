
SELECT * from employees

explain ANALYSE
SELECT * from employees WHERE employee_name = 'Mia Roberts'

CREATE INDEX idx_employee_name
on employees (employee_name);

drop index idx_employee_name;