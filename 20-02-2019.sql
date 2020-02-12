select * from tblPerson

--Adding a constraint
Alter table tblPerson
Add Constraint UQ_tblPerson_Email Unique (Email)

--inserting a duplicate value into the table i.e.duplicate email id and you will get the below error
--Violation of UNIQUE KEY constraint 'UQ_tblPerson_Email'. Cannot insert duplicate key in object 'dbo.tblPerson'. The duplicate key value is (k@k.com                                           ).
Insert into tblPerson values (8, 'Narayana' , 'k@k.com',2,null)

--Dropping a constraint
Alter table tblPerson
Drop Constraint UQ_tblPerson_Email

Alter table tblPerson
Drop Constraint CK_tblPerson_Age
--Dropping a column

Alter table tblPerson
Drop Column Age

--Adding a Column
ALTER TABLE tblPerson
ADD City nvarchar(20)

--updating the column values
UPDATE tblPerson
SET City = 'Mumbai'
WHERE ID=4

--Select Statment Queries

select * from tblPerson

--select the city which starts with letter L
select City from tblPerson where City like 'L%'

--Find out all the email ids which have @ symbol in the Email column
select Email from tblPerson where Email like '%@%'

--Find out all the email ids which has one character before @ and one character after @
select Email from tblPerson where Email like '_@_.com'

--Find out all the names starts with M,S,T and it can be any characters after that
select Name from tblPerson where Name Like '[MST]%'

--To retrieve top n rows from the table
select top 3 * from tblPerson

--To retrieve Percentage of rows from the table
select top 20 Percent * from tblPerson

--To retrieve the top salary from the table
select top 1 * from tblPerson order by Age DESC


