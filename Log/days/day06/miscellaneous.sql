USE movie_db;
SHOW TABLES FROM movie_db;

-- display movie titles and the length of each title
SELECT title, CHAR_LENGTH(title) AS 'character count' 
FROM movies;

-- show movie title and its reverse equivalent
SELECT title, REVERSE(title) FROM movies;

-- display a substring of title, director in uppercase and release year
SELECT 
	SUBSTRING(title, 1, 10) AS 'short title',
            UPPER(director) AS 'director', 
            CONCAT('released in ', release_year) AS 'release year'
FROM movies;
            
	
 