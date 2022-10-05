SHOW DATABASES;

-- create and use a new database 
CREATE DATABASE test_db;
USE test_db;

-- create a new table 
CREATE TABLE patients(
	patient_name VARCHAR(50),
    vaccine_date DATE,
    vaccine_time TIME,
    vaccine_datetime DATETIME
);

-- insert values into patients table
INSERT INTO 
	patients(patient_name, vaccine_date, vaccine_time, vaccine_datetime)
VALUES 
	('Micheal', '2022-03-20', '10:32:00', '2022-03-20 10:32:00'),
    ('Oyebamiji', '2022-06-12', '06:14:41', '2022-06-12 06:14:41'),
    ('Tomiwa', '2021-12-12', '14:28:20', '2021-12-12 14:28:20');