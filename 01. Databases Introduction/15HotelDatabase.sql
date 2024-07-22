CREATE TABLE Employees(
	Id INT IDENTITY PRIMARY KEY,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	Title VARCHAR(50),
	Notes VARCHAR(MAX)
);


CREATE TABLE Customers(
	AccountNumber INT IDENTITY PRIMARY KEY,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	PhoneNumber VARCHAR(10),
	EmergencyName VARCHAR(50),
	EmergencyNumber VARCHAR(10),
	Notes VARCHAR(MAX)
);

CREATE TABLE RoomStatus(
	RoomStatus INT IDENTITY PRIMARY KEY,
	Notes VARCHAR(MAX)
);

CREATE TABLE RoomTypes(
	RoomType INT IDENTITY PRIMARY KEY,
	Notes VARCHAR(MAX)
);

CREATE TABLE BedTypes(
	BedType INT IDENTITY PRIMARY KEY,
	Notes VARCHAR(MAX)
);



CREATE TABLE Rooms(
	RoomsNumber INT IDENTITY PRIMARY KEY,
	RoomType INT FOREIGN KEY REFERENCES RoomTypes(RoomType),
	BedType INT FOREIGN KEY REFERENCES BedTypes(BedType),
	Rate DECIMAL(3,2),
	RoomStatus INT FOREIGN KEY REFERENCES RoomStatus(RoomStatus),
	Notes VARCHAR(MAX)
);



CREATE TABLE Payments(
	Id INT IDENTITY PRIMARY KEY,
	EmployeeId INT FOREIGN KEY REFERENCES Employees(Id),
	PaymentDate DATETIME2,
	AccountNumber INT FOREIGN KEY REFERENCES Customers(AccountNumber),
	FirstDateOccupied DATETIME2,
	LastDateOccupied DATETIME2,
	TotalDays INT,
	AmountCharged DECIMAL(7,2),
	TaxRate DECIMAL(4,2),
	TaxAmount DECIMAL(7,2),
	PaymentTotal DECIMAL(7,2),
	Notes VARCHAR(MAX),
);




CREATE TABLE Occupancies(
	Id INT IDENTITY PRIMARY KEY,
	EmployeeId INT FOREIGN KEY REFERENCES Employees(Id),
	DateOccupied DATETIME2,
	AccountNumber INT FOREIGN KEY REFERENCES Customers(AccountNumber),
	RoomNumber INT FOREIGN KEY REFERENCES Rooms(RoomsNumber),
	RateApplied DECIMAL(5,2),
	PhoneCharge DECIMAL(5,2),
	Notes VARCHAR(MAX),
);

INSERT INTO Employees(FirstName, LastName, Title,Notes)
VALUES 
	   ('Ivan', 'Abadzhiev', 'FULLSTACKDEV', 'Best in the world (Hello World)'),
	   ('Georgi', 'Shis', 'FRON-END DEV', 'Love Pizza'),
	   ('Mitko', 'Iordanov', 'Junior DEV', 'Code is Life')


INSERT INTO Customers(FirstName,LastName,PhoneNumber,EmergencyName,EmergencyNumber,Notes)
VALUES
	   ('Denka', 'Stefanova', '0822845589', 'Silvan', '0956745589', 'Notes'),
	   ('Minka', 'Manolova', '0872845529', 'Silvan', '0956745589', 'Notes'),
	   ('Denka', 'Stefanova', '0855843589', 'Silvan', '0956745589', 'Notes')


INSERT INTO RoomStatus(Notes)
VALUES 
	    ('Bad'),
		('Good'),
		('Very Good')

INSERT INTO RoomTypes(Notes)
VALUES 
	    ('Appartment'),
		('President Appartment'),
		('One')

INSERT INTO BedTypes(Notes)
VALUES 
	    ('Two'),
		('BedRoom'),
		('One')

INSERT INTO Rooms(RoomType,BedType,Rate,RoomStatus,Notes)
VALUES 
	   (1, 2, 3.1, 1, 'Notes'),
	   (1, 2, 3.1, 1, 'Notes'),
	   (1, 2, 3.1, 1, 'Notes')


INSERT INTO Payments(EmployeeId, PaymentDate, AccountNumber, FirstDateOccupied, LastDateOccupied,TotalDays, AmountCharged,TaxRate,TaxAmount,PaymentTotal,Notes)
VALUES 
	   (1, '02/01/2024', 2, '02/02/2024','05/02/2024', 3, 300.00, 10.00,30.00, 330.00, 'May by stay 2 day more'),
	   (2, '02/01/2024', 1, '02/02/2024','05/02/2024', 3, 300.00, 10.00,30.00, 330.00, 'May by stay 2 day more'),
	   (3, '02/01/2024', 3, '02/02/2024','05/02/2024', 3, 300.00, 10.00,30.00, 330.00, 'May by stay 2 day more')

INSERT INTO Occupancies(EmployeeId, DateOccupied,AccountNumber,RoomNumber,RateApplied,PhoneCharge,Notes)
VALUES 
	   (1, '02/02/2024', 2, 1, 2.5, 0.00, 'Notes1'),
	   (2, '02/02/2024', 1, 1, 2.5, 0.00, 'Notes2'),
	   (3, '02/02/2024', 3, 2, 2.5, 0.00, 'Notes3')
