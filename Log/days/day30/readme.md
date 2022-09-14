# SQL Study Plan

## Day 4

Problem: [Employees With Missing Information](https://leetcode.com/problems/employees-with-missing-information/)    
Difficulty: Easy

Solution
```SQL
SELECT 
    employee_id FROM Employees
WHERE 
    employee_id NOT IN (SELECT employee_id FROM Salaries)
UNION
SELECT 
    employee_id FROM Salaries 
WHERE 
    employee_id NOT IN (SELECT employee_id FROM Employees)
ORDER BY 
    employee_id;
```
--------
<br>

Problem: [Rearrange Products Table](https://leetcode.com/problems/rearrange-products-table/)
Difficulty: Easy

Solution
```SQL
SELECT 
    product_id,'store1' AS store, store1 AS price FROM Products WHERE store1 IS NOT null
UNION
SELECT 
    product_id,'store2' AS store,store2 AS price FROM Products WHERE store2 IS NOT null
UNION
SELECT 
    product_id,'store3' AS store,store3 AS price FROM Products WHERE store3 IS NOT null
```
