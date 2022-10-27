import mysql.connector

db = mysql.connector.connect(
    host='localhost',
    user='root',
    passwd='************',
    database='mysql_python_db'
)

mycursor = db.cursor()

# Create user table
mycursor.execute(
    '''
    CREATE TABLE users (
        id INT AUTO_INCREMENT PRIMARY KEY,
        first_name VARCHAR(100),
        last_name VARCHAR(100)
    )
    '''
)

# Create tweet info table
mycursor.execute(
    '''
    CREATE TABLE tweet_info (
        id INT AUTO_INCREMENT PRIMARY KEY,
        tweet_date DATE,
        retweet_count INT,
        favorite_count INT,
        user_id INT,
        FOREIGN KEY (user_id) REFERENCES users(id)
    )
    '''
)

# Insert data into respective tables
query = 'INSERT INTO users (first_name, last_name) VALUES (%s, %s)'
values = [
    ('Paul', 'Anderson'), ('Mary', 'Rita'),
    ('Danny', 'Might'), ('Debby', 'Praise'),
    ('Maco', 'Einstein'), ('Thompson', 'Stone'),
    ('Josh', 'Mane'), ('George', 'Snow'),
    ('Simon', 'Peter'), ('David', 'Lius')
]
mycursor.executemany(query, values)
db.commit()

query = 'INSERT INTO tweet_info (tweet_date, retweet_count, favorite_count, user_id) VALUES(%s, %s, %s, %s)'
values = [
    ('2022-03-03', 100, 342, 2), ('2022-04-10', 49, 20, 1),
    ('2021-08-03', 200, 102, 4), ('2022-11-11', 30, 54, 2),
    ('2020-05-09', 3, 3, 8), ('2022-09-23', 59, 70, 3),
    ('2017-04-20', 19, 20, 4), ('2020-08-13', 200, 301, 1),
    ('2018-11-12', 33, 54, 6), ('2019-05-22', 340, 465, 5),
    ('2020-03-03', 100, 342, 6), ('2019-04-10', 60, 70, 7),
    ('2018-08-03', 200, 202, 3), ('2015-11-11', 320, 540, 5),
    ('2016-05-09', 583, 700, 8)
]
mycursor.executemany(query, values)
db.commit()
