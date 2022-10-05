# 100 Days of SQL
## Day49: Practice 

A couple of [days](https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/tree/master/Log/days/day47) ago, I generated profile information and result for all 1000 random names I extracted [online](https://1000randomnames.com/). Today, I will be solving a lot of exercises by answering questions in relation to the schema I defined. Before I delve into the exercises however, the following are the new clauses, functions and concepts I picked up along the way.

- `HAVING` 
- `GROUP_CONCAT`
- `NULLIF`
- `IF()`
- Multiple `SELECT` statements
  
Since there are hundreds of records in the database, large query result will be limited to 5 rows

**Exercises**

Write SQL queries to perform the following tasks:

A. Count the number of student from each department. Sample output below...
| department | no_of_student |
|:----------:|:-------------:|
| Physics    |            26 |
| Nursing    |            55 |
| Psychology |            52 |
| Geology    |            55 |
| Economics  |            59 |

B. Which faculty has the highest number of student?

C. Count the number of students across each level in the faculty of science. Sort result by student level in ascending order.

D. Write sql query to assign a grade to each student's result. Use the format below as a guide.
|    score  |   grade   |
|:---------:|:----------|
| 100 - 70  |   A       |
| 69 - 60   |   B       |
| 59 - 45   |   C       |
| 44 - 0    |   F       |

Sample result below...
| profile_id | course_id | score | grade |
|:----------:|:---------:|:-----:|:-----:|
|          1 |         5 |    96 | A     |
|          1 |       139 |    77 | A     |
|          1 |       140 |    95 | A     |
|          1 |       141 |    58 | C     |
|          1 |       177 |    51 | C     |

E. Count the number of students across each grade. Sample result below...
| grade | number_of_students  |
|:-----:|:-------------------:|
| A     |                2056 |
| B     |                 696 |
| C     |                1037 |
| F     |                 357 |


F. Show all levels with one or more student across each department. Your result should follow the format below...
| department                      | available_levels        |
|:-------------------------------:|------------------------:|
| Adult Education                 | 100, 200, 300, 400, 500 |
| Biochemistry                    | 100, 200, 300, 400, 500 |
| Civil Engineering               | 100, 200, 300, 400, 500 |
| Communication and Language Arts | 100, 200, 300, 400, 500 |
| Computer Science                | 100, 200, 300, 400, 500 |

And that is a wrap for today. Tomorrow, I will join the tables and answer interesting questions in relation to the data. 

Reference Materials
- [javaTpoint](https://www.javatpoint.com/mysql)
- [MySQL 8.0 Documentation](https://dev.mysql.com/doc/refman/8.0/en/preface.html)