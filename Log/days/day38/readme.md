# SQL Study Plan

## Day 10

Problem: [https://leetcode.com/problems/actors-and-directors-who-cooperated-at-least-three-times/](https://leetcode.com/problems/actors-and-directors-who-cooperated-at-least-three-times/)    
Difficulty: Easy

Solution
```SQL
SELECT 
    actor_id, director_id
FROM 
    ActorDirector
GROUP BY 
    actor_id, director_id
HAVING COUNT(actor_id) >= 3
;
```
