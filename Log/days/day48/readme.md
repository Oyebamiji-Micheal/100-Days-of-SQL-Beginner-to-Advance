# 100 Days of SQL: Beginner to Advance 
## Day48: Result Database Management System (RDMS)
### Project Schema Design II

Yesterday, I was able to generate profile information for all 1000 random names I extracted online. Today, I generated random result for all students then continue the project schema design.

It would be a real pain trying to manually assign results to all 1000 names and also trying to define the relationship between a student's profile id, course id and result. With just few lines of code however, I was able to automate this process using python. 

The scores are randomly generated. Hence, there should be no comparison between students' departments and their respective scores 😑. The data is generated for the sake of practice only! 

Below is the first four rows of each table

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

Obviously, a real world result management system would use more than just three tables. However, for the sake of practice and simplicity, I have used three tables. In the next couple of days, I will be building my muscle memory on the concepts I have learned so far by practicing with these tables.  