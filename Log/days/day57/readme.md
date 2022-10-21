# 100 Days of SQL Beginner to Advance 
## Common Table Expressions(CTEs) | Introduction to Window Functions

*The table used was created on the [3rd day](https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/tree/master/Log/days/day03) of this challenge. For the sake of reference, below are the first four rows of the table...*

`movies`

 id | title | director | genre | runtime | release_year | vote_count |
|:-:|:-----:|:--------:|:-----:|:-------:|:------------:|:----------:|
|  1 | Insurgent | Robert Schwentke  | Adventure       |     119 |         2015 |       2480 |
|  2 | Jurassic World | Colin Trevorrow   | Action          |     124 |         2015 |       5562 |
|  3 | Black Hawk Down | Ridley Scott      | Action          |     144 |         2001 |       1201 |
|  4 | Alien | Ridley Scott      | Horror          |     117 |         1979 |       2724 |

<br>

### Exercise 

Write SQL query which displays the average vote count per genre. Result should follow the format below

 id | title | director | genre | runtime | release_year | vote_count | genre | average_vote_count |
|:-:|:-----:|:--------:|:-----:|:-------:|:------------:|:----------:|:------------------:|:-----:|
|  2 | Jurassic World           | Colin Trevorrow   | Action          |     124 |         2015 |       5562 | Action          |          3930.6667 |
|  3 | Black Hawk Down          | Ridley Scott      | Action          |     144 |         2001 |       1201 | Action          |          3930.6667 |
|  6 | Avatar                   | James Cameron     | Action          |     162 |         2009 |       8458 | Action          |          3930.6667 |
| 10 | Mad Max: Fury Road       | George Miller     | Action          |     120 |         2015 |       6185 | Action          |          3930.6667 |
| 13 | RED                      | Robert Schwentke  | Action          |     111 |         2010 |       2064 | Action          |          3930.6667 |
| 15 | Black Rain               | Ridley Scott      | Action          |     125 |         1989 |        114 | Action          |          3930.6667 |
|  1 | Insurgent                | Robert Schwentke  | Adventure       |     119 |         2015 |       2480 | Adventure       |           982.6667 |
|  7 | The Martian              | Ridley Scott      | Adventure       |     141 |         2015 |        457 | Adventure       |           982.6667 |

<br>

### Common Table Expressions (CTEs)
Common Table Expressions help simplify simple and complex subqueries hence improving readability. Today, I learned the following about common table expressions...

- The CTE provides an alternative to the [VIEW](https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/tree/master/Log/days/day55) concept.

- CTEs make it easier to emend or debug complex sql queries. 

- A CTE provides better readability and also increases the performance as compared to the derived table.

- Unlike a derived table, a CTE can be self-referencing using its own name (recursive cte).

<br>

A potential solution to the above exercise would be to use subqueries. 

<img src="https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/blob/master/Log/days/day57/images/image1.png"> 

The above solution could be simplified using common table expression as shown below

<img src="https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/blob/master/Log/days/day57/images/image2.png"> 
 
<br>

### Window Functions: OVER()
The following concepts were learned in relation to Window Function

- MySQL version 8.x supports window functions that, for each row from a query, perform a calculation using rows related to that row.

- Window functions perform a calculation similar to a calculation done by using the aggregate functions. 

- Unlike aggregate functions that perform operations on an entire table, window functions do not produce a result to be grouped into one row. 

- Similar to aggregate function, window function also works with a subset of rows, but it does not reduce the result set into a single row. It means window functions perform operations on a set of rows and produces an aggregated value for each row.


These functions allow us to solve query related problems more efficiently. Below is the solution to the above exercise using window functions

<img src="https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/blob/master/Log/days/day57/images/image3.png"> 

More on windows functions in subsequent learning...
