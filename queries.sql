# 1)(SIMPLE QUERY) Retrieve names of customers from NewYork City 
SELECT customerName FROM customer WHERE customerAddress LIKE '%NY%';

#2) ( SIMPLE AGGREGATE) Retrieve average, variance, maximum and minimum discountAmount from the referrals where new customerID is 8
SELECT AVG(discountAmount) AS avg_discount, variance(discountAmount) as var_discount, min(discountAmount) as min_discount, max(discountAmount) as max_discount FROM referral
WHERE nr_customerID = 8;

# 3) (JOINS) 
  #(INNER JOIN)
# Retreive custoemrnames who get deliveries from same supplier
SELECT DISTINCT c.customerName
FROM customer c
INNER JOIN orders o ON c.customerID = o.o_customerID
INNER JOIN delivery d ON o.orderID = d.d_customerID
INNER JOIN supplier s ON d.d_supplierID = s.supplierID
INNER JOIN delivery d2 ON s.supplierID = d2.d_supplierID
INNER JOIN orders o2 ON d2.d_customerID = o2.o_customerID
WHERE o.o_customerID <> o2.o_customerID  ;


# 3.1)(LEFT JOIN) Retrieve the names of customers who have placed orders and their corresponding product names, along with any 
# customers who have not placed orders yet, along with their referral discount information
SELECT c.customerName, p.productName, COALESCE(r.discountAmount, 0) AS referralDiscount
FROM customer c
LEFT JOIN orders o ON c.customerID = o.o_customerID
LEFT JOIN product p ON o.o_plantID = p.productID
LEFT JOIN referral r ON c.customerID = r.nr_customerID;


# 3.5) (WINDOW FUNS)Retrieve count of all products and producttypes which are ordered by customers 
SELECT productName, productType, orderCount,
       RANK() OVER (ORDER BY orderCount DESC) AS ProductRank
FROM (
    SELECT p.productName, p.productType, COUNT(*) AS orderCount
    FROM orders o
    JOIN product p ON o.o_plantID = p.productID
    GROUP BY p.productName, p.productType
) AS ProductOrders;


# 4) (NESTED QUERY )Retrieve customerID, customerName  who can order producttype as Aeronutics
SELECT customerID, customerName
FROM customer
WHERE customerID IN (
    SELECT DISTINCT o.o_customerID
    FROM orders o
    JOIN product p ON o.o_plantID = p.p_manufacturingID
    WHERE p.productType = 'Aeronautics'
);

# 5)(CORRELATED) Retrieve the customer number and name of customers who placed orders for a product with a product ID '10' 
# and received the highest discount amount.
SELECT c.customerID AS customernumber, c.customerName
FROM customer c
JOIN orders o ON c.customerID = o.o_customerID
JOIN delivery d ON o.orderID = d.d_customerID
JOIN product p ON d.d_productID = p.productID
JOIN referral r ON o.orderID = r.nr_customerID
WHERE p.productID = 10 
  AND r.discountAmount = (
    SELECT MAX(discountAmount)
    FROM referral r_inner
    WHERE r_inner.nr_customerID = o.orderID
);

# 6) (ANY/ALL) Retrieve the name of Customer who ordered the most than others using ANY
SELECT c.customerName
FROM customer c
WHERE c.customerID = ANY (
    SELECT o.o_customerID
    FROM orders o
    GROUP BY o.o_customerID
    HAVING COUNT(*) >= ALL (
        SELECT COUNT(*)
        FROM orders
        GROUP BY o_customerID
    )
);

# 7 )(EXISTS) Write a SQL query using ‘EXISTS’ that returns the supplierName, supplierID who delivered the producttype ‘Instrumentation’
SELECT s.supplierName, s.supplierID
FROM supplier s
WHERE EXISTS (
    SELECT 1
    FROM delivery d
    JOIN product p ON d.d_productID = p.productID
    WHERE d.d_supplierID = s.supplierID
    AND p.producttype = 'Instrumentation'
);

# 8) (SUBQUERY)Retrieve all the customer names, customerID where the differenece between maximum and minimum orders is strictly above 1 (use subquery)
SELECT customerID, customerName
FROM (
    SELECT c.customerID, c.customerName,
           MAX(o.orderID) - MIN(o.orderID) AS orderDifference
    FROM customer c
    JOIN orders o ON c.customerID = o.o_customerID
    GROUP BY c.customerID, c.customerName
) subquery
WHERE orderDifference > 1;

# 9) (UNION)Write a SQL query that returns the customer id and address  whose name is 'Johnson LLC' or have ordered the productID ‘50’
SELECT DISTINCT c.customerID, c.customerAddress
FROM customer c WHERE c.customerName = 'Douglas Browning'
UNION
SELECT DISTINCT c.customerID, c.customerAddress
FROM customer c 
LEFT JOIN orders o ON c.customerID = o.o_customerID
LEFT JOIN product p ON o.o_plantID = p.p_manufacturingID
WHERE  p.productID = 50;

# 10) (WITHOUT LIMIT) Retrieve names and total count of top 5 productNames which were ordered by customers (without LIMIT)
SELECT productName, orderCount
FROM (
    SELECT p.productName, COUNT(*) as orderCount,
           ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) as rn
    FROM product p
    JOIN delivery d ON p.productID = d.d_productID
    GROUP BY p.productName
) subquery
WHERE rn <= 5;


#11) (CTE) Retrieve top 5 plants which manufacture maximum products without limit
WITH RankedPlants AS (
    SELECT p.plantID, p.plantCity, p.plantZipcode, COUNT(pr.productID) AS totalProductsManufactured,
           ROW_NUMBER() OVER (ORDER BY COUNT(pr.productID) DESC) AS plant_rank
    FROM manufacturing m
    JOIN product pr ON m.manufacturingID = pr.p_manufacturingID
    JOIN plant p ON m.m_plantID = p.plantID
    GROUP BY p.plantID, p.plantCity, p.plantZipcode
)
SELECT plantID, plantCity, plantZipcode, totalProductsManufactured
FROM RankedPlants
WHERE plant_rank <= 5;




