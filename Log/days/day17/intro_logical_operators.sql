USE movie_db;
SHOW TABLES FROM movie_db;

-- all movies released after 2005
SELECT  title, release_year 
FROM  movies WHERE release_year > 2005;

-- all movies released in or after 2015
SELECT title, release_year
FROM movies WHERE release_year >= 2015;

-- all movies with runtime of 2 hour or less
SELECT title, runtime
FROM movies WHERE runtime <= 120;

-- all action movies released after 2000
SELECT title, director, genre, release_year
FROM movies
WHERE genre = 'action' AND release_year > 2000
ORDER BY release_year;

-- - show all drama movies released after 2000 with a vote count of 1000 or more
SELECT title, director, genre, release_year, vote_count
FROM movies
WHERE genre = 'drama' AND release_year > 2000 AND vote_count >= 1000;

-- movies directed by Ridley Scott or George Miller
SELECT title, director, genre, release_year, vote_count
FROM movies
WHERE director =  'Ridley Scott' OR director = 'George Miller';

-- all movies with vote count between 1000 and 2000
SELECT title, director, genre, vote_count
FROM movies
WHERE vote_count BETWEEN 1000 AND 2000;