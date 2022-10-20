# 100 Days of SQL Beginner to Advance  
## Day55: MySQL Stored Objects: Views

A database, `view_practice_db`, along with the tables below, has been created for the sake of practice or reference.

<img src="https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/blob/master/Log/days/day55/images/image1.png">

`programmers`

| id | first_name | last_name |
|:--:|:----------:|:---------:|
|  1 | Paul       | Anderson  |
|  2 | Nicolas    | Strong    |
|  3 | Angelina   | Mary      |
|  4 | Gabriella  | Jane      |
|  5 | Debby      | Praise    |
|  6 | Maco       | Einstein  |

`majors`
| programmer_id | major              |
|:-------------:|:------------------:|
|             1 | Web Developer      |
|             2 | Data Analyst       |
|             4 | Data Scientist     |
|             5 | Software Developer |

<br>

## Notes 

- Views are stored queries that when invoked produce a result set. A view acts as a virtual table and its contents are based on the base table.

- Below is the syntax for creating views in MySQL
  
    ```SQL
    CREATE [OR REPLACE] VIEW view_name AS    
    SELECT columns    
    FROM tables     
    [WHERE conditions];    
    ```

- Below is the syntax for dropping views
  
    ```SQL DROP VIEW [IF EXISTS] view_name; ```
    
- Views provide an additional level of table security by restricting access to a predetermined set of rows and columns of a table.

- If any changes occur in the underlying table, the same changes are reflected in the View also and vice versa.

    Suppose a view, `majors_view`, is created on `majors`.

    <img src="https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/blob/master/Log/days/day55/images/image2.png">

    Also, suppose the major of the programmer with an id of 1 is changed in the view table (`majors_view`), then the same change will be applied on the base table (`majors`).
   
    <img src="https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/blob/master/Log/days/day55/images/image3.png">

    The reverse of the above point holds true!


- It is operated similarly to the base table but does not contain any data of its own. Views are just definitions built on top of other tables (or views). 

- A view is not updatable if it contains any of the following: Aggregate functions or window functions, DISTINCT, GROUP BY, HAVING, UNION or UNION ALL and so on.

- Views are used to simplify complex queries. Views created on complex queries can afterwards be used with a simple `SELECT` statement instead of typing the complex query again.

- Views are included in the result from `SHOW TABLES`.

- Lastly, `WITH CHECK OPTION`. The WITH CHECK OPTION clause can be given for an updatable view to prevent inserts to rows for which the WHERE clause in the select_statement is not true. It also prevents updates to rows for which the WHERE clause is true but the update would cause it to be not true (in other words, it prevents visible rows from being updated to nonvisible rows).

    Consider a view created below without the `WITH CHECK OPTION`

    <img src="https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/blob/master/Log/days/day55/images/image4.png">

    In addition to the data not being inserted, an exception will not be raised if a programmer with an id greater than 3 is inserted into the view. 
    
    <img src="https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/blob/master/Log/days/day55/images/image5.png">

    However, the data will be inserted into the base table, in this case, `programmers`.
    
    <img src="https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/blob/master/Log/days/day55/images/image6.png">

    <br>

    Consider also, when the same view is created with the `WITH CHECK OPTION`. An error will be raised because the view was created with the condition for `id` column less than or equal to 3. Also, the data will NOT be inserted into the base table, in this case, `programmers`.
    
    <img src="https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/blob/master/Log/days/day55/images/image7.png">


## Reference Materials
- [MySQL Documentation](https://dev.mysql.com/doc/refman/8.0/en/view-check-option.html)
- [GeeksforGeeks](https://www.geeksforgeeks.org/sql-views)
- [javaTpoint](https://www.javatpoint.com/mysql-view)



