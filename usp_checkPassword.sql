--Create database called "Mydb11"
--1) Create users’ relation that contains (user_id, password)
--2) Insert 3 tuples with single insert statement.
--3) Create a stored procedure called checkPassword accepts username and password as a parameter, then return true if 
--   username and password exists in table users.
--4) Test your Stored Procedure.

create database Mydb11
use Mydb11

create table users (user_id int, password int)

insert into users values (1,111),
						 (2,222),
						 (3,333)

CREATE PROCEDURE checkPassword
	
	@userName int,
	@pass int
AS
BEGIN
	SET NOCOUNT ON;

	print 'true' where 
END
GO
