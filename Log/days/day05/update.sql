USE movie_db;
SHOW TABLES FROM movie_db;

-- change 'black hawk down' genre to 'war'
SELECT id, title, genre FROM movies WHERE title='black hawk down';
UPDATE movies SET genre='War' WHERE  title='black hawk down';
-- confirm change
SELECT id, title, genre FROM movies WHERE title='black hawk down' ;

-- update all movies released in 2011 to 2012
SELECT id, title, release_year FROM movies WHERE release_year=2011;
UPDATE movies SET release_year=2012 WHERE release_year=2011;
-- confirm update 
SELECT id, title, release_year FROM movies WHERE release_year=2012;