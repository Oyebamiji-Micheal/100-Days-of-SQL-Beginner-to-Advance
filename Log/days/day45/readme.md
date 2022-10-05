# 100 Days of SQL Beginner to Advance 
## Day45: Triggers in MySQL | The LIKE Operator
Today, I learned how to define different types triggers in MySQL. Also, I learned a little about the 'Like' Operator.

### Short note on triggers
Generally, triggers are of two types according to the SQL standard: row-level triggers and statement-level triggers. However, MySQL doesn't support statement-level triggers. It provides supports for row-level triggers only.

Row-Level Trigger: It is a trigger, which is activated for each row by a triggering statement such as insert, update, or delete. For example, if a table has inserted, updated, or deleted multiple rows, the row trigger is fired automatically for each row affected by the insert, update, or delete statement.

Statement-Level Trigger: It is a trigger, which is fired once for each event that occurs on a table regardless of how many rows are inserted, updated, or deleted.

### How to create triggers in MySQL
We can use the CREATE TRIGGER statement for creating a new trigger in MySQL. Below is the syntax of creating a trigger in MySQL:

```SQL
CREATE TRIGGER trigger_name    
    (AFTER | BEFORE) (INSERT | UPDATE | DELETE)  
        ON table_name FOR EACH ROW    
        BEGIN    
        --variable declarations    
        --trigger code    
        END;
```

### Reference Material
- [javatpoint MySQL Tutorial](https://www.javatpoint.com/mysql-trigger)