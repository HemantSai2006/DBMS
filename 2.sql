-- drop table students;
create table students(
    student_id int PRIMARY key,
    name varchar2(50)
);
-- drop table courses CASCADE CONSTRAINT;
create table courses(
    course_id int PRIMARY key,
    course_name varchar2(50)
);

create table enrollments(
    student_id int,
    course_id int,
    PRIMARY key(student_id,course_id),
    foreign key(student_id) REFERENCES students(student_id),
    foreign key(course_id) references courses(course_id)
);

insert into students values(1,'Alice');
insert into students values(2,'Bob');
insert into students values(3,'Charlie');

select *from students;

insert into courses(course_id,course_name) VALUES
(101,'Mathematics'),(102,'Physics'),(103,'Chemistry');

select *from courses;

insert into enrollments(student_id,course_id) VALUES
(1,101),(1,102),(2,103),(3,101),(3,103);

select *from ENROLLMENTS;

SELECT s.name as student_name,c.course_name
from students s
join enrollments e
on s.student_id = e.student_id
join courses C
on e.course_id = c.course_id
order by s.name,c.course_name;

