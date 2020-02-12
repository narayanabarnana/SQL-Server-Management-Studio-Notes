--isDate() - checks if the given value is a valid date, time , or datetime. Returns 1 for success and 0 for failure

select GETDATE()

select SYSDATETIME()

select ISDATE('Narayana')  --output 0
select ISDATE(GETDATE())   --output 1
select ISDATE('2019-03-07 21:03:32.710')  -- output 1
select ISDATE('2019-03-07 21:03:32.7101345')  --output 0

select DAY(GETDATE())
select MONTH(getdate())
select YEAR(GETDATE())

select DATENAME(weekday,GETDATE()) -- output thursday
select DATENAME(year, GETDATE()) --output 2019
select DATENAME(month,GETDATE())  --output March
select DATENAME(week, GETDATE())  

select DATEPART(Month, GETDATE())  -- returns 3
select DATENAME(Month,getDate())   -- returns march

select DATEADD(Day, 10,getdate())  --current date is 2019-03-07 21:20:56.033  and the output of this query is 2019-03-17 21:20:15.393
select DATEADD(Day, -10,getdate()) --current date is 2019-03-07 21:20:56.033  and the output of this query is 2019-02-25 21:21:27.177

select DATEDIFF(month, GETDATE() , '11/8/2019')  --output 8 (8 months difference format mm/d/yyyy)
select DATEDIFF(day,'12/4/1991' , GETDATE())


CREATE FUNCTION fnComputeAge(@DOB DATETIME)
RETURNS NVARCHAR(50)
AS
BEGIN

DECLARE @tempdate DATETIME, @years INT, @months INT, @days INT
SELECT @tempdate = @DOB

SELECT @years = DATEDIFF(YEAR, @tempdate, GETDATE()) - 
CASE 
WHEN (MONTH(@DOB) > MONTH(GETDATE())) OR (MONTH(@DOB) = MONTH(GETDATE()) AND DAY(@DOB) > DAY(GETDATE())) 
THEN 1 ELSE 0 END
SELECT @tempdate = DATEADD(YEAR, @years, @tempdate)

SELECT @months = DATEDIFF(MONTH, @tempdate, GETDATE()) - 
CASE WHEN DAY(@DOB) > DAY(GETDATE()) 
THEN 1 ELSE 0 END
SELECT @tempdate = DATEADD(MONTH, @months, @tempdate)

SELECT @days = DATEDIFF(DAY, @tempdate, GETDATE())

DECLARE @Age NVARCHAR(50)
SET @Age = Cast(@years AS  NVARCHAR(4)) + ' Years ' + Cast(@months AS  NVARCHAR(2))+ ' Months ' +  Cast(@days AS  NVARCHAR(2))+ ' Days Old'
RETURN @Age

End


Select Id, Name, DateOfBirth, dbo.fnComputeAge(DateOfBirth) as Age from dateEmployees

select * from employees

create table dateEmployees(

id int primary key,
Name nvarchar(50) ,
DateOfBirth smalldatetime
)

select * from dateEmployees

insert into dateEmployees values(1,'Sam','1980-12-30 00:00:00:000')
insert into dateEmployees values(2,'Pam','1982-09-01 00:02:36:260')
insert into dateEmployees values(3,'John','1985-08-22 00:03:00:000')
insert into dateEmployees values(4,'Sara','1987-11-29 00:00:00:000')
insert into dateEmployees values(5,'Nara','1991-12-04 00:00:00:000')


--cast(column name As datatype) exmaple
select id,name,dateofbirth , cast(DateofBirth as nvarchar ) as convertedDOB from dateEmployees 

--convert(datatype to convert, column name, [style])  style is optional
select id,name, dateofbirth , CONVERT(nvarchar, DateofBirth,103) as convertedDOB from dateEmployees

