-- First thing Create your DB.
CREATE DATABASE course;

-- Create the table users in our case we want auto increment id , email, and password .

CREATE TABLE users(
 id INT PRIMARY KEY auto_increment,
 email VARCHAR(150),
 password VARCHAR(60)
);

-- Now let's insert values in the table we created .

INSERT INTO users(email,password,age) VALUES ("Bander@g.com","Bander4080",20), ("Saad@g.com","Saad6030",33),("Ahmed@g.com","Ahmed5050",25);

-- Let's test our table bu using SELECT. 
USE course;

SELECT * FROM users;