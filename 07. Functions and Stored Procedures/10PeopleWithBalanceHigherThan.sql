CREATE OR ALTER PROC usp_GetHoldersWithBalanceHigherThan(@Num MONEY)
AS
BEGIN
		SELECT FirstName, LastName
		FROM AccountHolders AS ah
		LEFT JOIN Accounts AS a ON ah.Id = a.AccountHolderId
		GROUP BY ah.Id, ah.FirstName, ah.LastName
		HAVING SUM(a.Balance) > @Num
		ORDER BY FirstName, LastName
END

 EXEC usp_GetHoldersWithBalanceHigherThan 0.2

