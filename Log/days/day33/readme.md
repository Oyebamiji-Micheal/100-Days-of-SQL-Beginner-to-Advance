# SQL Study Plan

## Day 6

Problem: [Rising Temperature](https://leetcode.com/problems/rising-temperature/)    
Difficulty: Easy

Solution
```SQL
SELECT 
    Table1.Id
FROM 
    Weather Table1, Weather Table2
WHERE 
    Table1.Temperature > Table2.Temperature
    AND DATEDIFF(Table1.Recorddate, Table2.Recorddate) = 1
```
--------
<br>

Problem: [Sales Person](https://leetcode.com/problems/sales-person/)     
Difficulty: Easy

Solution
```SQL
SELECT
    SalesPerson.name
FROM
    SalesPerson
WHERE
    SalesPerson.sales_id NOT IN (SELECT
            Orders.sales_id
        FROM
            Orders
                LEFT JOIN
            Company ON Orders.com_id = Company.com_id
        WHERE
            Company.name = 'RED')
```
