select * from tblGender

Alter table tblPerson add constraint tblPerson_GenderId_FK
FOREIGN KEY (GenderId) references tblGender (ID)

Insert into tblPerson (ID,Name,Email,GenderId) Values (3, 'Simon', 's@s.com',1)

Insert into tblPerson (ID,Name,Email,GenderId) Values (4, 'Sam', 'sam@sam.com',1)

Insert into tblPerson (ID,Name,Email,GenderId) Values (5, 'May', 'may@may.com',2)

Insert into tblPerson (ID,Name,Email,GenderId) Values (6, 'Kenny', 'k@k.com',3)

select * from tblPerson
select * from tblGender

ALTER TABLE tblPerson 
Add CONSTRAINT DF_tblPerson_GenderId
DEFAULT 3 FOR GenderId

Insert into tblPerson (ID,Name,Email) Values (7, 'Ray', 'Ray@Ray.com')

ALTER TABLE tblPerson
Add Constraint CK_tblPerson_Age CHECK (AGE > 0 AND AGE < 150)

ALTER TABLE tblPerson
DROP Constraint CK_tblPerson_Age

CREATE TABLE tblPerson1
(

PersonId int Identity(1,1) Primary Key,
Name nvarchar(50)

)


Insert Into tblPerson1 Values ('John')

Select * from tblPerson1

set Identity_Insert tblPerson1 OFF