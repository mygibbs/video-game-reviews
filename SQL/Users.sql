-- create table
CREATE TABLE [Users]
(
	Id int PRIMARY KEY IDENTITY,
	Name varchar(16) NOT NULL
)

-- insert seed data
INSERT INTO [Users] 
	(Name)
VALUES 
	('mgibbs'),
	('Klecoz')
	
-- simple query for records
SELECT * FROM [Users]

-- remove records from table
TRUNCATE TABLE [Users]

-- drop table
DROP TABLE [Users]