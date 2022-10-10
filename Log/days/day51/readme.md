# 100 Days of SQL Beginner to Advance
## Day 51: Triggers in Detail
On the [45th day](https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/tree/master/Log/days/day45) of this challenge, I was briefly introduced to the concept of triggers and how to create them. Today, I delved a little bit deeper into this topic.  

### Why use triggers in MySQL?
Advantages of triggers include
- SQL triggers provide an alternative way to check the integrity of data.
- Triggers help us to keep a log of records like maintaining audit trails in tables.
  
### Types of triggers in MySQL
The following are the different types of row level triggers in MySQL
- Before Insert
- After Insert
- Before Update
- After Update
- Before Delete
- After Delete

I have created a dummy database and table for the sake of practice...
**Database Name:** trigger_test
**Table Name:** result

`result`
| id | student_name      | course_code | score | admin_name    | last_updated        |
|:--:|:-----------------:|:-----------:|:-----:|:-------------:|--------------------:|
|  1 | Mary Jane         | MAT321      |    71 | Paul Anderson | 2022-10-10 18:55:54 |
|  2 | John Doe          | STA141      |    65 | Steve Joe     | 2022-10-10 18:55:54 |
|  3 | Alan Smith        | PHY101      |    54 | Paul Anderson | 2022-10-10 18:55:54 |
|  4 | Mike Newton       | CSC301      |    61 | Timothy Emma  | 2022-10-10 18:55:54 |
|  5 | Gabriella Sanders | CSC235      |    75 | Steve Joe     | 2022-10-10 18:55:54 |

`admin_name` column is simply the name of the admin who inserted/updated the record. 

<br>

### Before Insert
This trigger is activated before the insertion of data into a table.

**Restrictions**
- NEW values can be changed only in a BEFORE INSERT trigger.
- OLD values cannot be accessed because they do not exist. 
- BEFORE INSERT trigger cannot be created on a VIEW.

**Exercise**
- Write a trigger whose purpose is to prevent admin from inserting a score less than 0 or greater than 100. 

**Solution**

<img src="https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/blob/master/Log/days/day51/images/image1.png">

<br>

<img src="https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/blob/master/Log/days/day51/images/image2.png">

### After Insert
This trigger is activated after the insertion of data into a table.

**Restrictions**
- NEW values can be accessed but cannot be changed in an AFTER INSERT trigger.
- OLD values cannot be accessed because they do not exist. 
- BEFORE INSERT trigger cannot be created on a VIEW.
  
**Exercise**
- Create a new table, `admin_log` with two columns: 'admin_name', 'admin_log'. 
- Write a trigger whose purpose is to insert a new data into `admin_log` whenever a new student detail is inserted into `results` table.

**Solution**

<img src="https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/blob/master/Log/days/day51/images/image3.png">

<br>

<img src="https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/blob/master/Log/days/day51/images/image4.png">

Corresponding Admin names were added to `admin_log` table after new data were inserted into `results`.

<br>

### Before Update
This trigger is activated before a data is updated in a table

**Restrictions**
- OLD values cannot be updated in a BEFORE UPDATE trigger.
- NEW values can be changed.
- BEFORE UPDATE trigger cannot be created on a VIEW.

### After Update
This trigger is activated after a data is updated in a table

**Restrictions**
- OLD values can be accessed but not changed.
- NEW values can be accessed but not changed.
- AFTER UPDATE trigger cannot be created on a VIEW.

<br>

### Before Delete
This trigger is activated before a data is deleted in a table

**Restrictions**
- OLD values can be accessed but not changed.
- NEW values can be accessed but not changed.
- BEFORE DELETE trigger cannot be created on a VIEW.

### After Delete
This trigger is activated after a data is deleted in a table

**Restrictions**
- OLD values can be accessed but not changed.
- NEW values can be accessed because they do not exist.
- AFTER DELETE trigger cannot be created on a VIEW.


Reference Materials
- [javaTpoint](https://www.javatpoint.com/mysql)
- [MySQL 8.0 Documentation](https://dev.mysql.com/doc/refman/8.0/en/preface.html)