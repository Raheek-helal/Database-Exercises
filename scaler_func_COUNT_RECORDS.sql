--Create database called "Mydb3"
--5) Create Persons relation that contains (person_id, person_name, birthdat, address)
--6) Insert 3 tuple with single insert statement.
--7) Create a scalar function that returns number of Persons-on-Persons relation.
--8) Call your function.

create database Mydb4
use Mydb4

DROP TABLE persons
create table persons (person_id int, person_name varchar(50), birthdate date, address varchar(50))

insert into persons values (1,'raheek','2003-7-8', 'mans'),
				   (2, 'areej', '1996-11-27','cairo'),
				   (3,'ayman', '1966-12-27','mans')

CREATE FUNCTION dbo.getNumber()
returns int
as
begin
 return (select COUNT(person_id) from persons)
end

select dbo.getNumber()