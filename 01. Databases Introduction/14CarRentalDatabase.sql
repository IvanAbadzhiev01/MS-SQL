CREATE TABLE Categories(
	Id INT IDENTITY PRIMARY KEY,
	CategoryName VARCHAR(50) NOT NULL,
	DailyRate DECIMAL(7,2),
	WeaklyRate DECIMAL(7,2),
	MonthlyRate DECIMAL(7,2),
	WeekendRate DECIMAL(7,2),

);


CREATE TABLE Cars(
	Id INT IDENTITY PRIMARY KEY,
	PlateNumber VARCHAR(8) NOT NULL,
	Manufacturer VARCHAR(50) NOT NULL,
	Model VARCHAR(50) NOT NULL,
	CarYear SMALLINT NOT NULL,
	CategoryId INT FOREIGN KEY REFERENCES Categories(Id),
	Doors SMALLINT,
	Picture VARBINARY(8000),
	Condition VARCHAR(50),
	Available BIT NOT NULL



);

CREATE TABLE Employees(
		Id INT IDENTITY PRIMARY KEY,
		FirstName VARCHAR(50),
		LastName VARCHAR(50),
		Title VARCHAR(50),
		Notes VARCHAR(MAX)


);

CREATE TABLE Customers(
		Id INT IDENTITY PRIMARY KEY,
		DriverLicenceNumber VARCHAR(30),
		FullName VARCHAR(100),
		Address VARCHAR(250),
		City VARCHAR(50),
		ZIPCode VARCHAR(8),
		Notes VARCHAR(MAX)


);

CREATE TABLE RentalOrders(
	Id INT IDENTITY PRIMARY KEY,
	EmployeeId INT FOREIGN KEY REFERENCES Employees(Id),
	CustomerId INT FOREIGN KEY REFERENCES Customers(Id),
	CarsId INT FOREIGN KEY REFERENCES Cars(Id),
	TankLeve FLOAT(2),
	KilometrageStart INT NOT NULL,
	KilometrageEnd INT NOT NULL,
	TotalKilometerRange INT NOT NULL,
	StartDate DATETIME2 NOT NULL,
	EndDate DATETIME2 NOT NULL,
	TotalDays SMALLINT NOT NULL,
	RateApplied DECIMAL(7,2),
	TaxRate DECIMAL(5,2),
	OrderStatus VARCHAR(50),
	Notes VARCHAR(MAX),
);


INSERT INTO Categories(CategoryName, DailyRate, WeaklyRate,MonthlyRate,WeekendRate)
VALUES 
	   ('Category1', NULL, NULL, NULL, NULL),
	   ('Category2', 1.5, 2.88, 4.1, 5),
	   ('Category3', 2.00, 4.2, 1.1, NULL)


INSERT INTO Cars(PlateNumber,Manufacturer,Model, CarYear,CategoryId,Doors,Picture,Condition,Available)
VALUES 
('PA4344AB', 'Ford', 'Fiesta', 1996, 2, 5, NULL, 'Good', 0),
('PA4344AB', 'Ford', 'Fiesta', 1996, 2, 5, NULL, 'Good', 0),
('PA4344AB', 'Ford', 'Fiesta', 1996, 2, 5, NULL, 'Bad', 1)


INSERT INTO Employees(FirstName, LastName, Title, Notes)
VALUES
	('Bai', 'Xiks', 'Title1', NULL),	
	('Pesho', 'Peshov', 'Title2', 'asd'),
	('Ivan', 'Ivanov', 'Title3', 'Asd')


INSERT INTO Customers(DriverLicenceNumber, FullName,Address,City,ZIPCode,Notes)
VALUES 
	('Peci328', 'Tosho Toshev', 'ul.Zavodska 8', NULL, 4400, NULL),
	('asd328', 'Misho Toshev', 'ul.Zavodska 2', NULL, 4400, NULL),
	('cxvi328', 'Tosho Vulev', 'ul.Zavodska 9', NULL, 4400, NULL)

INSERT INTO RentalOrders(EmployeeId,CustomerId,CarsId,TankLeve,KilometrageStart,KilometrageEnd,TotalKilometerRange, StartDate,EndDate,TotalDays,RateApplied,TaxRate,OrderStatus,Notes)
VALUES 
		(1,3,2,NULL,266487,267100, 267100 - 266487, '06/15/2021','06/19/2021', 4,1.47, 9.00,1,NULL),
		(1,3,2,NULL,266487,267100, 267100 - 266487, '06/15/2021','06/19/2021', 4,1.47, 9.00,1,NULL),
		(1,3,2,NULL,266487,267100, 267100 - 266487, '06/15/2021','06/19/2021', 4,1.47, 9.00,1,NULL)
