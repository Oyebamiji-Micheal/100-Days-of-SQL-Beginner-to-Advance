# SQL Study Plan
Today, I started practicing multiple questions on LeetCode

## Day 1

Problem: [Big Countries](https://leetcode.com/problems/big-countries/?envType=study-plan&id=sql-i)    
Difficulty: Easy

Solution
```SQL
SELECT
    name, population, area
FROM
    World
WHERE
    area >= 3000000 OR population >= 25000000
;
```
--------
<br>

Problem: [Recyclable and Low Fat Products](https://leetcode.com/problems/recyclable-and-low-fat-products/)     
Difficulty: Easy

Solution
```SQL
SELECT 
    product_id 
FROM
    Products 
WHERE
    low_fats = 'Y'AND recyclable = 'Y';
```
--------
<br>

Problem: [Find Customer Referee](https://leetcode.com/problems/find-customer-referee/)     
Difficulty: Easy

Solution
```SQL
SELECT 
    name
FROM 
    Customer
WHERE referee_id != 2 OR referee_id IS NULL;
```
--------
<br>

Problem: [ Customers Who Never Order](https://leetcode.com/problems/customers-who-never-order/)     
Difficulty: Easy

Solution
```SQL
SELECT 
    name AS Customers 
FROM 
    Customers
LEFT JOIN 
    Orders ON Customers.id = Orders.customerId
WHERE 
    Orders.CustomerId IS NULL;
```
