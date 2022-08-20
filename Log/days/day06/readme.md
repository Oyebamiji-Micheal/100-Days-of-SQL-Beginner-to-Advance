# 100 Days of SQL 
## Day06: Introduction to string functions

<p align="justigy"> So far, I have created a database; connected to a table; performed basic CRUD operations and solved some exercises. Moving on, today, I will be working on string functions. There are a lot of string functions in MySQL but I will be focusing on a few of them now. The following are the first basic functions I used and the respective exercises all in name of building muscle memory
</p>


Red Alert: Most exercises here do not really make the most sense. They are dedicated to practicing and building muscle memory. Thus, all output should not be interpreted 😫! 

## First Four Rows of movies table
| id | title                    | director          | genre           | runtime | release_year | vote_count |
|:---|:------------------------:|:-----------------:|----------------:|--------:|-------------:|-----------:|
|  1 | Insurgent                | Robert Schwentke  | Adventure       |     119 |         2015 |       2480 |
|  2 | Jurassic World           | Colin Trevorrow   | Action          |     124 |         2015 |       5562 |
|  3 | Black Hawk Down          | Ridley Scott      | Action          |     144 |         2001 |       1201 |
|  4 | Alien                    | Ridley Scott      | Horror          |     117 |         1979 |       2724 |

</br>

## Concat and Concat_ws

CONCAT: Return concatenated string     
CONCAT_WS: Return concatenate with separator

Q: Write SQL queries to display the following results

| title | 'a header' |
|:-----:|:------------:|
|Insurgent | directed by Robert Schwentke has a vote count of 2480 |
|The Hunger Games | directed by Gary Ross has a vote count of 7080 |

</br>

|'a header' |
|:----------------:|
|Avatar - James Cameron - Action - 162 – 2009|
|American Sniper - Clint Eastwood - War - 134 – 2014|

</br>

## Replace
Q: Write a query to capitalize 'hand' in the sentence below

'Sinners in the hand of angry God' 

A: ```SQL SELECT REPLACE('Sinners in the hand of angry God', 'hand', 'HAND');```

</br>

Other string functions I learned include SUBSTRING, REVERSE, CHAR_LENGTH, UPPER, LOWER, etc.

## Miscellaneous Examples
Write queries to execute the following    
Q: Print movie title and the length of each title     
Q: Display the sample table below      

| forward | backward |
|:------------:|:------------:|
|Insurgent | tnegrusnI |
|The Hunger Games | dlroW cissaruJ |

</br>

Q: Display the information below
| short title | director | release_year
|:------------:|:------------:|:------------:|
| Insurgent | ROBERT SCHWENTKE | 2015 
|Jurassic W | COLIN TREVORROW | 2015