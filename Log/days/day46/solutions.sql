USE movie_review_db;

-- display movies along with all their corresponding ratings
SELECT 
	title, genre, rating 
FROM movies 
INNER JOIN reviews
	ON movies.id = reviews.movie_id;
            
-- display the average rating for each movie
SELECT 
	title, genre, AVG(rating) AS average_rating
FROM movies
INNER JOIN reviews
	ON movies.id = reviews.movie_id
GROUP BY movies.id 
ORDER BY average_rating DESC;

-- movies with no ratings
 SELECT 
	title, 
            IFNULL(rating, 'not_rated') AS 'rating'
FROM movies
LEFT  JOIN reviews 
	ON movies.id = reviews.movie_id
WHERE rating IS NULL;

-- average rating for each genre
SELECT 
	genre, 
            ROUND(
		AVG(rating), 
                        2) AS 'average_rating'
FROM movies
INNER JOIN reviews
ON movies.id = reviews.movie_id
GROUP BY genre;

-- display movie title along with their corresponding ratings and reviewers
 SELECT 
	title, 
            CONCAT(first_name, ' ', last_name) AS reviewer,
            rating
FROM movies
JOIN reviews
	ON movies.id = reviews.movie_id
JOIN reviewers
	ON reviews.reviewer_id = reviewers.id;
            
-- show users status and ratings count along with their maximum, minimum and average rating
SELECT 
	reviewers.id,
	first_name, 
            last_name,
            COUNT(rating) AS 'number_of_rating',
            IFNULL(MIN(rating), 0) AS 'minimum_rating',
	IFNULL(MAX(rating), 0) AS 'maximum_rating',
            IFNULL(AVG(rating),0) AS 'average_rating',
            CASE 
		WHEN rating IS NULL THEN 'INACTIVE'
                        ELSE 'ACTIVE'
	END AS 'status'
FROM reviewers
LEFT JOIN reviews
ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;