USE movie_db;
SHOW TABLES FROM movie_db;

-- delete old movies (release_year=1978)
SELECT id, title, director, release_year FROM movies WHERE release_year=1978;
DELETE FROM movies WHERE release_year=1978;
-- confirm deletion
SELECT id, title, director, release_year FROM movies WHERE release_year=1978;

-- delete all horror movies
SELECT id, title, director, genre FROM movies WHERE genre='Horror';
DELETE FROM movies WHERE genre='Horror';
-- confirm deletion
SELECT id, title, director, genre FROM movies WHERE genre='Horror';

-- Delete all entries
SELECT * FROM movies;
DELETE FROM movies;
SELECT * FROM movies;

-- delete table and database
DROP TABLE movies;
DROP DATABASE movie_db;
SHOW DATABASES;