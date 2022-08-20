USE movie_db;
SHOW TABLES FROM movie_db;

-- concatinate director with vpte count
SELECT * FROM movies;
SELECT 
	title, CONCAT('directed by ', director, ' has a vote count of ', vote_count) AS 'concatinated data' 
FROM movies;

-- combine title, director, genre, runtime and released_year with '-' as a delimiter
SELECT 
	CONCAT_WS('- ', title, director, genre, runtime, release_year)
FROM movies;
