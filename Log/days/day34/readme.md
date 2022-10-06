# 100 Days of SQL
## Day34: Temporary Table vs Copied Table

All tables used here were previously created on [day22](https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/tree/master/Log/days/day22)

### Temporary Table

Today, I learned the following about temporary tables:

- A Temporary Table is a special table in MySQL that allows us to keep temporary data and reuse it several times in a particular session.
  
- The syntax for creating a new temporary table is 

   ```
    CREATE TEMPORARY TABLE table_name (  
    column_1, column_2, ..., table_constraints  
    );  
    ```

    The syntax below is used if the temporary table will have the same structure as an existing table
    
    ```
    CREATE TEMPORARY TABLE temporary_table_name 
        SELECT * FROM original_table_name;
    ```  

- Temporary Tables are visible and accessible only for the current session. MySQL deletes this table automatically as long as the current session is closed or the user terminates the connection.

- A temporary table can be created with the same name as a normal table in a database. 

    <img src="https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/blob/master/Log/days/day34/images/image1.png">

    In the picture above, a 'permanent' table named ```users``` already exist. As demonstrated below, creating a temporary table with the same name does not throw any error. However, the existing `users` table will not be accessible and any query against the `users` table, is now going to refer to the temporary `users` table. 

    <img src="https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/blob/master/Log/days/day34/images/image2.png">

    When the temporary table is removed, the permanent `users` table becomes accessible again.
    
    <img src="https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/blob/master/Log/days/day34/images/image3.png">

- It is not possible to create two temporary tables with the same name in the same session
  
- A temporary table can be created based on the structure of a normal table.

    In the example below, a temporary table is created based on the result of the join between two tables.

    <img src="https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/blob/master/Log/days/day34/images/image4.png">

- Temporary Tables are not shown with the command `SHOW TABLES`. 

<br>

### Copied/Cloned/Duplicated Table

I learned the following about copied table

- MySQL copy or clone table is a feature that allows us to create a duplicate table of an existing table, including the table structure, indexes, constraints, default values, etc.  
- It is also advantageous when we need to test or perform something without affecting the original table, for example, replicating the production data for testing.

- The syntax for copying an existing table within the same database is given below: 
    ```
      CREATE TABLE IF NOT EXISTS new_table_name  
      SELECT column1, column2, column3   
      FROM existing_table_name; 
    ```

  The statement above only copies the table and its data. It doesn't copy all dependent objects of the table, such as indexes, triggers, primary key constraints, foreign key constraints, etc. So the command of copying data along with its dependent objects from an existing to the new table can be written as the following statements:
    
    ```
      CREATE TABLE IF NOT EXISTS new_table_name LIKE existing_table_name;  
      INSERT new_table_name SELECT * FROM existing_table_name;  
    ```

- Unlike temporary tables, MySQL preserves copied or cloned table even if the current session is closed or the connection is terminated.

- Copied tables are shown with the command `SHOW TABLES`. 
 
## Reference Materials
- [javaTpoint](https://www.javatpoint.com/mysql-temporary-table)