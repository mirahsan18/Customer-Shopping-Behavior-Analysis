-- create database Customer_bihavior;
-- SELECT COUNT(*) AS total_records
-- FROM customer_shopping;
DESCRIBE customer_shopping;
SELECT COUNT(DISTINCT `Customer ID`) AS total_customers
FROM customer_shopping;

SELECT SUM(`Purchase Amount (USD)`) AS total_revenue
FROM customer_shopping;

SELECT AVG(`Purchase Amount (USD)`) AS average_purchase
FROM customer_shopping;

SELECT 
    Category,
    COUNT(*) AS total_purchases
FROM customer_shopping
GROUP BY Category
ORDER BY total_purchases DESC;

SELECT 
    `Item Purchased`,
    COUNT(*) AS total_purchases
FROM customer_shopping
GROUP BY `Item Purchased`
ORDER BY total_purchases DESC
LIMIT 10;

SELECT 
    Category,
    SUM(`Purchase Amount (USD)`) AS total_revenue
FROM customer_shopping
GROUP BY Category
ORDER BY total_revenue DESC;

SELECT 
    Gender,
    COUNT(*) AS total_customers,
    SUM(`Purchase Amount (USD)`) AS total_revenue,
    AVG(`Purchase Amount (USD)`) AS avg_purchase
FROM customer_shopping
GROUP BY Gender
ORDER BY total_revenue DESC;

SELECT 
    `Customer ID`,
    SUM(`Purchase Amount (USD)`) AS total_spent
FROM customer_shopping
GROUP BY `Customer ID`
ORDER BY total_spent DESC
LIMIT 10;

SELECT 
    `Subscription Status`,
    COUNT(*) AS total_customers,
    SUM(`Purchase Amount (USD)`) AS total_revenue,
    AVG(`Purchase Amount (USD)`) AS avg_purchase
FROM customer_shopping
GROUP BY `Subscription Status`
ORDER BY total_revenue DESC;

SELECT 
    `Discount Applied`,
    COUNT(*) AS total_orders,
    SUM(`Purchase Amount (USD)`) AS total_revenue,
    AVG(`Purchase Amount (USD)`) AS avg_purchase
FROM customer_shopping
GROUP BY `Discount Applied`
ORDER BY total_revenue DESC;

SELECT 
    Season,
    COUNT(*) AS total_orders,
    SUM(`Purchase Amount (USD)`) AS total_revenue,
    AVG(`Purchase Amount (USD)`) AS avg_purchase
FROM customer_shopping
GROUP BY Season
ORDER BY total_revenue DESC;

SELECT 
    Location,
    COUNT(*) AS total_orders,
    SUM(`Purchase Amount (USD)`) AS total_revenue,
    AVG(`Purchase Amount (USD)`) AS avg_purchase
FROM customer_shopping
GROUP BY Location
ORDER BY total_revenue DESC;

SELECT 
    `Frequency of Purchases`,
    COUNT(*) AS total_customers,
    SUM(`Purchase Amount (USD)`) AS total_revenue,
    AVG(`Purchase Amount (USD)`) AS avg_purchase
FROM customer_shopping
GROUP BY `Frequency of Purchases`
ORDER BY total_revenue DESC;

SELECT
    CASE
        WHEN Age < 20 THEN 'Under 20'
        WHEN Age BETWEEN 20 AND 29 THEN '20-29'
        WHEN Age BETWEEN 30 AND 39 THEN '30-39'
        WHEN Age BETWEEN 40 AND 49 THEN '40-49'
        WHEN Age BETWEEN 50 AND 59 THEN '50-59'
        ELSE '60+'
    END AS age_group,
    COUNT(*) AS total_orders,
    SUM(`Purchase Amount (USD)`) AS total_revenue,
    AVG(`Purchase Amount (USD)`) AS avg_purchase
FROM customer_shopping
GROUP BY age_group
ORDER BY total_revenue DESC;

SELECT
    ROUND(`Review Rating`, 1) AS rating,
    COUNT(*) AS total_reviews,
    AVG(`Purchase Amount (USD)`) AS avg_purchase
FROM customer_shopping
GROUP BY rating
ORDER BY rating DESC;

SELECT
    Size,
    COUNT(*) AS total_orders,
    SUM(`Purchase Amount (USD)`) AS total_revenue,
    AVG(`Purchase Amount (USD)`) AS avg_purchase
FROM customer_shopping
GROUP BY Size
ORDER BY total_revenue DESC;

SELECT
    Color,
    COUNT(*) AS total_orders,
    SUM(`Purchase Amount (USD)`) AS total_revenue
FROM customer_shopping
GROUP BY Color
ORDER BY total_orders DESC;

SELECT
    Season,
    Category,
    COUNT(*) AS total_orders,
    SUM(`Purchase Amount (USD)`) AS total_revenue
FROM customer_shopping
GROUP BY Season, Category
ORDER BY Season, total_revenue DESC;
