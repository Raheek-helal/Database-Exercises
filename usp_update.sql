--Create database called "Mydb4"
--1) Create Persons relation that contains (person_id, person_name, birthdat, address)
--2) Insert 3 tuples with single insert statement.
--3) Create stored procedure used to update Person’s relation.
--4) Call your SP, then display the Persons table.



create database Mydb4
use Mydb4

DROP TABLE persons
create table persons (person_id int, person_name varchar(50), birthdate date, address varchar(50))

insert into persons values (1,'raheek','2003-7-8', 'mans'),
						   (2, 'areej', '1996-11-27','cairo'),
						   (3,'ayman', '1966-12-27','mans')

CREATE PROC usp_update
(@person_id int,@person_name varchar(50), @birthdate date, @address varchar(50))
as
update persons set person_name = @person_name , birthdate = @birthdate, address = address 
where  person_id = @person_id

exec usp_update 2, 'mrooj', '1998-6-27','mans'

select * from persons