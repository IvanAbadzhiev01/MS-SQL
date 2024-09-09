CREATE VIEW "V_EmployeeNameJobTitle" AS
SELECT CONCAT(FirstName, ' ',ISNULL(MiddleName, ''),' ', LastName)[Full Name] , JobTitle FROM Employees
