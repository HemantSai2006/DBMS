-- drop table student;
create table student(
    student_id int PRIMARY key,
    name varchar2(50)
);

create table enrollment(
    student_id int,
    course VARCHAR2(50),
    PRIMARY key(student_id,course),
    foreign key(student_id) references student(student_id)
);

create table marks(
    student_id int,
    score int,
    foreign key(student_id) references student(student_id)
);

insert into student(student_id,name) VALUES
(1,'Alice'),(2,'Bob'),(3,'Charlie'),(4,'David'),(5,'Eve');
select *from student;

insert into enrollment(student_id,course) values 
(1,'Mathematics'),(2,'Physics'),(3,'Chemistry');
select *from enrollment;

insert into marks(student_id,score) values
(1,85),(3,90),(4,75);
select *from marks;

select name
from student S
where s.STUDENT_ID in (select STUDENT_ID from enrollment)

UNION
select NAME
from student S
where s.student_id in (select student_id from marks);