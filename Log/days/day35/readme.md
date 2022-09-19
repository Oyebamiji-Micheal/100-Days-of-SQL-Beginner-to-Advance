# SQL Study Plan

## Day 7 Functions

Problem: [Find Followers Count](https://leetcode.com/problems/find-followers-count/)    
Difficulty: Easy

Solution
```SQL
SELECT 
    user_id, COUNT(user_id) AS followers_count 
FROM 
    followers 
GROUP BY 
    user_id 
    ORDER BY user_id;
```
--------
<br>

Problem: [Daily Leads and Partners](https://leetcode.com/problems/rearrange-products-table/)
Difficulty: Easy

Solution
```SQL
SELECT
    date_id,
    make_name,
    COUNT(DISTINCT lead_id) AS unique_leads,
    COUNT(DISTINCT partner_id) AS unique_partners
FROM 
    DailySales
GROUP BY 
    date_id, make_name
```

--------
<br>

Problem: [User Activity for the Past 30 Days I](https://leetcode.com/problems/user-activity-for-the-past-30-days-i/)
Difficulty: Easy

Solution
```SQL
SELECT 
    activity_date AS day, 
    COUNT(DISTINCT user_id) AS active_users
FROM 
    Activity
WHERE 
    activity_date <= '2019-07-27' AND activity_date > '2019-06-27'
GROUP BY 
    activity_date
ORDER BY 
    activity_date ASC;
```