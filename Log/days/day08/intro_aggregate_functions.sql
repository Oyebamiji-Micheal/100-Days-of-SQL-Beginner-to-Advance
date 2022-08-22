USE movie_db;
SHOW TABLES FROM movie_db;

-- count the number of movies
SELECT COUNT(*) FROM movies; 

--  display unique director name 
SELECT COUNT(DISTINCT(director)) FROM  movies;

-- show the number of movies directed by each director
SELECT 
	director, COUNT(*) AS 'number of  movies directed'
FROM movies 
GROUP BY director;

-- show number of movies released each year
SELECT 
	release_year AS 'year', 
            COUNT(*) AS 'number of movies released'
FROM movies
GROUP BY release_year;

-- show minimum and maximum runtime
SELECT MIN(runtime) FROM movies;
SELECT MAX(runtime) FROM movies;

-- show all attributes associated with the highest and lowest movie runtime 
SELECT * FROM movies ORDER BY runtime DESC LIMIT 1;
SELECT * FROM movies ORDER BY runtime LIMIT 1;

-- show all attributes associated with the highest and lowest movie vote_count 
SELECT * FROM movies ORDER BY vote_count DESC LIMIT 1;
SELECT * FROM movies ORDER BY vote_count LIMIT 1;

-- display the year each director directed their first movie
SELECT 
	director, 
            title, 
            MIN(release_year)  AS 'minimum release year'
FROM movies GROUP BY director;

--  longest movie runtime for each director
SELECT 
	director, 
            title, 
            MAX(runtime)  AS 'longest runtime'
FROM movies GROUP BY director;

-- average runtime for movies with the same genre 
SELECT 
	genre, 
            AVG(runtime) AS 'average runtime'
FROM movies 
GROUP BY(genre);

-- show the number of movies released each year along with their average vote count 
 SELECT 
	release_year, 
            COUNT(*) AS '# count', 
            AVG(vote_count) AS 'average vote'
FROM movies 
GROUP BY(genre);