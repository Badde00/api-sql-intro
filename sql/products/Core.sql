CREATE TABLE films (
	id SERIAL PRIMARY KEY,
	title TEXT,
	genre TEXT,
	release_year INTEGER,
	score INTEGER
);
--DROP TABLE films;

INSERT INTO films
	(title, genre, release_year, score)
VALUES
	('The Shawshank Redemption', 'Drama', 1994, 9),
('The Godfather', 'Crime', 1972, 9),
('The Dark Knight', 'Action', 2008, 9),
('Alien', 'SciFi', 1979, 9),
('Total Recall', 'SciFi', 1990, 8),
('The Matrix', 'SciFi', 1999, 8),
('The Matrix Resurrections', 'SciFi', 2021, 5),
('The Matrix Reloaded', 'SciFi', 2003, 6),
('The Hunt for Red October', 'Thriller', 1990, 7),
('Misery', 'Thriller', 1990, 7),
('The Power Of The Dog', 'Western', 2021, 6),
('Hell or High Water', 'Western', 2016, 8),
('The Good the Bad and the Ugly', 'Western', 1966, 9),
('Unforgiven', 'Western', 1992, 7);



SELECT * FROM films;
SELECT * FROM films ORDER BY score DESC;
SELECT * FROM films ORDER BY release_year;
SELECT * FROM films WHERE score >= 8;
SELECT * FROM films WHERE score >= 7;
SELECT * FROM films where release_year = 1990;
SELECT * FROM films where release_year < 2000;
SELECT * FROM films where release_year >= 1990;
SELECT * FROM films where release_year BETWEEN 1990 AND 1999;
SELECT * FROM films WHERE genre ILIKE 'scifi';
SELECT * FROM films WHERE genre ILIKE 'scifi' OR genre ILIKE 'western';
SELECT * FROM films WHERE genre NOT ILIKE 'scifi';
SELECT * FROM films WHERE genre ILIKE 'western' AND release_year < 2000;
SELECT * FROM films WHERE title ILIKE '%matrix%';