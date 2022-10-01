# 100 Days of SQL
## Day46 
### Many to Many relationship: Three Tables 
On the 24th day of this challenge, I briefly learned about many to many relationship. I am sincerely not happy with how sloppy I have been progressing in learning SQL. This was because I was learning about HTML, CSS, Flask, OOP, MYSQL and so on at the same time just to complete my [first project](https://github.com/Oyebamiji-Micheal/Result-Management-System-with-Python-Flask-and-MySQL) on time. 

Today however, I will be expanding and practicing what I learned on day24 by modifying the movies table created on [day03](https://github.com/Oyebamiji-Micheal/100-Days-of-SQL-Beginner-to-Advance/tree/master/Log/days/day03). 

**Instruction:**
- Drop `vote_count` column. The new 'movies' table should contain the following information only: 
title, director, genre, runtime and release_year. All data should be preserved!
- Create a second table, `reviewers`, which contains the first name and last name of reviewers.
- Lastly, create a third table, `reviews`, which is responsible for defining the relationship between `movies` and `reviewers` table. This table will have information(movie_id) on the movie that was reviewed along with the corresponding reviewer id and rating. 

**Objective:**
- Practice how to create a many to many relationship
- Learn how to work with three tables
- Build muscle memory on JOINS

The first four rows of each table is given below

`Movies`
| id | title                    | director          | genre           | runtime | release_year |
|:--:|:------------------------:|:-----------------:|:---------------:|:--------|:------------:|
|  1 | Insurgent                | Robert Schwentke  | Adventure       |     119 |         2015 |
|  2 | Jurassic World           | Colin Trevorrow   | Action          |     124 |         2015 |
|  3 | Black Hawk Down          | Ridley Scott      | Action          |     144 |         2001 |
|  4 | Alien                    | Ridley Scott      | Horror          |     117 |         1979 |


`Reviewers`
| id | first_name | last_name |
|:--:|:----------:|:---------:|
|  1 | Paul       | Anderson  |
|  2 | Mary       | Rita      |
|  3 | Danny      | Might     |
|  4 | Debby      | Praise    |


`Reviews`
| id | movie_id | reviewer_id | rating |
|:--:|:--------:|:-----------:|:------:|
|  1 |        1 |           1 |    6.0 |
|  2 |        1 |           2 |    5.5 |
|  3 |        1 |           3 |    5.9 |
|  4 |        1 |           4 |    6.5 |


**Exercise: <br>**
Write SQL queries to perform the following tasks <br>
Note: Tables are truncated

A. Display movie name along wih all their corresponding genre and **ratings**. The result should only show movies that have been rated. Sample result below... <br>
   
| title | genre | rating |
|:-----:|:-----:|:------:|
| Insurgent |	Adventure	| 6.0
| Insurgent |	Adventure	| 5.5
| Insurgent |	Adventure	| 5.9
| Insurgent |	Adventure	| 6.5
| Insurgent |	Adventure	| 6.9
| Jurassic World | Action |	8.0
| Jurassic World | Action |	7.9

B.  Display the average rating for each movie sorted in descending order. Movies without ratings should be ignored. Sample result below...

 title                     | genre           | AVG(rating) |
|:------------------------:|:---------------:|:--------------:|
| The Hunger Games         | Science Fiction |        9.72000 |
| Midnight in Paris        | Fantasy         |        9.60000 |
| Avatar                   | Action          |        9.26000 |
| Mad Max: Fury Road       | Action          |        8.68000 |
| American Sniper          | War             |        8.60000 |

C. Display all un-rated movies only. Replace 'NULL' with 'not rated' in the 'ratings' column. Sample result below...

| title                 | rating    |
|:---------------------:|:---------:|
| Safety Not Guaranteed | not_rated |
| Black Rain            | not_rated |
| Interiors             | not_rated |
| End of the Line       | not_rated |

D. Compute the average rating for each genre to two decimal places.

E. Show users status and ratings count along with their maximum, minimum and average rating. Sample result below...

| id | first_name | last_name | number_of_rating | minimum_rating | maximum_rating | average_rating | status   |
|:---:|:------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|
|  1 | Paul       | Anderson  | 9 |            5.0 |            9.8 |        6.34444 | ACTIVE   |
|  2 | Mary       | Rita      | 12 |            5.5 |            9.7 |        7.30833 | ACTIVE   |
|  3 | Danny      | Might     | 11 |            5.5 |            9.8 |        7.57273 | ACTIVE   |
|  4 | Debby      | Praise    | 13 |            5.5 |            9.9 |        7.50769 | ACTIVE   |
|  5 | Maco       | Einstein  | 11 |            5.1 |            9.6 |        7.51818 | ACTIVE   |
|  6 | Thompson   | Stone     | 6 |            5.0 |            9.5 |        7.68333 | ACTIVE   |
|  7 | Josh       | Mane      | 2 |            6.1 |            9.4 |        7.75000 | ACTIVE   |
|  8 | George     | Snow      | 1 |            0.0 |            0.0 |        0.00000 | INACTIVE
 
'ACTIVE' implies that the reviewer has rated one or more movie while 'INACTIVE' means otherwise.

F. Display movie title along with their corresponding ratings and reviewers. Your result should be formatted as below

| title                    | reviewer       | rating |
|-------------------------:|:--------------:|:------:|
| Insurgent                | Paul Anderson  |    6.0 |
| Jurassic World           | Paul Anderson  |    8.0 |
| Black Hawk Down          | Paul Anderson  |    6.5 |
| Alien                    | Paul Anderson  |    6.0 |
| Gran Torino              | Paul Anderson  |    5.0 |
| RED                      | Paul Anderson  |    5.1 |
| Annie Hall               | Paul Anderson  |    5.7 |
| The Hunger Games         | Paul Anderson  |    9.8 |
| Mad Max: Fury Road       | Paul Anderson  |    5.0 |
| Insurgent                | Mary Rita      |    5.5 |
| Alien                    | Mary Rita      |    6.5 |

