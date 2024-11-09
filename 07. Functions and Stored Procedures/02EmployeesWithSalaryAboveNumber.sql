CREATE OR ALTER PROC usp_GetEmployeesSalaryAboveNumber(@Num DECIMAL(18,4) = 48100)
	AS
	(
		 SELECT
		 FirstName
		 ,LastName
		 FROM Employees
		 WHERE @Num <= Salary
	)


	EXEC usp_GetEmployeesSalaryAboveNumber