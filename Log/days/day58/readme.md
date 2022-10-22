# 100 Days of SQL Beginner to Advance
## Day 58: Window Functions: Ranking

*It is to be noted that MySQL did not support window functions until version 8.0 (April 19, 2018).*

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

### Ranking Funtions 
`ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`

Today, I learned the following about ranking functions

- MySQL uses a ranking function to rank each row of a partition in the database.

- Ranking functions always work with the OVER() clause and they assign a rank in sequential order to each row based on the ORDER BY clause.

- The ROW_NUMBER() function in MySQL is used to returns the sequential number for each row within its partition. Syntax below...

    ```SQL
    ROW_NUMBER() OVER (<partition_definition> <order_definition>)  
    ```

- dense_rank: assigns a rank for every row within a partition or result set without any gaps. The rank of rows is always assigned in consecutive order (increased by one from the previous row). Sometimes you will get a tie between the values, then the dense_rank will assign it with the same rank, and its next rank will be its next consecutive number. Syntax below...
    
    ```SQL
    SELECT column_name   
    DENSE_RANK() OVER (  
        PARTITION BY expression  
        ORDER BY expression [ASC|DESC])  
    AS 'my_rank' FROM table_name;  
    ```

- rank: assigns a rank for every row within a partition or result set with gaps. The rank of rows is always not-assigned in a consecutive order (i.e., increased by one from the previous row). Sometimes you will get a tie between the values, then the rank() function will assign it with the same rank, and the next rank value will be its previous rank plus a number of duplicate numbers. Syntax below

    ```SQL
    SELECT column_name   
    RANK() OVER (  
        PARTITION BY expression  
        ORDER BY expression [ASC|DESC])  
    AS 'my_rank' FROM table_name;  
    ```

<br>


### Exercise
*The dataset is generated in such a way that all students who wrote an exam have a corresponding score. Also, since there are hundreds of records in the database, large query result should be limited to 10 rows*

1.. Write SQL query to rank the score in 'GES101'. The ranking should be calculated according to the following rules

- The scores should be ranked from the highest to the lowest.

- If there is a tie between two scores, both should have the same ranking.

- After a tie, the next ranking number should be the next consecutive integer value. In other words, there should be no holes between ranks.

- Return the result table ordered by score in descending order.

Below is the query result format...

| student_name      | department | course_code | course_description | score | stu_rank |
|:-----------------:|:----------:|:-----------:|:------------------:|:-----:|:---------:|
| Bridget Velasquez | Civil Engineering | GES101      | Use of English I   |    99 |        1 |
| Presley Maddox    | Adult Education   | GES101      | Use of English I   |    99 |        1 |
| Kian Williamson   | Adult Education   | GES101      | Use of English I   |    99 |        1 |
| Ariel Richards    | Adult Education   | GES101      | Use of English I   |    99 |        1 |
| Winston Molina    | History           | GES101      | Use of English I   |    98 |        2 |
| Isabella Williams | Biochemistry      | GES101      | Use of English I   |    98 |        2 |
| Aries Johns       | Biochemistry      | GES101      | Use of English I   |    98 |        2 |
| Giavanna Soto     | Nursing           | GES101      | Use of English I   |    97 |        3 |
| Collin Fox        | Communication and Language Arts | GES101 | Use of English I   |    97 | 3 |
| Rose Vang         | Physics           | GES101      | Use of English I   |    96 |        4 |

<br>

2.. Modify the above result such that after a tie, the next ranking number should be the count of the previous rows plus one. In other words, there can be holes between ranks. Sample result below 

| student_name      | department | course_code | course_description | score | stu_rank |
|:-----------------:|:----------:|:-----------:|:------------------:|:-----:|:---------:|
| Bridget Velasquez | Civil Engineering | GES101      | Use of English I   |    99 |        1 |
| Presley Maddox    | Adult Education  | GES101      | Use of English I   |    99 |        1 |
| Kian Williamson   | Adult Education | GES101      | Use of English I   |    99 |        1 |
| Ariel Richards    | Adult Education | GES101      | Use of English I   |    99 |        1 |
| Winston Molina    | History         | GES101      | Use of English I   |    98 |        5 |
| Isabella Williams | Biochemistry    | GES101      | Use of English I   |    98 |        5 |
| Aries Johns       | Biochemistry    | GES101      | Use of English I   |    98 |        5 |
| Giavanna Soto     | Nursing         | GES101      | Use of English I   |    97 |        8 |
| Collin Fox        | Communication and Language Arts | GES101      | Use of English I   |    97 | 8 |
| Rose Vang         | Physics         | GES101      | Use of English I   |    96 |       10 |

<br>

### Reference Material
- [javaTpoint](https://www.javatpoint.com/mysql-ranking-functions)
- [LeetCode](https://leetcode.com/problems/rank-scores/)