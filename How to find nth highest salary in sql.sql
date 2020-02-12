
----How to find 2nd highest salary in sql

Select Max(Salary) from Employees Where Salary < (Select Max(Salary) from Employees)

--How to find nth highest salary in sql

--Method 1:

SELECT TOP 1 SALARY
FROM (
      SELECT DISTINCT TOP 2 SALARY
      FROM EMPLOYEES
      ORDER BY SALARY DESC
      ) RESULT
Order by Salary

--Method 2:

WITH RESULT AS
(
    SELECT SALARY,
           DENSE_RANK() OVER (ORDER BY SALARY DESC) AS DENSERANK
    FROM EMPLOYEES
)
select top 1 Salary from RESULT WHERE RESULT.DENSERANK = 2

--Method 3: The below query will only work if there are no duplicates.

WITH RESULT AS
(
    SELECT SALARY,
           Row_Number() OVER (ORDER BY SALARY DESC) AS RowNumber
    FROM EMPLOYEES
)
select top 1 Salary from RESULT WHERE RESULT.RowNumber = 2