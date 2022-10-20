CREATE DATABASE IF NOT EXISTS view_practice_db;
USE view_practice_db;

CREATE TABLE programmers(
    id INT PRIMARY KEY AUTO_INCREMENT, 
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

CREATE TABLE majors(
    programmer_id INT, 
    major VARCHAR(100),
    FOREIGN KEY(programmer_id) REFERENCES programmers(id)
);

INSERT INTO programmers(first_name, last_name)
VALUES 
    ('Paul', 'Anderson'), ('Nicolas', 'Strong'),
    ('Angelina', 'Mary'), ('Gabriella', 'Jane'),
    ('Debby', 'Praise'), ('Maco', 'Einstein');

INSERT INTO majors(programmer_id, major)
VALUES 
    (1, 'Web Developer'), (2, 'Data Analyst'),
    (4, 'Data Scientist'), (5, 'Software Developer');