
DROP DATABASE IF EXISTS ecomm;
CREATE DATABASE ecomm;
USE ecomm;

CREATE TABLE customers (
    customerID INT AUTO_INCREMENT PRIMARY KEY,
    customerName VARCHAR(100) NOT NULL,
    country VARCHAR(50)
);

CREATE TABLE products (
    productCode INT AUTO_INCREMENT PRIMARY KEY,
    productName VARCHAR(100) NOT NULL,
    productVendor VARCHAR(100),
    productLine VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE orders (
    orderID INT AUTO_INCREMENT PRIMARY KEY,
    customerID INT,
    orderDate DATE,
    shippedDate DATE,
    status VARCHAR(20),
    FOREIGN KEY (customerID) REFERENCES customers(customerID)
);

CREATE TABLE payments (
    paymentID INT AUTO_INCREMENT PRIMARY KEY,
    customerID INT,
    checkNumber VARCHAR(50),
    paymentDate DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (customerID) REFERENCES customers(customerID)
);

CREATE TABLE orderdetails (
    orderDetailID INT AUTO_INCREMENT PRIMARY KEY,
    orderID INT,
    productCode INT,
    quantityOrdered INT,
    priceEach DECIMAL(10,2),
    FOREIGN KEY (orderID) REFERENCES orders(orderID),
    FOREIGN KEY (productCode) REFERENCES products(productCode)
);
