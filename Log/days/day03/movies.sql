CREATE DATABASE movie_db;
USE movie_db;

CREATE TABLE 
    movies(
    	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    	title VARCHAR(50) NOT NULL,  
        director VARCHAR (50) NOT NULL,
        genre VARCHAR(50) NOT NULL  DEFAULT 'Unspecified', 
        runtime INT,
        release_year INT,
        vote_count INT
);
                        
INSERT INTO 
    movies(title, director, genre, runtime, release_year, vote_count)
VALUES
    ('Insurgent', 'Robert Schwentke', 'Adventure', 119, 2015, 2480),
    ('Jurassic World', 'Colin Trevorrow', 'Action', 124, 2015, 5562),
    ('Black Hawk Down', 'Ridley Scott', 'Action', 144, 2001, 1201),
    ('Alien', 'Ridley Scott', 'Horror', 117, 1979, 2724),
    ('Gran Torino', 'Clint Eastwood', 'Drama', 116, 2008, 1809),
    ('Avatar', 'James Cameron', 'Action', 162, 2009, 8458), 
    ('The Martian', 'Ridley Scott', 'Adventure', 141, 2015, 457),
    ('The Shawshank Redemption', 'Frank Darabont', 'Drama', 142, 1994, 5754),
    ('Midnight in Paris', 'Woody Allen', 'Fantasy',  94, 2011, 1117),
    ('Mad Max: Fury Road', 'George Miller', 'Action', 120,2015,6185),
    ('The Art of Getting By', 'Gavin Wiesen', 'Drama', 83, 2011, 259),
    ('Safety Not Guaranteed', 'Colin Trevorrow', 'Comedy', 85, 2012, 341),
    ('RED', 'Robert Schwentke', 'Action', 111, 2010, 2064), 
    ('Annie Hall', 'Woody Allen', 'Comedy', 93, 1977, 493),
    ('Black Rain', 'Ridley Scott', 'Action' , 125,1989, 114),
    ('Interiors', 'Woody Allen', 'Drama', 93, 1978, 35),
    ('The Hunger Games', 'Gary Ross', 'Science Fiction', 142, 2012, 7080),
    ('End of the Line', 'Maurice Devereaux', 'Horror', 95, 2007, 10),
    ('The Wolf of Wall Street', 'Martin Scorsese', 'Crime', 180, 2013, 4027),
    ('Happy Feet', 'George Miller', 'Music', 108, 2006, 876),
    ('American Sniper', 'Clint Eastwood', 'War', 134, 2014, 3004),
    ('The Lost World',  'Irwin Allen', 'Adventure', 97, 1960, 11); 