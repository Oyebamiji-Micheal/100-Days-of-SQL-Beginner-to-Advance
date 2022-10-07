USE rdms;
-- number of students who wrote 'GES101' exam
SELECT 
	course_code, 
	course_description,
	COUNT( profile_id) AS 'no_of_students'
FROM courses 
INNER JOIN results 
	ON courses.id = results.course_id
WHERE course_code = 'GES101';

--  students from the faculty of science who wrote 'GES101' exam
SELECT 
	course_code, course_description,
	faculty, department,
	student_name, current_level,
	score
FROM courses 
INNER JOIN results 
	ON courses.id = results.course_id
INNER JOIN students_profile 
	ON results.profile_id = students_profile.id
WHERE 
	course_code = 'GES101' AND 
	faculty = 'Science'
LIMIT 5;

--  students from the faculty of technology 
-- who wrote 'GES201' exam
SELECT 
	course_code, course_description,
	faculty, department,
	student_name, current_level,
	score
FROM courses 
INNER JOIN results 
	ON courses.id = results.course_id
INNER JOIN students_profile 
	ON results.profile_id = students_profile.id
WHERE 
	course_code = 'GES201' AND 
	faculty = 'Technology'
LIMIT 5;

-- number of courses offered by all departments  
-- in the faculty of arts across all levels
SELECT 
	department, current_level,
	COUNT(DISTINCT course_code) AS 'number_of_courses'
FROM courses 
INNER JOIN results 
	ON courses.id = results.course_id
INNER JOIN students_profile 
	ON results.profile_id = students_profile.id
WHERE 
	faculty = 'Arts'
GROUP BY department, current_level
LIMIT 5;

-- display the highest score in each course 
-- relative to statistics department, 100 level
SELECT 
	department, current_level
	course_code, course_description,
	max(score) AS 'maximum_score'
FROM courses 
INNER JOIN results 
	ON courses.id = results.course_id
INNER JOIN students_profile 
	ON results.profile_id = students_profile.id
WHERE 
	department = 'Statistics' AND 
	current_level = 100
GROUP BY course_code;

-- students with no exam record
SELECT 
	student_name, current_level
	faculty, department,
	course_id, score
FROM students_profile
LEFT JOIN results
	ON students_profile.id = results.profile_id
WHERE course_id IS NULL
LIMIT 5;