--Table valued function
use MYDB1

create table Employee(id int, name varchar(50), birth date)
insert into Employee values (1,'ahmed', '1990-3-30'),
						 (1,'ali', '1996-3-30'),
						 (1,'khaled', '2000-5-30')
CREATE FUNCTION fnGetEmployee()
RETURNS TABLE
AS
RETURN (Select * from Employee) 

select * from fnGetEmployee()