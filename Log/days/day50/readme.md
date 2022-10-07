# 100 Days of SQL Beginner to Advance
## Day 50: More on Joins 

I am now half way into completing this challenge. It has been an interesting journey so far... 😊

For the past couple of days, I've been practicing SQL clauses, functions and so on using the random data I generated. Today, I will practice inner join, left join, right join and other SQL functions and clauses.

For the sake of reference, below are the first four rows of each table...


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

Since there are hundreds of records in the database, large query result will be limited to 5 rows

**Exercises**

Note: The data is generated in such a way that all students who wrote an exam have a corresponding score. 

Write SQL queries to perform the following tasks:

A. How many students wrote 'GES101' exam? Sample result below...

| course_code | course_description | no_of_students |
|:-----------:|:------------------:|---------------:|
| GES101      | Use of English I   |            197 |


B. Show all students from the faculty of science who wrote 'GES101' exam? Sample result below...

| course_code | course_description | faculty | department   | student_name    | current_level | score |
|:-----------:|:------------------:|--------:|-------------:|:---------------:|--------------:|:-----:|
| GES101      | Use of English I   | Science | Physics      | Rose Vang       |           100 |    96 |
| GES101      | Use of English I   | Science | Mathematics  | Orlando Barker  |           100 |    76 |
| GES101      | Use of English I   | Science | Mathematics  | Amira Pitts     |           100 |    85 |
| GES101      | Use of English I   | Science | Microbiology | Alivia Travis   |           100 |    64 |
| GES101      | Use of English I   | Science | Mathematics  | Gideon Arellano |           100 |    63 |


C. Show all students from the faculty of Technology who wrote 'GES201' exam? Sample result below...

| course_code | course_description | faculty | department   | student_name    | current_level | score |
|:-----------:|:------------------:|--------:|-------------:|:---------------:|--------------:|:-----:|
| GES201| Use of English II  | Technology | Mechanical Engineering | Jimena Conway     |200 |    78 |
| GES201| Use of English II  | Technology | Civil Engineering      | Lola Weber        |200 |    83 |
| GES201| Use of English II  | Technology | Civil Engineering      | Alijah Washington |200 |    86 |
| GES201| Use of English II  | Technology | Mechanical Engineering | Avianna Avery     |200 |    54 |
| GES201| Use of English II  | Technology | Civil Engineering      | Lina Shannon      |200 |    94 |


D. Display the total number of courses offered by all departments in the faculty of arts across all levels. Note that students wrote corresponding exam for each course they offer. Sample result below...

| department                      | current_level | number_of_courses  |
|:-------------------------------:|:-------------:|-------------------:|
| Communication and Language Arts |           100 |                  5 |
| Communication and Language Arts |           200 |                  5 |
| Communication and Language Arts |           300 |                  4 |
| Communication and Language Arts |           400 |                  4 |
| History                         |           100 |                  5 |


E. Display the highest score in each course relative to statistics department, 100 level. Sample result below 

| department | course_code | course_description                   | maximum_score |
|:----------:|:-----------:|:------------------------------------:|:-------------:|
| Statistics |         100 | Use of English I                     |            78 |
| Statistics |         100 | Introduction to Programming          |            82 |
| Statistics |         100 | Algebra                              |            80 |
| Statistics |         100 | Introduction to Probability Theory I |            87 |
| Statistics |         100 | Introductory Heat and Thermodynamics |            77 |


F. Display students with no results. Sample result below...

| student_name      | faculty | department                             | course_id | score |
|:----------:|:-----------:|:------------------------------------:|:-------------:|:------:|
| Jimmy Wang        |     500 | Nursing                                |      NULL |  NULL |
| Kennedi Cooper    |     500 | Mathematics                            |      NULL |  NULL |
| Jonathan Lim      |     500 | Electrical and Electronics Engineering |      NULL |  NULL |
| Remington Wiggins |     500 | Civil Engineering                      |      NULL |  NULL |
| Livia Blackwell   |     500 | Communication and Language Arts        |      NULL |  NULL |


G. What can you say about the result from 'F'.

The students exam records have not been updated i.e. not present in the table!
