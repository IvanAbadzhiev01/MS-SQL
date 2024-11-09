CREATE PROC usp_CalculateFutureValueForAccount(@accid INT, @yeald FLOAT)
AS
BEGIN
	SELECT
	a.Id AS [Account Id] 
	,ah.FirstName
	,ah.LastName
	,a.Balance AS [Current Balance]
	,dbo.ufn_CalculateFutureValue(a.Balance, @yeald, 5) AS [Balance in 5 years]
	FROM Accounts AS a
	JOIN AccountHolders AS ah ON a.AccountHolderId = ah.Id
	WHERE a.Id = @accid
END

 EXEC usp_CalculateFutureValueForAccount 1, 0.1