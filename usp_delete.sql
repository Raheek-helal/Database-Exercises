--Create database called "Mydb5"
--1) Create Persons relation that contains (person_id, person_name, birthdat, address)
--2) Insert 3 tuples with single insert statement.
--3) Create stored procedure used to delete a tuple from Person’s relation.
--4) Call your SP, then display the Persons table.

create database Mydb5
use Mydb5

create table persons (persons_id int, persons_name varchar(50), birthdate date, address varchar(50))

insert into persons values(1, 'raheek', '2003-7-8', 'mans'),
						  (2, 'osama', '2005-6-18', 'mans'),
						  (3, 'areej', '1996-7-8', 'mans')


CREATE PROC usp_del
(@id int)
as 
delete from persons where persons_id = @id


EXEC usp_del 3

select * from persons