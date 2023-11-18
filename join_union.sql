drop table if exists student;
create table student (
	student_id varchar(15) primary key,
	student_fname varchar(30),
	student_lname varchar(30),
	student_minitial varchar(1),
	student_address varchar(50),
	student_birthdate date,
	student_dept varchar(10)
);

drop table if exists professor;
create table professor (
	prof_id varchar(15) primary key,
	prof_fname varchar(30),
	prof_lname varchar(30),
	prof_minitial varchar(1),
	prof_address varchar(50),
	prof_birthdate date,
	prof_dept varchar(10)
);

drop table if exists course;
create table course (
	course_id varchar(10) primary key,
	course_name varchar(100),
	course_dept varchar(10),
	course_code int
);

drop table if exists class;
create table class (
	class_student varchar(15),
	class_course varchar(10),
	class_instructor varchar(15),
	primary key (class_course, class_instructor)
);

insert into student values (020220410010000, "Juan", "Dela Cruz", "A", "Quezon City", '1998-11-01', "CICS");
insert into professor values (020230101010000, "Alfonzo", "Azucenas", "A", "Quezon City", '1997-11-07', "CICS");
insert into course values ("ICS-2608", "Information Management", "CICS", 2608);
insert into class values (020220410010000, "ICS-2608", 020230101010000);
insert into student values (020220101010001, "Alfonzo", "Azucenas", "A", "Quezon City", '1997-11-07', "Letters");

select
	student_id _id,
	student_fname fname,
	student_minitial initial,
	student_lname lname,
	student_dept dept
from student
union
select
	prof_id _id,
	prof_fname fname,
	prof_minitial initial,
	prof_lname lname,
	prof_dept dept
from professor;

select 
	student_dept dept
from student s
union all
select
	prof_dept dept
from professor p;

select s.*, p.* from student s
left join professor p
on s.student_dept = p.prof_dept;

select s.*, p.* from student s
right join professor p
on s.student_dept = p.prof_dept;

select s.*, p.* from student s
join professor p
on s.student_dept = p.prof_dept;

select s.*, p.* from student s
full outer JOIN professor p
on s.student_dept = p.prof_dept
