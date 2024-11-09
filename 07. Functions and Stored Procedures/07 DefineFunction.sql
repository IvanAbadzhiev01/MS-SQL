CREATE OR ALTER FUNCTION ufn_IsWordComprised(@setOfLetters NVARCHAR(50), @word NVARCHAR(100))
RETURNS INT
AS
BEGIN
 DECLARE @i INT = 1
 WHILE @i <= LEN(@word)
	 BEGIN
	 DECLARE @ch NVARCHAR(1) = SUBSTRING(@word,@i, 1)
	 IF CHARINDEX(@ch, @setOfLetters) = 0
	 RETURN 0 
	 ELSE
	 SET @i += 1

	 END
	 RETURN 1
END


SELECT FirstName FROM Employees
WHERE dbo.ufn_IsWordComprised('oistmiahf', FirstName) = 1