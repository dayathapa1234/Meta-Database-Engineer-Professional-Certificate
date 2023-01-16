mysql;
CREATE DATABASE bookshop;
USE bookshop;
CREATE TABLE customers(customerID INT, customerName VARCHAR(20), customerAddress VARCHAR(50));
INSERT INTO `customers` (`customerID`, `customerName`, `customerAddress`) VALUES
(1, 'Jack', '115 Old street Belfast'),
(2, 'James', '24 Carlson Rd London'),
(4, 'Maria', '5 Fredrik Rd, Bedford'),
(5, 'Jade', '10 Copland Ave Portsmouth '),
(6, 'Yasmine', '15 Fredrik Rd, Bedford'),
(3, 'Jimmy', '110 Copland Ave Portsmouth');     
DELETE FROM customers WHERE customerID = 3;
SELECT * FROM customers;
DELETE FROM customers WHERE customerID = 6;
