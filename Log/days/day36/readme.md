# SQL Study Plan

## Day 8 Control Flow

Problem: [Top Travellers](https://leetcode.com/problems/top-travellers//)    
Difficulty: Easy

Solution
```SQL
SELECT 
    Users.name , IFNULL(SUM(Rides.distance), 0) AS travelled_distance  
From 
    Users 
    LEFT JOIN Rides
    ON Users.id = Rides.user_id
GROUP BY Users.id
ORDER BY travelled_distance DESC, Users.name;
```
