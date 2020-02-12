Create Table InterviewDepartments
(
     DepartmentID int primary key,
     DepartmentName nvarchar(50)
)

Create Table InterviewEmployees
(
     EmployeeID int primary key,
     EmployeeName nvarchar(50),
     DepartmentID int foreign key references InterviewDepartments(DepartmentID)
)

Insert into InterviewDepartments values (1, 'IT')
Insert into InterviewDepartments values (2, 'HR')
Insert into InterviewDepartments values (3, 'Payroll')

Insert into InterviewEmployees values (1, 'Mark', 1)
Insert into InterviewEmployees values (2, 'John', 1)
Insert into InterviewEmployees values (3, 'Mike', 1)
Insert into InterviewEmployees values (4, 'Mary', 2)
Insert into InterviewEmployees values (5, 'Stacy', 3)

--SQL Query to find department with highest number of employees

select top 1 DepartmentName 
from InterviewEmployees
join InterviewDepartments
on InterviewEmployees.DepartmentID = InterviewDepartments.DepartmentID
Group by DepartmentName
order by COUNT(*) desc
