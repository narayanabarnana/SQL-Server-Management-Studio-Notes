Create table employee
(
	ID int Not null Primary Key,
	Name nvarchar(50) Not null,
	Gender nvarchar(20) Not null,
	Salary int not null,
	DepartmentId int
)

Insert into employee values(1,'Tom','Male',4000,1)
Insert into employee values(2,'Pam','Male',4000,3)
Insert into employee values(3,'Tom','Male',4000,1)
Insert into employee values(4,'John','Male',4000,2)
Insert into employee values(5,'Sam','Male',4000,2)
Insert into employee values(6,'Todd','Male',4000,1)
Insert into employee values(7,'Ben','Male',4000,1)
Insert into employee values(8,'Sara','Male',4000,3)
Insert into employee values(9,'Valarie','Male',4000,1)
Insert into employee values(10,'James','Male',4000,1)
Insert into employee values(11,'Russel','Male',4000,1)

update  employee set Salary = 6000 Where ID=2
update  employee set Gender = 'Female' Where ID=10
update  employee set Gender = 'Female' Where ID=2



Select * from employee

Create table department
(
	ID int Not null Primary Key,
	DepartmentName nvarchar(50) Not null,
	Location nvarchar(20) Not null,
	DepartmentHead nvarchar(20) Not null
)

Insert into department values(1,'IT','London','Rick')
Insert into department values(2,'Payroll','Delhi','Ron')
Insert into department values(3,'HR','New York','Christie')
Insert into department values(4,'Other Department','Sydney','Cindrella')

Select * from department

--Adding a foreign key costraint to employee table Departmentid

Alter table employee add constraint employee_DepartmentId_FK
FOREIGN KEY (DepartmentId) references department (ID)

--INner Join

Select Name, Gender, Salary, DepartmentName 
from employee JOIN department 
ON employee.DepartmentId = department.ID

Select Name, Gender, Salary, DepartmentName 
from employee INNER JOIN department 
ON employee.DepartmentId = department.ID

--Left outer Join or Outer Join

Select Name, Gender, Salary, DepartmentName 
from employee Left Outer JOIN department 
ON employee.DepartmentId = department.ID

Select Name, Gender, Salary, DepartmentName 
from employee Left JOIN department 
ON employee.DepartmentId = department.ID

--Right Join / Right Outer Join

Select Name, Gender, Salary, DepartmentName 
from employee Right Outer JOIN department 
ON employee.DepartmentId = department.ID

Select Name, Gender, Salary, DepartmentName 
from employee Right JOIN department 
ON employee.DepartmentId = department.ID

Select Name, Gender, Salary, DepartmentName 
from employee Full Outer JOIN department 
ON employee.DepartmentId = department.ID

Select Name, Gender, Salary, DepartmentName 
from employee Full JOIN department 
ON employee.DepartmentId = department.ID

--CROSS Join

Select Name, Gender, Salary, DepartmentName 
from employee CROSS JOIN department 

SELECT 	Name, Gender, Salary, DepartmentName
From 		Employee
Left join	department
On		employee.departmentid=department.id
Where 	employee.departmentid IS NULL

