# 100 Days of SQL Beginner to Advance

## Day52: Introduction to User Defined Variables | Calculating Median in MySQL

<br>

### User Defined Variables

MySQL allows storing a value in a user-defined variable in one statement and referring to it later in another statement. Today I learned the following about user defined variables in MySQL.

- A user-defined variable is session specific i.e variable defined by one client is not shared to other client and when the session ends these variables are automatically expired. An exception however is when a user has access to the Performance Schema `user_variables_by_thread` table.

- User-defined variables are not case-sensitive.

- Maximum length of variables is 64 characters.

- The syntax for defining a new user variable is `SET @var_name = expression`

- They must be assigned a value at the time of initialization. Hence the codes below would throw an error

```SQL
    -- missing value at the time of initialization
    SET @country;
```

- An undeclared variable can also be accessed in a SQL statement but their values is set as NULL.

- Values can be assigned to variables without using SET e.g. `SELECT @var3 := 4;`. According to [MySQL Documentation](https://dev.mysql.com/doc/refman/8.0/en/user-variables.html), this functionality
  is supported in MySQL 8.0 for backward compatibility but is subject to removal in a future release of MySQL. An alternative approach would be `SELECT 4 INTO @var3;`.
- These variables can take values from the following set of datatypes- { integer, floating-point, decimal, binary, nonbinary string or NULL value.

<br>

### Median

The `movies` table created on [day03](https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/tree/master/Log/days/day03) will be used for the sake of practice. Below are the first 4 rows...

`movies`
| id | title | director | genre | runtime | release_year | vote_count |
|---:|:---------------:|-----------------:|----------:|--------:|-------------:|-----------:|
| 1 | Insurgent | Robert Schwentke | Adventure | 119 | 2015 | 2480 |
| 2 | Jurassic World | Colin Trevorrow | Action | 124 | 2015 | 5562 |
| 3 | Black Hawk Down | Ridley Scott | Action | 144 | 2001 | 1201 |
| 4 | Alien | Ridley Scott | Horror | 117 | 1979 | 2724 |

It is to be noted that MySQL does not support the ROW_NUMBER() function before version 8.0, but they provide a session variable that allows us to emulate this function.

**Exercise**

Compute the median of `runtime` and `vote_count` to 2 decimal places.

_Note: Your solution should be version independent_

<br>

**Reference Materials**

- [MySQL Documentation](https://dev.mysql.com/doc/)
- [GeeksforGeeks](https://www.geeksforgeeks.org/)
