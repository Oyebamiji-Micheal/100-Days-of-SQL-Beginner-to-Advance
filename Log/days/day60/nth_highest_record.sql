USE movie_db;

SELECT * FROM movies;

SELECT * FROM movies
ORDER BY vote_count DESC
LIMIT 3, 1;