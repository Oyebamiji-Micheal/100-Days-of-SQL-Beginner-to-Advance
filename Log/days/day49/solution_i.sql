USE rdms;

-- count the number of student from each department
SELECT 
            department, 
            COUNT(department) AS 'no_of_student'
FROM students_profile 
GROUP BY department
LIMIT 5;

-- display faculty with the highest number of student
SELECT 
            faculty, 
            COUNT(faculty) AS 'no_of_student'
FROM students_profile 
GROUP BY faculty
ORDER BY no_of_student DESC
LIMIT 1;

-- count the number of students across each level in the faculty of science
SELECT 
	faculty, 
            current_level, 
            count(*) 
FROM students_profile 
WHERE faculty = 'Science'
GROUP BY faculty, current_level
ORDER BY current_level;

-- assign a grade to each student's result
SELECT 
	profile_id, 
            course_id,
            score,
            CASE
		WHEN score < 45 THEN 'F'
                        WHEN score < 60 THEN 'C'
                        WHEN score < 70 THEN 'B'
                        ELSE
			'A'
            END AS 'grade'
FROM results
LIMIT 5;

-- count the number of students across each grade
SELECT 
            CASE
		WHEN score < 45 THEN 'F'
                        WHEN score < 60 THEN 'C'
                        WHEN score < 70 THEN 'B'
                        ELSE
			'A'
            END AS 'grade',
	count(*) AS 'number_of_students'
FROM results
GROUP BY grade
ORDER BY grade;

-- all levels with one or more student across each department
SELECT 
	department,
            GROUP_CONCAT(
		DISTINCT current_level
                        ORDER BY current_level
                        SEPARATOR ', ') AS 'available_levels'
FROM students_profile 
GROUP BY department
LIMIT 5;