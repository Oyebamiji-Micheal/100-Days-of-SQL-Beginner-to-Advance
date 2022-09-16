# SQL Study Plan

## Day 5

Problem: [Combine Two Tables](https://leetcode.com/problems/combine-two-tables/)    
Difficulty: Easy

Solution
```SQL
SELECT 
    firstName, lastName, city, state 
FROM Person 
LEFT JOIN Address 
    ON Person.personId = Address.personId;
```
--------
<br>

Problem: [ Customer Who Visited but Did Not Make Any Transactions](https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/)     
Difficulty: Easy

Solution
```SQL
SELECT 
    customer_id, COUNT(customer_id) AS 'count_no_trans'
FROM 
    Visits 
LEFT JOIN Transactions 
    ON Visits.visit_id = Transactions.visit_id
WHERE 
    Transactions.visit_id IS NULL
GROUP BY 
    customer_id;
```
--------
<br>

Problem: [Article Views I](https://leetcode.com/problems/article-views-i/)     
Difficulty: Easy

Solution
```SQL
SELECT DISTINCT author_id AS id FROM Views
WHERE author_id = viewer_id
ORDER BY id ASC
```