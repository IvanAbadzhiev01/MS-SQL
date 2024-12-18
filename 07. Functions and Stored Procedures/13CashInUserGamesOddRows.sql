CREATE FUNCTION  ufn_CashInUsersGames(@gameName VARCHAR(MAX))
RETURNS @Rtable TABLE (SumCash MONEY)
AS
BEGIN
	DECLARE @Result MONEY

	SET @Result = 
	(SELECT SUM(ug.Cash) AS Cash
	FROM (SELECT Cash, GameId, ROW_NUMBER() OVER (ORDER BY Cash DESC) AS RowNumber
	FROM UsersGames
	WHERE GameId = (SELECT Id FROM Games WHERE [Name] = @gameName)
	) AS ug
	WHERE ug.RowNumber % 2 != 0
	)
	INSERT INTO @Rtable SELECT @Result
	RETURN
END

