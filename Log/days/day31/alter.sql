USE vaccine_report;

-- show all entries in table
SELECT * FROM hospital1;

-- add a new column 'vaccine_date' with a default value of 'NULL'
ALTER TABLE hospital1
ADD COLUMN vaccine_date DATE DEFAULT NULL;
SELECT * FROM hospital1;

-- modify patient_name; force column not to allow `NULL` values.
ALTER TABLE hospital1
MODIFY COLUMN patient_name VARCHAR(50) NOT NULL;
DESC hospital1;

-- drop column vaccine_date
ALTER TABLE hospital1
DROP COLUMN vaccine_date;
SELECT * FROM hospital1;

-- rename 'dose' column to 'vaccine dose'
ALTER TABLE hospital1
CHANGE COLUMN dose vaccine_dose VARCHAR(10);
SELECT * FROM hospital1;

-- rename table to 'first_hospital'
ALTER TABLE hospital1
RENAME TO first_hospital;
SHOW TABLES;