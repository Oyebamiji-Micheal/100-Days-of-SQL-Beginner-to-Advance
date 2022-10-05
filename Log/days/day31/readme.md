# 100 Days of SQL Beginner to Advance
## Day31: ALTER, UNION, UNION ALL

Today, I learned the following concepts:

- How to add or delete an existing column in a table using the `ALTER CLAUSE`.
- Use different commands such as `ADD`, `DROP`, `MODIFY`, `CHANGE`, `RENAME` along with `ALTER` clause. 
- How to combine the result from multiple SELECT statements into a single result set using the `UNION` clause.
- The difference between ```UNION``` and `UNION ALL`.
- How to use other clauses such a `ORDER BY` and `LIMIT` along with the `UNION` clause.


### ```UNION``` and ```UNION ALL```
For the sake of practice, I have created a dummy database and two tables. 

```hospital1```
| patient_name | vaccine_year | dose   |
|:------------:|:------------:|:------:|
| Micheal Tom  |         2021 | first  |
| John Silver  |         2022 | first  |
| Smith Joe    |         2022 | second |
| Paul Stone   |         2021 | first  |

```hospital2```
| patient_name    | vaccine_year | dose   |
|:---------------:|:------------:|:------:|
| John Silver     |         2022 | first  |
| Micheal Tom     |         2022 | second |
| Paul Stone      |         2022 | second |
| Thomas Anderson |         2022 | first  |

The above table illustrates two different hospitals with their Covid 19 vaccine report. So, a patient named 'Micheal Tom' received the dose in the first hospital and in the year 2021. The same patient received a second dose in the second hospital the following year. A rather interesting case is 'John Silver' who received the first dose of the vaccine in two different hospitals in the same year. The rest of the entries are self explanatory...

**Exercise**

Assume all questions asked are relative to both hospitals.

- Show all unique vaccine report. Output should be sorted by vaccine year in ascending order.
- Display all patients who received either the first or second dose in 2021.
- Show all vaccine report from both hospitals. Note that repeated rows imply that the patient received a double dose in the same year. 

### `ALTER`

**Exercise**

All questions asked are relative to `hospital1` only!

- Add a new column `vaccine_date` with a default value of `NULL`.
- Modify column: force `patient_name` column not to allow `NULL` values.
- Drop column: `vaccine_date`.
- Rename column: change `dose` to `vaccine_dose`.
- Rename table: change table name to `first_hospital`.
