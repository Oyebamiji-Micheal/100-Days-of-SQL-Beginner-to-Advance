USE rdms;

-- solution to question one
SELECT 
    student_name, department,
    course_code, course_description,
    score, 
    DENSE_RANK() OVER(ORDER BY  score DESC) AS stu_rank
    FROM results
JOIN courses 
    ON courses.id = results.course_id
JOIN students_profile
    ON results.profile_id = students_profile.id
WHERE course_code = 'GES101'
LIMIT 10;

-- solution to question two
SELECT 
    student_name, department,
    course_code, course_description,
    score, 
    RANK() OVER(ORDER BY  score DESC) AS stu_rank
    FROM results
JOIN courses 
    ON courses.id = results.course_id
JOIN students_profile
    ON results.profile_id = students_profile.id
WHERE course_code = 'GES101'
LIMIT 10;
