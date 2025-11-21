-- drop table employee;
create table employee(
    emp_id int PRIMARY key,
    name VARCHAR2(50),
    salary decimal(10,2)
);

insert into employee(emp_id,name,salary) VALUES
(1,'Alice',5000),(2,'Bob',3500),(3,'Charlie',4500),(4,'David',3000),(5,'Eve',6000);

select *from employee;

create view high_salary AS
select name,salary from EMPLOYEE
where salary > 4000;

select *from high_salary;