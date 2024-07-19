CREATE TABLE Users(
	Id BIGINT PRIMARY KEY IDENTITY(1, 1),
	Username VARCHAR(30) UNIQUE NOT NULL,
	Password NVARCHAR(26) NOT NULL,
	ProfilePicture VARBINARY(8000),
	LastLoginTime TIME, 
	IsDeleted BIT,
	

)






INSERT INTO Users (Username, Password, LastLoginTime, IsDeleted)
VALUES		('Pesho', 'pasword123', '2023-05-01', 'false'),
			('Gosho', 'pasword123', '2023-05-01', 'false'),
			('Misho', 'pasword123', '2023-05-01', 'false'),
			('Silvi', 'pasword123', '2023-05-01', 'false'),
			('Tosho', 'pasword123', '2023-05-01', 'false')