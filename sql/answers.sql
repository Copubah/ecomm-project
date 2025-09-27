
-- Q1: Total payment amount per payment date (latest 5)
SELECT paymentDate, SUM(amount) AS totalPaid
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- Q2: Average credit limit (simulated with amount field here)
SELECT c.customerName, c.country, AVG(p.amount) AS avgCredit
FROM customers c
JOIN payments p ON c.customerID = p.customerID
GROUP BY c.customerName, c.country;

-- Q3: Total price of products ordered
SELECT productCode, SUM(quantityOrdered * priceEach) AS totalPrice
FROM orderdetails
GROUP BY productCode;

-- Q4: Highest payment amount per check number
SELECT checkNumber, MAX(amount) AS maxAmount
FROM payments
GROUP BY checkNumber;
