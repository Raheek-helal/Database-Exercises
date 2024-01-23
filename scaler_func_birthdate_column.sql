create database mydb
use mydb

create table person (p_id int, p_name varchar(50), birthdate date, address varchar(50))

insert into person values(1, 'raheek', '2003-8-7', 'mans'),
						 (2, 'mrooj', '1998-6-27', 'mans'),
						 (3, 'huda', '1972-9-25', 'cairo')

create function dbo.getag(@birthdate date)
returns int
AS
begin 
 declare @age int
 select @age = DATEDIFF(year, @birthdate, Getdate())
 return @age
end

select p_name, dbo.getag(birthdate) from person