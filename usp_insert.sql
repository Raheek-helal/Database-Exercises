--Create database called "Mydb2"
--1) Create an emp relation that contains (emp_id, emp_name, salary, address).
--2) Create procedure used for inserting tuples in relation (if not exists).
--3) Test your Stored Procedure by inserting a new tuple in a relation.

use Mydb2 
create table emp (emp_id int, emp_name varchar(50), salary int, address varchar(50))

CREATE PROCEDURE usp_insert
(@emp_id int, @name varchar(50), @salary int, @address varchar(50))
as
insert into emp values (@emp_id, @name , @salary, @address)

exec usp_insert 1,'raheek', 20000, 'mans'

select * from emp