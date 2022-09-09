-- display inactive users
SELECT 
	first_name, 
            last_name,
            retweet_count,
            favorite_count
FROM users 
LEFT JOIN tweet_info 
	ON users.id = tweet_info.user_id
ORDER BY retweet_count ASC;

-- display users with most retweet count
SELECT 
	first_name, 
            last_name,
            retweet_count,
            favorite_count
FROM users 
INNER JOIN tweet_info 
	ON users.id = tweet_info.user_id
ORDER BY retweet_count DESC
LIMIT 5;

-- display users with most like
SELECT 
	first_name, 
            last_name,
            retweet_count,
            favorite_count
FROM users 
INNER JOIN tweet_info 
	ON users.id = tweet_info.user_id
ORDER BY favorite_count DESC
LIMIT 5;