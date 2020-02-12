create database Sample2

Alter database Sample2 Modify name = Sample3

sp_renameDB 'Sample3', 'Sample2'

Create Table tblGener
(

ID int NOT NULL Primary Key,
Gender nvarchar(50) NOT NULL

)