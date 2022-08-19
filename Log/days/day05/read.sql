USE movie_db;
SHOW TABLES FROM movie_db;

-- show all columns and rows
SELECT * FROM movies;

-- display movie title and director only
SELECT title, director FROM movies;

-- show all attributes of action movies only
SELECT * FROM movies WHERE genre='action';

-- all movies released in 2015
SELECT * FROM movies WHERE release_year=2015; 

--  title, genre and runtime, director of all movies directed by Robert Schwentke
SELECT title, genre, runtime, director FROM movies WHERE director='Robert Schwentke';