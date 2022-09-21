# SQL Study Plan

## Day 9 

Problem: [Duplicate Emails](https://leetcode.com/problems/duplicate-emails/)    
Difficulty: Easy

Solution
```SQL
SELECT
    DISTINCT Table1.Email
FROM 
    Person Table1, Person Table2
WHERE 
    Table1.Email = Table2.Email AND Table1.id != Table2.id
;
```
