
USE ecomm;

INSERT INTO customers (customerName, country) VALUES
('John Doe', 'USA'),
('Jane Smith', 'UK'),
('Emily Clark', 'Canada');

INSERT INTO products (productName, productVendor, productLine, price) VALUES
('Laptop', 'Dell', 'Electronics', 1000.00),
('Mouse', 'Logitech', 'Accessories', 25.00),
('Tablet', 'Apple', 'Electronics', 800.00),
('Keyboard', 'HP', 'Accessories', 50.00),
('Phone', 'Samsung', 'Electronics', 600.00);

INSERT INTO orders (customerID, orderDate, shippedDate, status) VALUES
(1, '2025-01-10', '2025-01-15', 'Shipped'),
(2, '2025-01-12', '2025-01-18', 'Shipped'),
(3, '2025-01-20', NULL, 'Pending');

INSERT INTO payments (customerID, checkNumber, paymentDate, amount) VALUES
(1, 'CHK1001', '2025-01-11', 1025.00),
(2, 'CHK1002', '2025-01-13', 850.00),
(3, 'CHK1003', '2025-01-21', 600.00);

INSERT INTO orderdetails (orderID, productCode, quantityOrdered, priceEach) VALUES
(1, 1, 1, 1000.00),
(1, 2, 1, 25.00),
(2, 3, 1, 800.00),
(2, 4, 1, 50.00),
(3, 5, 1, 600.00);
