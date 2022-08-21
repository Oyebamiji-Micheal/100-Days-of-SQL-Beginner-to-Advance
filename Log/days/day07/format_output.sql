USE movie_db;
SHOW TABLES FROM movie_db;

-- show distinct directors 
SELECT DISTINCT director FROM movies;

-- display all unique genres 
SELECT DISTINCT genre FROM movies;

-- sort by release year in ascending order
SELECT * FROM movies ORDER BY release_year;

-- sort by release year in descending order
SELECT * FROM movies ORDER BY release_year DESC;

-- top 5 movies  with highest runtime
SELECT * FROM movies ORDER BY runtime DESC LIMIT 5;

-- top 5 movies  with most vote
SELECT * FROM movies ORDER BY vote_count DESC LIMIT 10;



