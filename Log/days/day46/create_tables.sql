CREATE DATABASE movie_review_db;
USE movie_review_db;

-- create tables 
CREATE TABLE 
    movies(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,  
    director VARCHAR (50) NOT NULL,
    genre VARCHAR(50) NOT NULL  DEFAULT 'Unspecified', 
    runtime INT,
    release_year YEAR(4)
    );
                        
CREATE TABLE reviewers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

CREATE TABLE reviews (
    id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT,
    reviewer_id INT,
    rating DECIMAL(2, 1),
    FOREIGN KEY(movie_id) REFERENCES movies(id),
    FOREIGN KEY(reviewer_id) REFERENCES reviews(id)
);

-- insert values into tables
INSERT INTO 
    movies(title, director, genre, runtime, release_year)
VALUES
    ('Insurgent', 'Robert Schwentke', 'Adventure', 119, 2015),
    ('Jurassic World', 'Colin Trevorrow', 'Action', 124, 2015),
    ('Black Hawk Down', 'Ridley Scott', 'Action', 144, 2001),
    ('Alien', 'Ridley Scott', 'Horror', 117, 1979),
    ('Gran Torino', 'Clint Eastwood', 'Drama', 116, 2008),
    ('Avatar', 'James Cameron', 'Action', 162, 2009), 
    ('The Martian', 'Ridley Scott', 'Adventure', 141, 2015),
    ('The Shawshank Redemption', 'Frank Darabont', 'Drama', 142, 1994),
    ('Midnight in Paris', 'Woody Allen', 'Fantasy',  94, 2011),
    ('Mad Max: Fury Road', 'George Miller', 'Action', 120,2015),
    ('The Art of Getting By', 'Gavin Wiesen', 'Drama', 83, 2011),
    ('Safety Not Guaranteed', 'Colin Trevorrow', 'Comedy', 85, 2012),
    ('RED', 'Robert Schwentke', 'Action', 111, 2010), 
    ('Annie Hall', 'Woody Allen', 'Comedy', 93, 1977),
    ('Black Rain', 'Ridley Scott', 'Action' , 125,1989),
    ('Interiors', 'Woody Allen', 'Drama', 93, 1978),
    ('The Hunger Games', 'Gary Ross', 'Science Fiction', 142, 2012),
    ('End of the Line', 'Maurice Devereaux', 'Horror', 95, 2007),
    ('The Wolf of Wall Street', 'Martin Scorsese', 'Crime', 180, 2013),
    ('Happy Feet', 'George Miller', 'Music', 108, 2006),
    ('American Sniper', 'Clint Eastwood', 'War', 134, 2014),
    ('The Lost World',  'Irwin Allen', 'Adventure', 97, 1960);                

INSERT INTO reviewers (first_name, last_name)
VALUES 
    ('Paul', 'Anderson'), ('Mary', 'Rita'),
    ('Danny', 'Might'), ('Debby', 'Praise'),
    ('Maco', 'Einstein'), ('Thompson', 'Stone'),
    ('Josh', 'Mane'), ('George', 'Snow'),
    ('Simon', 'Peter'), ('David', 'Lius');

INSERT INTO reviews (movie_id, reviewer_id, rating)
VALUES 
    (1, 1, 6.0), (1, 2, 5.5), (1, 3, 5.9), (1, 4, 6.5), (1, 5, 6.9),
    (2, 1, 8.0), (2, 4, 7.9), (2, 3, 8.3), (2, 6, 8.5), (2, 5, 8.9),
    (3, 1, 6.5), (3, 6, 7.5), (3, 4, 5.9), (3, 3, 7.0), (3, 5, 6.3),
    (4, 1, 6.0), (4, 3, 5.5), (4, 4, 5.9), (4, 2, 6.5), (4, 5, 6.9),
    (5, 1, 5.0), (5, 3, 6.1), (5, 4, 5.9), (5, 2, 5.5), (5, 5, 5.1),
    (6, 2, 9.0), (6, 3, 9.5), (6, 4, 8.9), (6, 2, 9.7), (6, 5, 9.2),
    (7, 2, 6.0), (7, 4, 5.5), (7, 9, 5.9), (7, 3, 6.5),
    (8, 4, 8.7), (8, 2, 7.9), (8, 6, 8.8), 
    (10, 3, 9.8), (10, 4, 9.7), (10, 6, 9.5), (10, 7, 9.4), (9, 5, 9.6),
    (11, 6, 5.0), (11, 7, 6.1), (11, 2, 5.9), 
    (13, 6, 6.8), (13, 5, 6.2), (13, 3, 7.0), (13, 2, 5.5), (13, 1, 5.1),
    (14, 1, 5.7), (14, 4, 6.1), (14, 5, 5.9), 
    (17, 1, 9.8), (17, 3, 9.8), (17, 4, 9.9), (17, 2, 9.5), (17, 5, 9.6),
    (19, 3, 7.9), (19, 2, 8.0), (19, 5, 8.1), (19, 9, 8.2), (19, 4, 8.2),
    (21, 2, 8.7), (21, 4, 8.5), 
    (10, 1, 5.0); 