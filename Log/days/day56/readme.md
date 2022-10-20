# 100 Days of SQL Beginner to Advance
## Day56: Introduction to Stored Procedures

*The database (`rdms`) and tables used were created on the [47th day](https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/tree/master/Log/days/day47) of this challenge. For the sake of reference, below are the first four rows of each table in the database...*


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

Today, I was introduced to stored procedures in MySQL and I learned the following concepts 

- A stored procedure is a set of SQL statements that is stored in the server. Once this has been done, clients don't need to keep reissuing the individual statements but can refer to them instead.

- A procedure always contains a name, parameter lists, and SQL statements.

- Stored procedures can be invoked using triggers, other procedures and programming languages such as Java, Python, PHP, etc.

- Stored procedures can act as an API or abstraction layer, allowing multiple client applications to perform the same database operations.

- Stored procedure reduces the traffic between application and database server. Because the application has to send only the stored procedure's name and parameters instead of sending multiple SQL statements.

- By default, a procedure is associated with our current database. Below is a basic syntax for creating a stored procedure in MySQL

    ```SQL
    DELIMITER &&  
    CREATE PROCEDURE procedure_name (mode parameter_name datatype) 
    BEGIN    
        Declaration_section    
        Executable_section    
    END &&  
    DELIMITER ;   
    ```

    MySQL procedure parameter has one of three modes: `IN`, `OUT`, `INOUT`.
    It is to be noted that a procedure cannot access the OUT parameter's initial value when execution starts.

- Stored procedures can be called using the syntax below 
    ```SQL
    CALL procedure_name ( parameter(s))  
    ```

- Stored procedures are dropped using the syntax below 

    ```SQL
    DROP PROCEDURE [ IF EXISTS ] procedure_name;    
    ```

- One of the drawbacks of using stored procedures include increase in memory and CPU usage.

- Stored procedures are difficult to debug and uneasy to maintain.

<br>

## Exercise 
Since there are hundreds of records in the database, procedure outputs should be limited to 5 rows. Also, recall that the data is generated in such a way that all students who wrote an exam have a corresponding score. 

Using the tables defined above, write stored procedures which when invoked 

**No Parameter**

1. Displays all students profile.
  
2. Displays profile info of all 100 students from the faculty of science.

**IN Parameter**

3. Takes a parameter, `department` , and displays the number of students in the given department.

4. Takes a parameter, `faculty` , and displays the number of students in the given faculty who offer 'GES101'. 

**OUT Parameter**

5. Returns the highest score in 'MAT121'. 

**INOUT Parameter**

6. More on INOUT Parameter and stored procedures will be learned in subsequent learnings...