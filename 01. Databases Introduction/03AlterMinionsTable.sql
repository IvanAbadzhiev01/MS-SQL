ALTER TABLE Minions
ADD CONSTRAINT FK_Minions_Towns
FOREIGN KEY(TownID) REFERENCES Towns(Id)