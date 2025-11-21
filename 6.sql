-- drop table employees;
create table employees(
    emp_id int PRIMARY key,
    name VARCHAR2(50),
    salary decimal(10,2)
);

insert into employees(emp_id,name,salary) values 
(1,'Alice',5000),(2,'Bob',3500),(3,'Charlie',4500),(4,'David',3000),(5,'Eve',6000);

select *from employees;

select name,salary
from EMPLOYEES
where salary = (select max(salary) from employees);

