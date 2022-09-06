# 100 Days of SQL
## Day21: One to Many Relationship | Joins

Users
| id | first_name | last_name |
|:--:|:----------:|:---------:|
|  1    | Paul       | Anderson  |
|  2    | Mary       | Rita      |
|  3    | Danny      | Might     |
|  4    | Debby      | Praise    |
|  5    |  Maco    |   Einstein    |
|   6   |   Thompson  | Stone   |
| 7     |   Josh    |   Mane    |
|   8   |   George     |   Snow |
|   9   |   Simon   |   Peter   |
|   10  |   David   |   Lius    |

Tweet Information
| id | tweet_date | retweet_count | favorite_count | user_id |
|:--:|:----------:|:-------------:|:--------------:|:-------:|
|  1 | 2022-03-03 |     100       |     342        |    2    |
|  2 | 2022-04-10 |     49       |     20        |    1    |
|  3 | 2021-08-03 |     200       |     102        |    4    |
|  4 | 2022-11-11 |     30       |     54        |    2  |
|  5 | 2020-05-09 |     3       |     3        |    8   | 
|  6 | 2022-09-23 |     59       |     70        |    3    |
|  7 | 2017-04-20 |     19       |     20        |    4    |
|  8 | 2020-08-13 |     200       |    301        |    1    |
|  9 | 2018-11-12 |      33      |     54        |    6  |
|  10 | 2019-05-22 |     340       |     465        |    5   | 
|  11 | 2020-03-03 |     100       |     342        |    6    |
|  12 | 2019-04-10 |     60       |     70        |    7    |
|  13 | 2018-08-03 |     200       |     202        |    3    |
|  14 | 2015-11-11 |     320       |     540        |    5  |
|  15 | 2016-05-09 |     583       |     700        |    8   | 

<br>

## Exercise
Perform an inner join on the two tables (join on user id)