--Create database called "Mydb2"
--1) Create students’ relation that contains (student_id, student _name, degree, address)
--2) Insert 3 tuples with single insert statement.
--3) Create a scalar function to get sum of degree of all students.
--4) Call your function.
create database Mydb2
use Mydb2

create table students (student_id int, student_name varchar(50), degree int, address varchar(50))

insert into students values(1, 'raheek', 99, 'mans'),
						   (2, 'osama', 100, 'mans'),
						   (3, 'jana', 100, 'cairo')

create function dbo.getsum(@degree int)
returns int
as 
begin 
 declare @sum int
 select @sum = sum(@degree) 
 return @sum
end

select dbo.getsum(degree) from students
