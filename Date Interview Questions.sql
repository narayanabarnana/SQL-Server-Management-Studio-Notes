select * from dateEmployees

Create Table dateInterviewEmployees
(
       ID int identity primary key,
       Name nvarchar(50),
       DateOfBirth DateTime
)

Insert Into dateInterviewEmployees Values ('Tom', '2018-11-19 10:36:46.520')
Insert Into dateInterviewEmployees Values ('Sara', '2018-11-18 11:36:26.400')
Insert Into dateInterviewEmployees Values ('Bob', '2017-12-22 10:40:10.300')
Insert Into dateInterviewEmployees Values ('Alex', '2017-12-30 9:30:20.100')
Insert Into dateInterviewEmployees Values ('Charlie', '2017-11-25 7:25:14.700')
Insert Into dateInterviewEmployees Values ('David', '2017-10-09 8:26:14.800')
Insert Into dateInterviewEmployees Values ('Elsa', '2017-10-09 9:40:18.900')
Insert Into dateInterviewEmployees Values ('George', '2018-11-15 10:35:17.600')
Insert Into dateInterviewEmployees Values ('Mike', '2018-11-16 9:14:17.600')
Insert Into dateInterviewEmployees Values ('Nancy', '2018-11-17 11:16:18.600')

select * from dateInterviewEmployees

--Write a SQL query to retrieve all people who are born on a given date (For example, 9th October 2017)

select Name, DateOfBirth , CAST(DateOfBirth as date) as [DatePart] from dateInterviewEmployees
where CAST(DateOfBirth as date) = '2017-10-09'

--Write a SQL query to retrieve all people who are born on the same day and month excluding the year (For example, 9th October)

select Name, DateOfBirth , CAST(DateOfBirth as date) as [DatePart] from dateInterviewEmployees
where CAST(DateOfBirth as date) between '2017-11-01' AND '2017-12-31'

--Write a SQL query to retrieve all people who are born on the same day and month excluding the year (For example, 9th October) 

select  Name, DateOfBirth , CAST(DateOfBirth as date) from dateInterviewEmployees
where DAY(DateOfBirth) = 09 and MONTH(DateOfBirth) = 10

--Write a SQL query to get all people who are born in a given year (Example, all people born in the year 2017) 

select Name, DateOfBirth , CAST(DateOfBirth as date) from dateInterviewEmployees
where YEAR(dateofbirth) = 2017

select CAST(GETDATE() AS date) 

SELECT DATEADD(DAY , -1 , CAST(GETDATE() AS date)) AS YESTERDAYDATE

SELECT NAME, DATEOFBIRTH , CAST(DATEOFBIRTH  AS date) as [datepart]
From dateInterviewEmployees
where CAST(DateOfBirth AS date) = DATEADD(DAY , -1 , CAST(GETDATE() AS date)) 

