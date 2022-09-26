# SQL Study Plan

## Day 12
 
Problem: [ Sales Analysis III](https://leetcode.com/problems/sales-analysis-iii/)   
Difficulty: Easy

Solution
```SQL
SELECT 
    Product.product_id , 
    Product.product_name
FROM Product 
LEFT JOIN Sales
    ON Product.product_id = Sales.product_id
GROUP BY 
    Sales.product_id
HAVING 
    MIN(Sales.sale_date) >= '2019-01-01' AND 
    MAX(Sales.sale_date) <= '2019-03-31'
```
;