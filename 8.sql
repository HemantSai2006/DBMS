create table employeees(
    emp_id int PRIMARY key,
    name VARCHAR2(50),
    dept VARCHAR2(30),
    salary decimal(10,2)
);

insert into employeees(emp_id,name,dept,salary) values
(1,'Alice','IT',5000),
(2,'Bob','HR',3500),
(3,'Charlie','IT',4500),
(4,'David','Finance',3000),
(5,'Eve','IT',6000);

SELECT *from employeees;

update EMPLOYEEES
set salary = salary*1.10
where dept = 'IT';

select *from employeees;