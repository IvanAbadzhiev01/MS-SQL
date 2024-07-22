
CREATE TABLE Directors(
	Id INT PRIMARY KEY  IDENTITY NOT NULL,
	DirectorName VARCHAR(255), 
	Notes VARCHAR(MAX),

);

CREATE TABLE Genres(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	GenresName VARCHAR(255), 
	Notes VARCHAR(MAX),

);

CREATE TABLE Categories(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	CategoryName VARCHAR(255), 
	Notes VARCHAR(MAX),

);

CREATE TABLE Movies(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	Title VARCHAR(50), 
	DirectorId INT FOREIGN KEY REFERENCES Directors(Id),
	CopyRightYear SMALLINT,
	Length FLOAT,
	GenreId INT FOREIGN KEY REFERENCES Genres(Id),
	CategoryId INT FOREIGN KEY REFERENCES Categories(Id),
	Ratimg DECIMAL(3,1),
	Notes VARCHAR(MAX),
	
);


INSERT INTO Directors(DirectorName, Notes)
VALUES       ('Gry Richie', 'Note1'),
             ('Ben Afleck', 'Note2'),
             ('Asten Vila', 'Note3'),
             ('Robert Deniro', 'Note4'),
             ('Stan', 'Note5')

INSERT INTO Genres(GenresName, Notes)
VALUES       ('Horror', 'Note1'),
             ('Comedy', 'Note2'),
             ('Action', 'Note3'),
             ('Drama', 'Note4'),
             ('Trailar', 'Note5')

INSERT INTO Categories(CategoryName, Notes)
VALUES       ('Cat1', 'Note1'),
             ('Cat2', 'Note2'),
             ('Cat3', 'Note3'),
             ('Cat4', 'Note4'),
             ('Cat5', 'Note5')

INSERT INTO Movies(Title, DirectorId, CopyRightYear, Length, GenreId, CategoryId, Ratimg,Notes)
VALUES       ('Die hard', 2,NULL, 1.84, 1,1,5.4, 'gaagaa'),
             ('Die', 3,NULL, 1.24, 1,2,5.4, 'gaagaa'),
             ('hard', 1,NULL, 2.4, 1,2,6, 'gaagaa'),
             ('hard Die ', 4,NULL, 1.80, 1,4,5.8, 'gaagaa'),
             ('Die hard 2', 2,NULL, 1.94, 1,1,5.4, 'gaagaa')




