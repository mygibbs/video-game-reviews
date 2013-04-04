-- create table
CREATE TABLE Genres
(
	Id int PRIMARY KEY IDENTITY,
	Name varchar(16) NOT NULL
)

-- insert seed data
INSERT INTO Genres 
	(Name)
VALUES 
	('FPS'),
	('Simulator'),
	('Action Adventure')
	
-- simple query for records
SELECT * FROM Genres

-- remove records from table
TRUNCATE TABLE Genres

-- drop table
DROP TABLE Genres