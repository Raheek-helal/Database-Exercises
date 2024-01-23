--Create database called "Mydb3"
--1) Create Persons relation that contains (person_id, person_name, birthdat, address)
--2) Insert 3 tuple with single insert statement.
--3) Create a table- valued function called getPersons() that return 'emp' table.
--4) Call your function (only show person_name).

create database Mydb3
use Mydb3

create table persons (person_id int, person_name varchar(50), birthdate date, address varchar(50))

insert into persons values (1,'raheek','2003-7-8', 'mans'),
				   (2, 'areej', '1996-11-27','cairo'),
				   (3,'ayman', '1966-12-27','mans')


create function getPerson()
returns table
as
 return (select person_name from persons)

select * from getPerson()