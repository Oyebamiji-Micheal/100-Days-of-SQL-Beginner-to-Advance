USE movie_db;
SHOW TABLES FROM movie_db;

-- all movies that are neither action nor drama nor horror
SELECT director, title, genre 
FROM movies
WHERE genre NOT IN ('action', 'drama', 'horror');

--  all movies released in 2011, 2012, 2010, 1960 and 2001
SELECT director, title, genre, release_year
FROM movies
WHERE  release_year IN (2011, 2012, 2010, 1960, 2001);

SELECT *, 
	CASE
		WHEN vote_count <= 1000 THEN 'low'
		WHEN vote_count <= 2000 THEN 'medium'
		ELSE 'high' 
	END AS 'group'
FROM movies;