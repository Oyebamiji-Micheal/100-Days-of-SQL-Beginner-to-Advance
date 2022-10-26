# 100 Days of SQL Beginner to Advance
## Day 60: Nth Highest Record

*The table used was created on the [3rd day](https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/tree/master/Log/days/day03) of this challenge. For the sake of reference, below are the first four rows of the table...*

`movies`

 id | title | director | genre | runtime | release_year | vote_count |
|:-:|:-----:|:--------:|:-----:|:-------:|:------------:|:----------:|
|  1 | Insurgent | Robert Schwentke  | Adventure       |     119 |         2015 |       2480 |
|  2 | Jurassic World | Colin Trevorrow   | Action          |     124 |         2015 |       5562 |
|  3 | Black Hawk Down | Ridley Scott      | Action          |     144 |         2001 |       1201 |
|  4 | Alien | Ridley Scott      | Horror          |     117 |         1979 |       2724 |

<br>

Today, I learned how to find the nth highest record in sql and also used the same idea to solve a [similar question](https://leetcode.com/problems/nth-highest-salary/) on leetcode.

Below is the syntax for finding the nth highest record. 

`SELECT  * FROM table_name ORDER BY [col_name] DESC LIMIT n - 1, 1;`

<br>

### Exercise 
- Write SQL query which returns the movie with the fourth highest `vote_count`.