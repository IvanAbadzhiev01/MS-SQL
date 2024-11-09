CREATE PROC usp_DeleteEmployeesFromDepartment (@departmentId INT)
AS
BEGIN
   DECLARE @employeesToDeleted TABLE(ID INT)

   INSERT INTO @employeesToDeleted(ID)
   SELECT EmployeeID
   FROM Employees
   WHERE DepartmentID = @departmentId

   ALTER TABLE Departments 
   ALTER COLUMN ManagerID INT

   UPDATE Departments
   SET ManagerID = NULL
 WHERE ManagerID IN (SELECT * FROM @employeesToDeleted)

	UPDATE Employees
	SET ManagerID = NULL
	WHERE ManagerID IN (SELECT * FROM @employeesToDeleted)

	DELETE FROM EmployeesProjects
	WHERE EmployeeID IN (SELECT * FROM @employeesToDeleted)

	DELETE Employees
	WHERE DepartmentID = @departmentId

	DELETE FROM Departments
	WHERE DepartmentID = @departmentId 
   
   SELECT COUNT(*)
   FROM Employees
   WHERE DepartmentID = @departmentId
END

