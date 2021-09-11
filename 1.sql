use himank;

create table student(
	student_id int auto_increment,
    name varchar(25) ,
    major varchar(25),
    primary key(student_id)
);

describe student;

drop table student;

alter table student add gpa decimal(3,2);

alter table student drop column gpa;

select * from student;

SET SQL_SAFE_UPDATES = 0;

insert into student(name,major) values('Jack','Biology');
insert into student(name,major)  values('Kate','Sociology');
insert into student(name,major)  values('Claire','Chemistry');
insert into student(name,major)  values('Jack','Biology');
insert into student(name,major)  values('Mike','Computer Science');

update student set major='Biochemistry' where major = 'Bio'  or major='Chemistry';

update student set name='Tom', major = 'undecided' where student_id=1;

delete from student where student_id=1;

delete from student;

select student.name,student.major from student ;

select * from student order by student_id desc;

select * from student order by major,student_id desc;

select * from student order by student_id limit 2;

select name, major from student where student_id<3;

select * from student where major in ('Biology','Chemistry') and student_id>2;
