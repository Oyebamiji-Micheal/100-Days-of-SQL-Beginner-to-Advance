USE test_db;
SHOW TABLES FROM test_db;

-- show how long ago(days) each patient was vaccinated
SELECT 
	patient_name,  DATEDIFF(NOW(), vaccine_date) 
FROM patients;

-- add a month to each patient's date
SELECT 
	patient_name, 
            vaccine_datetime AS 'first dose',
            DATE_ADD(vaccine_datetime, INTERVAL 1 MONTH) AS 'second dose'
FROM patients;
