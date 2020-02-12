select * from tblPerson

select Name, 
SUBSTRING(Email,1,1) + REPLICATE('*',5) + 
SUBSTRING(Email, CHARINDEX('@',Email) , LEN(Email) - CHARINDEX('@',Email) +1 )
As Email
from tblPerson

select SUBSTRING(Email,1,1) from tblPerson
select REPLICATE('*',5) from tblPerson
select SUBSTRING(Email, CHARINDEX('@',Email) , LEN(Email) - CHARINDEX('@',Email) +1 ) from tblPerson
select Name, 
SUBSTRING(Email,1,1) + REPLICATE('*',5) from tblPerson

select Email, PATINDEX('%@aaa.com',Email) as FirstOccurence from tblPerson
where PATINDEX('%@aaa.com',Email) > 0
