-- create and use a new database 
CREATE DATABASE vaccine_report;
USE vaccine_report;

-- define schema
CREATE TABLE hospital1(
    patient_name VARCHAR(50),
    vaccine_year YEAR,
    dose VARCHAR(10)
);

CREATE TABLE hospital2(
    patient_name VARCHAR(50),
    vaccine_year YEAR,
    dose VARCHAR(10)
);

-- insert values into tables
INSERT INTO 
    hospital1(patient_name, vaccine_year, dose)
VALUES 
    ('Micheal Tom', 2021, 'first'),
    ('John Silver', 2022, 'first'),
    ('Smith Joe', 2022, 'second'),
    ('Paul Stone', 2021, 'first');
            
INSERT INTO 
    hospital2(patient_name, vaccine_year, dose)
VALUES
    ('John Silver', 2022, 'first'),
    ('Micheal Tom', 2022, 'second'),
    ('Paul Stone', 2022, 'second'),
    ('Thomas Anderson', 2022, 'first');