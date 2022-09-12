# SQL Study Plan
Today, I started practicing multiple questions on LeetCode

## Day 2

Problem: [Delete Duplicate Emails](https://leetcode.com/problems/delete-duplicate-emails/)    
Difficulty: Easy

Solution
```SQL
DELETE 
    table1 
FROM 
    Person table1, Person table2 
WHERE 
    table1.Email = table2.email 
    AND table1.ID > table2.ID;
```
--------
<br>

Problem: [Swap Salary](https://leetcode.com/problems/swap-salary/)     
Difficulty: Easy

Solution
```SQL
UPDATE salary
SET
    sex = CASE sex
        WHEN 'm' THEN 'f'
        ELSE 'm'
    END;
```
--------
<br>

Problem: [Calculate Special Bonus](https://leetcode.com/problems/calculate-special-bonus/)     
Difficulty: Easy

Solution
```SQL
SELECT employee_id,
    CASE 
        WHEN employee_id % 2 != 0 
        AND employee_id > 0 
        AND SUBSTRING(name, 1, 1) != 'M' THEN salary
        ELSE 0
    END AS 'bonus'
FROM Employees
ORDER BY employee_id;
```