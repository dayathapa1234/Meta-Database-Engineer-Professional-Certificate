mysql;
show databases;
CREATE DATABASE CM_Mobiles;
USE CM_Mobiles;
CREATE TABLE customers( username CHAR(9), fullName VARCHAR(100), email VARCHAR(255)); 
Show tables;
SHOW columns FROM customers;

CREATE TABLE feedback(feedbackID CHAR(8), feedbackType VARCHAR(100), comment TEXT(500));
