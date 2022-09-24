# SQL Study Plan

## Day 11
 
Problem: [Bank Account Summary II](https://leetcode.com/problems/bank-account-summary-ii/)   
Difficulty: Easy

Solution
```SQL
SELECT 
    name, 
    CASE 
        WHEN amount > 0 THEN sum(amount) 
        ELSE -amount END as balance
FROM 
    Users 
INNER JOIN 
    Transactions 
    ON Users.account = Transactions.account
GROUP BY 
    name
HAVING balance > 10000
```
;