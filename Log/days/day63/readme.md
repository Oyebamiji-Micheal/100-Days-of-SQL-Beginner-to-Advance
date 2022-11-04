# 100 Days of SQL Beginner to Advance
## Pivot

Today, I learned how to pivot data - basically transforming the rows of a query output to columns. 

*It is to be noted that in MySQL, there is no PIVOT feature or keyword*

*The tables used were created on the [48th day](https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/tree/master/Log/days/day48th) of this challenge. For the sake of reference, below are the first four rows of each table...*

```student_profile```

| id | student_name     | current_level | faculty             | department | last_updated        |
|:--:|:----------------:|:-------------:|:-------------------:|:----------:|--------------------:|
|  1 | Rose Vang        |           100 | Science             | Physics    | 2022-10-04 16:15:04 |
|  2 | Jimmy Wang       |           500 | College of Medicine | Nursing    | 2022-10-04 16:15:04 |
|  3 | Kailani Browning |           100 | Social Sciences     | Psychology | 2022-10-04 16:15:04 |
|  4 | Rohan Hogan      |           100 | Social Sciences     | Psychology | 2022-10-04 16:15:04 |

```courses```
| id | course_code | course_description                       |
|:--:|:-----------:|:----------------------------------------:|
|  1 | CLA100      | Introduction to Speech Composition       |
|  2 | CLA105      | Public Speaking                          |
|  3 | CLA155      | Introduction to Digital Media Production |
|  4 | CLA181      | Elements of Speech-Honors Course         |

```students_profile```
| profile_id | course_id | score | last_updated        |
|:----------:|:---------:|:-----:|:-------------------:|
|          1 |         5 |    96 | 2022-10-04 16:15:06 |
|          1 |       139 |    77 | 2022-10-04 16:15:06 |
|          1 |       140 |    95 | 2022-10-04 16:15:06 |
|          1 |       141 |    58 | 2022-10-04 16:15:06 |

<br> 

Suppose the question 'Calculate the total number of students across all levels in the same faculty' was asked. A direct answer would look like

```SQL
USE rdms;

SELECT 
	current_level, faculty, 
    COUNT(students_profile.id) AS no_of_student
FROM students_profile
JOIN results 
	ON results.profile_id = students_profile.id
JOIN courses
	ON courses.id = students_profile.id
GROUP BY current_level, faculty
LIMIT 5;
```

| current_level | faculty         | no_of_student |
|--------------:|:---------------:|:--------------:|
|           100 | Science         |             65 |
|           100 | Social Sciences |             66 |
|           200 | Social Sciences |             39 |
|           300 | Social Sciences |             32 |
|           100 | Technology      |             96 |

<br>

In some cases however, the output below might be the required format (pivot)

| faculty         | 100 | 200 | 300 | 400 | 500 | 600 | 700 |
|:---------------:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| Science         |  65 |  82 |  57 |  55 |   0 |   0 |   0 |
| Social Sciences |  66 |  39 |  32 |  24 |   0 |   0 |   0 |
| Technology      |  96 |  65 |  59 |  62 |   0 |   0 |   0 |
| Education       |  98 |  42 |  60 |  45 |   0 |   0 |   0 |
| Arts            |  37 |  24 |  44 |  52 |   9 |   0 |   0 |


```SQL
USE rdms;

SELECT
	faculty,
        COUNT(CASE WHEN current_level = 100 THEN students_profile.id END) AS '100',
	    COUNT(CASE WHEN current_level = 200 THEN students_profile.id END) AS '200',
        COUNT(CASE WHEN current_level = 300 THEN students_profile.id END) AS '300',
        COUNT(CASE WHEN current_level = 400 THEN students_profile.id END) AS '400',
        COUNT(CASE WHEN current_level = 500 THEN students_profile.id END) AS '500',
        COUNT(CASE WHEN current_level = 600 THEN students_profile.id END) AS '600',
        COUNT(CASE WHEN current_level = 700 THEN students_profile.id END) AS '700'
FROM students_profile
JOIN results 
	ON results.profile_id = students_profile.id
JOIN courses
	ON courses.id = students_profile.id
GROUP BY faculty
LIMIT 5;
```

When would one format be preferred over the other?     
Well doesn't to know both, does it?