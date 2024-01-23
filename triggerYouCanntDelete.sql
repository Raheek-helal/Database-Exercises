--Create database called "Mydb7"
--1) Create Students relation that contains (student_id, student _name, age, address)
--2) Insert 3 tuples with single insert statement.
--3) Create a trigger on students table instead of delete print "You cannot delete"
--4) Test your Trigger.

create database Mydb5
use Mydb5


create table person (p_id int, p_name varchar(50), birthdate date, address varchar(50))

insert into person values(1, 'raheek', '2003-8-7', 'mans'),
						 (2, 'mrooj', '1998-6-27', 'mans'),
						 (3, 'huda', '1972-9-25', 'cairo')


CREATE TRIGGER YouCannotDel
   ON  Person
   instead of delete
AS 
BEGIN
	print 'you cannot delete'
END
GO


delete from person

select * from person