select ASCII('A')  --output 65

Select ASCII('a')  --output 97

Select CHAR(65)  -- output A


--To print alphabets from A to Z using Ascii value
Declare @Start int
Set @Start = 65
While(@Start <=90)
Begin
	Print Char(@Start)
	Set @Start = @Start + 1
End

--To print alphabets from a to z using Ascii value
Declare @Start int
Set @Start = 97
While(@Start <=122)
Begin
	Print Char(@Start)
	Set @Start = @Start + 1
End

select reverse(Name) from Employee

select Name,LEN(Name) as [Total Characters] from employee

select LEFT('Narayana',4)  --output Nara

select RIGHT('Narayana',2) --output na

--returns the string position of the specified expression in a character string
--Syntax: CHARINDEX('expression to find' , 'Expresson to search',Starting position)
select CHARINDEX('@','narayana.10209@gmail.com',1)  --output 15

--Substring function : returns substring from the starting position
--Syntax: SUBSTRING('EXPRESSION','Start position','length(how many characters you want to print')

select SUBSTRING('narayana.10209@gmail.com',16,9)  -- output gmail.com



select email from tblPerson
select CHARINDEX('@',Email)+1 from tblPerson  -- returns the index of @ in each row for Email column. If you dont use +1 then it will give the index including @.
select LEN(Email) from tblPerson --return the length of the email column for each row
select CHARINDEX('@',Email) from tblPerson -- returns the returns the index of @ in each row for Email column including @
select LEN(Email) - CHARINDEX('@',Email) from tblPerson  -- 


--sam@sam.com 11-4
--To Print the domain names from the Email column
select SUBSTRING(Email,CHARINDEX('@',Email)+1, LEN(Email) - CHARINDEX('@',Email)) 
as DomainName 
from tblPerson

--To print the domain names and count of the email column
select SUBSTRING(Email,CHARINDEX('@',Email)+1, LEN(Email) - CHARINDEX('@',Email)) as DomainName,COUNT(Email) 
as DomainNameCount from tblPerson
Group by SUBSTRING(Email,CHARINDEX('@',Email)+1, LEN(Email) - CHARINDEX('@',Email))
