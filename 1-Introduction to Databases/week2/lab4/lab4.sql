mysql;
CREATE DATABASE cm_devices; 
USE cm_devices;
CREATE TABLE invoice(customerID VARCHAR(50), orderDate DATE, quantity INT, price DECIMAL);
SHOW tables;
Show columns from invoice; 
CREATE TABLE customer_details(accountNumber INT(10), phoneNumber INT(11), email VARCHAR(50));
