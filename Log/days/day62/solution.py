import mysql.connector


db = mysql.connector.connect(
    host='localhost',
    user='root',
    passwd='Ojurimicheal10..',
    database='mysql_python_db'
)

mycursor = db.cursor()

# Show all records in users table
mycursor.execute('SELECT * FROM users')
for x in mycursor:
    print(x)
print('')

# Show all records in tweet_info table
mycursor.execute('SELECT * FROM tweet_info')
for x in mycursor:
    print(x)
print('')

# Users whose last name start with a vowel
query = 'SELECT * FROM users WHERE SUBSTRING(last_name, 1, 1) \
    IN ("a", "e", "i", "o", "u")'
mycursor.execute(query)
for x in mycursor:
    print(x)
print('')

# Top three users with the highest retweet count
query = 'SELECT * FROM users \
    JOIN tweet_info \
    ON users.id = tweet_info.user_id \
    ORDER BY retweet_count DESC\
    LIMIT 3'
mycursor.execute(query)
for x in mycursor:
    print(x)
print('')

# Users who haven't posted at all
query = 'SELECT * FROM USERS \
    LEFT JOIN TWEET_INFO \
    ON USERS.ID = TWEET_INFO.USER_ID \
    WHERE retweet_count IS NULL'
mycursor.execute(query)
for x in mycursor:
    print(x)
