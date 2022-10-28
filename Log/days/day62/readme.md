# 100 Days of SQL Beginner to Advance
## MySQL in Python II

Yesterday, I was able to successfully 
- create and connect to a database
- create and insert values into tables

*For the sake of reference, below are the first four rows of each table created yesterday...*

`users`

| id | first_name | last_name |
|:--:|:----------:|:---------:|
|  1    | Paul       | Anderson  |
|  2    | Mary       | Rita      |
|  3    | Danny      | Might     |
|  4    | Debby      | Praise    |


`tweet_info`

| id | tweet_date | retweet_count | favorite_count | user_id |
|:--:|:----------:|:-------------:|:--------------:|:-------:|
|  1 | 2022-03-03 |     100       |     342        |    2    |
|  2 | 2022-04-10 |     49       |     20        |    1    |
|  3 | 2021-08-03 |     200       |     102        |    4    |
|  4 | 2022-11-11 |     30       |     54        |    2  |


Building on the existing structure, today I was able to

- select data based on certain conditions
- filter table result
- join two tables and so on

<br>

### Exercise

- Select all records from both tables.
- Display all users whose last name start with a vowel. 
- Show the top three users with the highest number of retweet count.
- Show users who haven't posted at all.