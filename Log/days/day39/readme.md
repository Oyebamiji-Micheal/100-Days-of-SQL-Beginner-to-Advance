# SQL Study Plan

## Day 10
 
Problem: [Market Analysis I](https://leetcode.com/problems/market-analysis-i/)   
Difficulty: Easy

Solution
```SQL
SELECT
    Users.user_id AS buyer_id,
    join_date, 
    IFNULL(COUNT(order_date), 0) AS orders_in_2019 
FROM Users 
LEFT JOIN
    Orders
    ON Users.user_id = Orders.buyer_id AND YEAR(order_date) = '2019'
GROUP BY Users.user_id
```
;