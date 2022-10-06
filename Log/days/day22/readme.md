# 100 Days of SQL
## Day22: One to Many Relationship | Inner Join

Today, I created a dummy database with two tables. These tables will be used to practice how to define a one to many relationship and how to perform an inner join.  

The tables are given below...

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

<br>

`users` table holds the first name and last name of users while `tweet_info` holds information about user's tweet such as the day they tweeted. `user_id` column refers to the id of a user in the `users` table.

## Exercise
Perform an inner join on the two tables (join on user id). Sample result below...

| id | first_name | last_name | tweet_date | retweet_count | favorite_count | user_id |
|:--:|:----------:|:---------:|:----------:|--------------:|:--------------:|--------:|
|  1 | Mary       | Rita      | 2022-03-03 |           100 |            342 |       2 |
|  2 | Paul       | Anderson  | 2022-04-10 |            49 |             20 |       1 |
|  3 | Debby      | Praise    | 2021-08-03 |           200 |            102 |       4 |
|  4 | Mary       | Rita      | 2022-11-11 |            30 |             54 |       2 |
|  5 | George     | Snow      | 2020-05-09 |             3 |              3 |       8 |