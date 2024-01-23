--Create database called "Mydb8"
--1) Create Students relation that contains (student_id, student _name, age, address)
--2) Insert 3 tuples with single insert statement.
--3) Create a trigger on students table after update print "Data Updated successfully"
--4) Test your Trigger.

create database Mydb9
use Mydb9

create table students (std_id int, std_name varchar(50), age int, addr varchar(50))

insert into students values (1, 'raheek', 20, 'mans'),
							(3, 'raheek', 20, 'mans'),
							(2, 'raheek', 20, 'mans')


CREATE TRIGGER afterUpdate
   ON  students
   AFTER UPDATE
AS 
BEGIN
	SET NOCOUNT ON;

	print 'Data Updated successfully'

END
GO

update students set std_name = 'osama' where std_id = 2