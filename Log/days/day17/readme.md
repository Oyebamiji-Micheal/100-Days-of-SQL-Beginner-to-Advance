# 100 Days of SQL
## Day 17: Logical Operators

Yesterday, I learned about different logical operators some of which include
- Greater than (>)
- Less than (<)
- Equal to (=)
- Not equal to (!=)
- Greater than or equal to (>=)
- Less than or equal to (<=)
- AND (&&)
- OR (||)
- BETWEEN AND (inclusive)
- NOT BETWEEN

Today, I will practice these functions by answering a few questions on the `movies` table created on [day03](https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/tree/master/Log/days/day03). Below are the first four rows of the table........

| id | title | director | genre | runtime | release_year | vote_count |
|:---:|:------------------------:|:-----------------:|----------------:|--------:|-------------:|-----------:|
| 1 | Insurgent | Robert Schwentke | Adventure | 119 | 2015 | 2480 |
| 2 | Jurassic World | Colin Trevorrow | Action | 124 | 2015 | 5562 |
| 3 | Black Hawk Down | Ridley Scott | Action | 144 | 2001 | 1201 |
| 4 | Alien | Ridley Scott | Horror | 117 | 1979 | 2724 |

Due to my little experience with Python, I am already familiar with boolean expressions and how to evaluate them. Also, I am familiar with the integer equivalent of True and False. 

## Questions
- Show all movies released after 2005
- Display all movies released in or after 2015
- Display all movies with a runtime of 2 hours or less
- Show all action movies released after 2000. Order your result by release year
- Show all drama movies released after 2000 with a vote count of 1000 or more
- Display all movies directed by Ridley Scott or George Miller
- Display all movies with a vote count between 1000 and 2000
 