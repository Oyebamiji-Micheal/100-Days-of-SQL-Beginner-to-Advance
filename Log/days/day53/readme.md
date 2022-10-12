# 100 Days of SQL Beginner to Advance

## Day53: MySQL Indexes

All tables used were created on the [48th day](https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/tree/master/Log/days/day48) of this challenge.

<br>

Indexes enables faster retrieval of records on a database table. Today I learned the following about MySQL indexes

- Indexes are used to quickly find the record without searching each row in a database table whenever the table is accessed.

    <img src="https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/blob/master/Log/days/day53/images/image1.png">

    In the above image, MySQL scans the whole table which contains 4146 rows.

    MySQL finds 61 rows only from the score_index without scanning the whole table. Hence, it increases the speed of retrieval of records on a database table.
      
    <img src="https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/blob/master/Log/days/day53/images/image2.png">


- Indexes can be created using one or more columns of the table for efficient access to the records.

- Indexes can be added to an existing table using the syntax below

  ```sql
      CREATE INDEX [index_name] ON [table_name] (column names)
  ```

  OR

  ```sql
      ALTER TABLE [table_name] ADD INDEX [index_name] (column names)
  ```

- By default, MySQL allowed index type BTREE if index type is not specified.

- Updating or inserting data into a table with indexes takes more time because the indexes also will be updated.

- Indexes should be created on columns that will be frequently searched against.

- MySQL allows another constraint called the UNIQUE INDEX to enforce the uniqueness of values in one or more columns.

- More than one UNIQUE index can be created in a single table, which is not possible with the primary key constraint. UNIQUE INDEX can be added to an existing table using the syntax below

  ```sql
      CREATE UNIQUE INDEX [index_name] ON [table_name] (column names)
  ```

  OR

  ```sql
      ALTER TABLE [table_name] ADD UNIQUE INDEX [index_name] (column names)
  ```

- MySQL automatically creates a UNIQUE INDEX whenever a UNIQUE constraint is enforced on a table.

- When the primary key is defined in an InnoDB table, MySQL always uses it as a clustered index named PRIMARY.

- The indexes other than the PRIMARY Indexes (clustered indexes) are known as a secondary indexes or non-clustered indexes.
  
- Lastly, I learned the difference between MySQL Clustered and Non-Clustered Index.


### Reference Materials
- [javaTpoint](https://www.javatpoint.com/how-to-create-index-in-mysql)
