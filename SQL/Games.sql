-- create table
CREATE TABLE Games
(
	Id int PRIMARY KEY IDENTITY,
	Name varchar(255) NOT NULL,
	GenreId int NOT NULL,
	[Description] varchar(max) NOT NULL
)

-- insert seed data
INSERT INTO Games 
	(Name, GenreId, [Description])
VALUES 
	('Battlefield 3', 1, 'A shooter that focuses on graphics, combat-realism, and gameplay.'),
	('Sim City', 2, 'Build your own empire in this city-building game.'),
	('Kingdom Hearts 2', 3, 'Sequel to best-selling game Kingdom Hearts.  Picks up where Sora left off in his adventures with King Mickey.')
	
-- simple query for records
SELECT * FROM Games

-- remove records from table
TRUNCATE TABLE Games

-- drop table
DROP TABLE Games