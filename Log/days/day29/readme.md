# SQL Study Plan

## Day 3

Problem: [Fix Names in a Table](https://leetcode.com/problems/fix-names-in-a-table/)    
Difficulty: Easy

Solution
```SQL
SELECT
    user_id, 
    CONCAT(
        UPPER(SUBSTRING(name, 1, 1)), LOWER(SUBSTRING(name, 2))
    ) AS name
FROM Users
ORDER BY user_id;
```
--------
<br>

Problem: [Group Sold Products By The Date](https://leetcode.com/problems/group-sold-products-by-the-date/)     
Difficulty: Easy

Solution
```SQL
SELECT 
    sell_date, 
    COUNT(DISTINCT product) AS num_sold,
    GROUP_CONCAT(DISTINCT product
                    ORDER BY product SEPARATOR ',') AS products
FROM Activities 
Group By sell_date
ORDER BY sell_date;

```
--------
<br>

Problem: [ Patients With a Condition](https://leetcode.com/problems/patients-with-a-condition/submissions/)     
Difficulty: Easy

Solution
```SQL
SELECT 
    patient_id,
    patient_name,
    conditions
FROM 
    Patients
WHERE conditions like 'DIAB1%' OR conditions LIKE '% DIAB1%'
```