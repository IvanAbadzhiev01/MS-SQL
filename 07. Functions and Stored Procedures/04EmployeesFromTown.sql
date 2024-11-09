CREATE OR ALTER PROC usp_GetEmployeesFromTown (@TownName VARCHAR(50) = 'Sofia')
AS
(
SELECT
e.FirstName,
e.LastName
FROM Employees AS e
JOIN Addresses AS a ON e.AddressID = a.AddressID 
JOIN Towns AS t ON a.TownID = t.TownID AND [t].[Name] = @TownName


)

EXEC usp_GetEmployeesFromTown