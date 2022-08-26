USE test_db;
SHOW TABLES FROM test_db;

-- display the month each patients were vaccinated 
SELECT 
	patient_name, MONTHNAME(vaccine_date)  AS 'month name'
FROM patients;

-- display a formatted datetime
SELECT
	CONCAT(
		patient_name,
		' was vaccinated on the ',
                        DATE_FORMAT(vaccine_datetime, '%D of December %Y'),
                        ' at ',
                        DATE_FORMAT(vaccine_datetime, '%r')
                        ) AS 'vaccine info'
FROM patients;