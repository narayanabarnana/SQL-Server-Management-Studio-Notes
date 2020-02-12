SELECT * FROM employee where Gender = 'Male'


--Creating a SP with output Parameters

Create Procedure spGetEmployeeCountByGender
@Gender nvarchar(20),
@EmployeeCount int Output

As

Begin

		Select 	@EmployeeCount = COUNT(ID) from employee where Gender = @Gender

End

--If you are passing the values with parameters then the order of passing the variables is not necessary

Declare @EmployeeTotal int
Execute spGetEmployeeCountByGender  @EmployeeCount= @EmployeeTotal Output, @Gender = 'Male'
Print @EmployeeTotal


Declare @EmployeeTotal int
Execute spGetEmployeeCountByGender 'Male', @EmployeeTotal Output
Print @EmployeeTotal

---Creating a Stored Procedue with output parameters

Create Proc sp_getTotalCount1
@TotalCount int output
As
Begin
		Select @TotalCount = COUNT(ID) From employee
End

Declare @Total int
Execute sp_getTotalCount1 @Total Out
Print @Total


-----Creating a Stored Procedue with return values

Create Proc sp_getTotalCount2
As
Begin
		return (Select  COUNT(ID) From employee)
End

Declare @TotalEmployeeCount int
Execute @TotalEmployeeCount=sp_getTotalCount2 
Print @TotalEmployeeCount

--So, we are able to achieve what we want, using Output Parameters as well as return values.
--Now, let’s look at example, where return status variables cannot be used, but output Parameters can be used.

--Creating an SP with Output Parameters
Create Proc spGetEmployeeNameByID1
@ID int,
@Name nvarchar(20) output
As
Begin
		Select @Name = Name from employee where @ID = ID
End

Declare @Name nvarchar(20)
Execute spGetEmployeeNameByID1 1 , @Name Out
Print ' Name = ' + @Name

--creating the same SP with return values

Create Proc spGetEmployeeNameByID2
@ID int
As
Begin
		return (Select  Name from employee where @ID = ID)
End

Declare @Name nvarchar(20)
Execute @Name=spGetEmployeeNameByID2 1
Print ' Name = ' + @Name

--Conversion failed when converting the nvarchar value 'Tom' to data type int.