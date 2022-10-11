USE  movie_db ;

-- show first five rows
SELECT * FROM movies LIMIT 5;

-- calculate the median of 'runtime' 
SET @row_num := -1;
SELECT ROUND(AVG(runtime), 2) AS 'median_runtime'
FROM
	(SELECT  runtime, @row_num := @row_num+1 AS row_index
	FROM movies
	ORDER BY runtime) AS temp
WHERE row_index IN (FLOOR(@row_num / 2), CEIL(@row_num / 2));

-- calculate the median of 'vote_count'
SET @row_num := -1;
SELECT ROUND(AVG(vote_count), 2) AS 'median_vote_count'
FROM
	(SELECT  vote_count, @row_num := @row_num+1 AS row_index
	FROM movies 
	ORDER BY vote_count) AS temp
WHERE row_index IN (FLOOR(@row_num / 2), CEIL(@row_num / 2));