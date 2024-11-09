CREATE PROC usp_EmployeesBySalaryLevel (@SalaryLevel VARCHAR(10))
AS
(
SELECT 
	FirstName
	,LastName 
FROM Employees
WHERE dbo.ufn_GetSalaryLevel(Salary) = @SalaryLevel 

)









CREATE OR ALTER FUNCTION ufn_GetSalaryLevel(@salary DECIMAL(18,4))
RETURNS VARCHAR(10)
AS 
BEGIN

	DECLARE @Result VARCHAR(10)
 	IF(@salary < 30000)
	SET @Result = 'Low'
	IF (@salary BETWEEN 30000 AND 50000)
	SET @Result =  'Average'
	IF (@salary > 50000)
	SET @Result = 'High'

	RETURN @Result
END

