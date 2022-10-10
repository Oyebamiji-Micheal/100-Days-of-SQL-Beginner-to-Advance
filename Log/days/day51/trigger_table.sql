CREATE DATABASE trigger_test;
USE trigger_test;

-- define table schema 
CREATE TABLE results(
    id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100),
    course_code VARCHAR(225),
    score INT,
    admin_name VARCHAR(100),
    last_updated TIMESTAMP DEFAULT NOW()
);

CREATE TABLE admin_log(
    admin_name VARCHAR(100),
    admin_log VARCHAR(255)
);

-- insert values into tables
INSERT INTO results(student_name, course_code, score, admin_name)
VALUES 
    ('Mary Jane', 'MAT321', 71, 'Paul Anderson'),
    ('John Doe', 'STA141', 65, 'Steve Joe'),
    ('Alan Smith', 'PHY101', 54, 'Paul Anderson'),
    ('Mike Newton', 'CSC301', 61, 'Timothy Emma'),
    ('Gabriella Sanders', 'CSC235', 75, 'Steve Joe');