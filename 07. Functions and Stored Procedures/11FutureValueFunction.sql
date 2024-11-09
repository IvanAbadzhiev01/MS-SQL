CREATE OR ALTER FUNCTION ufn_CalculateFutureValue(@i DECIMAL(18,4), @r FLOAT, @t INT )
RETURNS DECIMAL(18,4)
BEGIN 
	DECLARE @Result DECIMAL(18,4)

	SET @Result = @i * (POWER((1 + @r), @t))

	RETURN @Result
END

SELECT dbo.ufn_CalculateFutureValue (1000, 0.1, 5)