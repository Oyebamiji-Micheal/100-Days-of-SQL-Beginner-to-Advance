# Date and Time Functions

Yesterday, I created a table, `patients`, which holds the name of patients and the time they were vaccinated.
| patient_name | vaccine_date | vaccine_time | vaccine_datetime |
|:------------:|:------------:|-------------:|:-------------------:|
| Micheal | 2022-03-20 | 10:32:00 | 2022-03-20 10:32:00 |
| Oyebamiji | 2022-06-12 | 06:14:41 | 2022-06-12 06:14:41 |
| Tomiwa | 2021-12-12 | 14:28:20 | 2021-12-12 14:28:20 |

Today, I will perform some operations on the table using the following date and time functions

- CURDATE: Return the current date
- CURTIME: Return the current time
- NOW: Return the current date and time
- DAY: Returns the day of the month for date, in the range 1 to 31, or 0 for dates such as '0000-00-00' or '2008-00-00' that have a zero day part. Returns NULL if date is NULL
- DAYNAME: Returns the name of the weekday for date
- DAYOFWEEK: Returns the weekday index for date (1 = Sunday, 2 = Monday, …, 7 = Saturday). These index values correspond to the ODBC standard. Returns NULL if date is NULL.
- DAYOFYEAR: Returns the day of the year for date, in the range 1 to 366. Returns NULL if date is NULL.

## Exercise

The following questions should not be interpreted. They are for practice sake.
<br>
Write SQL queries to perform the following operations

-Insert random data into the table. Use a random name and assume the patient was vaccinated at the same instance the data was entered.

- Extract the vaccine day, day name, week, and year

## Materials

MySQL Documentation
Complete MySQL Beginner to Expert Tutorial by Colt Steele
