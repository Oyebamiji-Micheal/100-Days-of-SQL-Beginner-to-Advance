# Introduction to aggregate functions

## COUNT, GROUP BY, MIN, MAX, SUM, AVG

I am still working with the movie dataset. Below are the first four rows........
| id | title | director | genre | runtime | release_year | vote_count |
|:---|:------------------------:|:-----------------:|----------------:|--------:|-------------:|-----------:|
| 1 | Insurgent | Robert Schwentke | Adventure | 119 | 2015 | 2480 |
| 2 | Jurassic World | Colin Trevorrow | Action | 124 | 2015 | 5562 |
| 3 | Black Hawk Down | Ridley Scott | Action | 144 | 2001 | 1201 |
| 4 | Alien | Ridley Scott | Horror | 117 | 1979 | 2724 |

## count and count(distinct)

Description: Return a count of the number of rows returned
The PRIMARY KEY column of a table can't be trusted with the number of entries or rows because certain rows might have been deleted. One function which can be trusted however is COUNT.
Write SQL queries to execute the following

- How many movies are in the database?
- How many unique directors are in the database?

## group by

Write SQL queries to execute the following

- Display the number of movies each director has directed?
- How many movies are released each year?

## min and max

- What are the minimum and maximum runtime in the data?

Getting other information along with the maximum and minimum value associated with a column does not work using the syntax below

```SQL
SELECT <columns>, MAX(column) FROM <table>
SELECT <columns>, MAX(column) FROM <table>
```

One way of getting around this is sorting the data and then limiting the result

- show all attributes associated with the highest and lowest movie runtime
- show all attributes associated with the highest and lowest movie vote_count

## Miscellaneous

- Find the year each director directed their first movie
- Find the longest movie runtime for each director
- Find the average runtime for movies with the same genre in our database
- Find the number of movies released each year along with their average vote count
  movie
  SUM works similarly to MIN and MAX

RESOURCE

- Complete MySQL Beginner to Expert tutorial by Colt
- MySQL documentation
