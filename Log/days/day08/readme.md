# Introduction to Aggregate Functions

Today I learned about the following aggregate functions:
### `COUNT`, `GROUP BY`, `MIN`, `MAX`, `SUM`, `AVG`

I will practice the above functions by working the movie dataset created on [day03](https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/tree/master/Log/days/day03). Below are the first four rows........

| id | title | director | genre | runtime | release_year | vote_count |
|:---|:------------------------:|:-----------------:|----------------:|--------:|-------------:|-----------:|
| 1 | Insurgent | Robert Schwentke | Adventure | 119 | 2015 | 2480 |
| 2 | Jurassic World | Colin Trevorrow | Action | 124 | 2015 | 5562 |
| 3 | Black Hawk Down | Ridley Scott | Action | 144 | 2001 | 1201 |
| 4 | Alien | Ridley Scott | Horror | 117 | 1979 | 2724 |


### `COUNT` and `COUNT(DISTINCT)`

Description: Returns a count of the number of rows returned. <br>
The PRIMARY KEY column of a table cannot be trusted with the number of entries or rows because certain rows might have been deleted. One function which can be trusted however is COUNT.<br>

**Practice Exercise**

Write SQL queries to execute the following

- How many movies are in the database?
- How many unique directors are in the database?

### `GROUP BY`

**Practice Exercise**

Write SQL queries to execute the following

- Display the number of movies each director has directed?
- How many movies are released each year?

### `MIN` and `MAX`

**Practice Exercise**

- What are the minimum and maximum runtime in the data?

Getting other information along with the maximum and minimum value associated with a column does not work using the syntax below

```SQL
SELECT <columns>, MAX(column) FROM <table>
SELECT <columns>, MAX(column) FROM <table>
```

One way of getting around this is sorting the data and then limiting the result

- show all attributes associated with the highest and lowest movie runtime
- show all attributes associated with the highest and lowest movie vote_count

### Miscellaneous 

- Find the year each director directed their first movie
- Find the longest movie runtime for each director
- Find the average runtime for movies with the same genre in our database
- Find the number of movies released each year along with their average vote count
  movie
  SUM works similarly to MIN and MAX

RESOURCE

- Complete MySQL Beginner to Expert tutorial by Colt Steele
- MySQL documentation
