USE test_db;
SHOW TABLES FROM test_db;

SELECT * FROM patients;

-- insert a new patient
INSERT INTO 
	patients (patient_name, vaccine_date, vaccine_time, vaccine_datetime)
VALUES  
	('Mike', CURDATE(), CURTIME(), NOW());

-- display a formatted date data
SELECT 
	patient_name, 
            DAY(vaccine_date) AS 'date', 
            DAYNAME(vaccine_date) AS 'day',
            DAYOFWEEK(vaccine_date) AS 'week day',
            DAYOFYEAR(vaccine_date) 'day of year',
            YEAR(vaccine_date) AS 'year'
FROM patients

