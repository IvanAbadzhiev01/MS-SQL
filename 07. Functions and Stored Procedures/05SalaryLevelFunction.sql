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


SELECT 
Salary
,dbo.ufn_GetSalaryLevel(Salary) AS [Salary Level]
FROM Employees