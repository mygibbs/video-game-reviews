-- create table
CREATE TABLE Reviews
(
	Id int PRIMARY KEY IDENTITY,
	UserId int NOT NULL,
	GameId int NOT NULL,
	Title varchar(255) NOT NULL,
	[Description] varchar(max) NOT NULL
)

-- insert seed data
INSERT INTO Reviews 
	([Description],  UserId, GameId, Title)
VALUES 
	('I played this game for hours, tons of fun!', 1, 1, 'Loved it!'),
	('Wow best game ever!!  OMG YOU RULE X DEVELOPERS!', 2, 1, 'Amazing!'),
	('Awful.  So many bugs.  What was EA thinking?', 1, 2, 'Yuck'),
	('This game is unplayable.  Stay away.', 2, 2, 'Hate it'),
	('It had some really good qualities, but also had some flaws that detracted from the gameplay.', 1, 3, 'It''s okay...'),
	('Keeps your attention through the first play through, gets stale in the playthrough.', 2, 3, 'Meh')

-- simple query for records
SELECT * FROM Reviews

-- remove records from table
TRUNCATE TABLE Reviews

-- drop table
DROP TABLE Reviews
