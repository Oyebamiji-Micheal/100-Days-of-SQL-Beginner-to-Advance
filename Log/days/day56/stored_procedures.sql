USE rdms;

-- display students profile info
DELIMITER $$
CREATE PROCEDURE display_students_profile ()
BEGIN
	SELECT * FROM students_profile LIMIT 5;
END $$
DELIMITER ;

-- display profile info of 100 students from the faculty of science
DELIMITER $$
CREATE PROCEDURE display_first_year_science ()
BEGIN
	SELECT * FROM students_profile
	WHERE 
		current_level = 100 AND 
		faculty = 'Science'
	LIMIT 5;
END $$
DELIMITER ;

-- display no of students from the given department 
DELIMITER $$
CREATE PROCEDURE no_of_students_department (IN given_department VARCHAR(100))
BEGIN
	SELECT 
		department, 
		COUNT(department) AS 'no_of_students'
	FROM students_profile
	WHERE students_profile.department = given_department;
END $$

-- display no of students from the given department  who offer ges101
DELIMITER $$
CREATE PROCEDURE no_of_students_ges(given_faculty VARCHAR(100))
BEGIN
	SELECT 
		given_faculty, 
		course_code,
		course_description,
		COUNT(given_faculty) AS 'no_of_students'
	FROM students_profile
	JOIN results 
		ON students_profile.id= results.profile_id
	JOIN courses 
		ON results.course_id = courses.id
	WHERE faculty = given_faculty;
END $$