# 100 Days of SQL: Beginner to Advance 
## Day47: Result Database Management System (RDMS)
### Project Schema Design 

In the [first project](https://github.com/Oyebamiji-Micheal/Result-Management-System-with-Python-Flask-and-MySQL) of this course, I used a very simple database schema involving 4 tables. The first table stores the email of the users, both admin and student. The second table stores the email of students only while the fourth and fifth store students' profile information and results. Also, creating, updating, inserting and deleting data is primarily handled by Flask-Admin, an extension of Flask. Not too much of a practice writing queries myself...

Today, I will recreate the database schema and write simple sql queries to perform basic CRUD operations.

The new schema will contain the following tables 
1. **Student Profiles**: This table will store basic profile information such as name, faculty, department and current_level. To keep things simple, this table does not necessarily need to store information such as date of birth, gender, nationality and so on.
2. **Courses**: This table will store course codes and their corresponding description. 
3. **Results** : Student respective scores 

Note: Names are random and majority of them are copied [online](https://1000randomnames.com/). To save myself some stress 😩, I have written python scripts to help generate profile information and results. 

I had a busy day today so I was only able to generate profile information only. I will pick up the pieces tomorrow.

