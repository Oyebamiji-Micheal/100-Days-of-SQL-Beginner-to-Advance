# DATES and TIMES

Today, I continued learning about data types, specifically, dates and times. According to MySQL documentation, there are more than three date time data type. However, I will be working with just three for now.

## DATE

The supported range is `'1000–01–01'` to `'9999–12–31'`. MySQL displays DATE values in `'YYYY-MM-DD'` format but permits assignment of values to DATE columns using either strings or numbers.

## TIME

Abbreviated time values. Definitely one thing I would watch out for is how MySQL interprets abbreviated time values with and without colons.

## DATETIME

The DATETIME type is used for values that contain both date and time parts. MySQL retrieves and displays DATETIME values in `'YYYY-MM-DD hh:mm:ss'` format. The supported range is `'1000–01–01 00:00:00'` to `'9999–12–31 23:59:59'`.
<br>

## Practice Exercise

- Create a new database, `test_db`.
- Create a simple table, `patients`, with four columns `patient_name`, `vaccine_date`, `vaccine_time` and `vaccine_datetime`. Each of these columns corresponds to a patient's name and the time they were vaccinated in date, time, and date time format respectively.
- Insert multiple values into the table.

Tomorrow, I will work with date and time functions using the table created above and hopefully do a lot of exercises.
<br>
What's the rush? 🙂

# Materials

- Complete MySQL Beginner to Expert tutorial by Colt Steele
  <br>
- MySQL documentation
