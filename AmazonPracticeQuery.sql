-- FIXED DATA TYPES
ALTER TABLE amazon_sales
ALTER COLUMN price DECIMAL(18,2);

ALTER TABLE amazon_sales
ALTER COLUMN discounted_price DECIMAL(18,2);

ALTER TABLE amazon_sales
ALTER COLUMN total_revenue DECIMAL(18,2);

ALTER TABLE amazon_sales
ALTER COLUMN rating DECIMAL(18,2);

-- TOTAL REVENUE
SELECT SUM(total_revenue)AS Total_Revenue
FROM amazon_sales;

-- TOTAL ORDERS
SELECT COUNT(order_id)
FROM amazon_sales;

-- PRODUCT_ID FOR EACH CATEGORY
SELECT DISTINCT product_id, product_category
FROM amazon_sales
ORDER BY product_id
;

-- EACH CATEGORY
SELECT DISTINCT product_category
FROM amazon_sales
;

-- AVERAGE CUSTOMER RATING FOR EACH PRODUCT
SELECT product_id, product_category, AVG(rating) AS Average_Rating
FROM amazon_sales
GROUP BY product_id, product_category 
ORDER BY product_id, AVG(rating) DESC
;

-- AVERAGE CUSTOMER RATING FOR EACH CATEGORY
SELECT product_category, AVG(rating) AS Average_Rating
FROM amazon_sales
GROUP BY product_category 
ORDER BY AVG(rating) DESC
;

-- TOTAL ORDERS BY DAY
SELECT order_date, COUNT(order_id) AS total_orders
FROM amazon_sales
GROUP BY order_date
ORDER BY order_date;

-- TOTAL ORDERS BY MONTH AND CATEGORY 
SELECT YEAR(order_date) AS YEAR, MONTH(order_date) AS MONTH, product_category, COUNT(*) AS num_orders
FROM amazon_sales
GROUP BY YEAR(order_date), MONTH(order_date), product_category
ORDER BY YEAR, MONTH, product_category
;

-- REVENUE BY MONTH AND CATEGORY
SELECT YEAR(order_date) AS YEAR, MONTH(order_date) AS MONTH, product_category, ISNULL(CAST(SUM(discounted_price * quantity_sold) AS DECIMAL(18,2)), 0.00) AS revenue
FROM amazon_sales
GROUP BY YEAR(order_date), MONTH(order_date), product_category
ORDER BY YEAR, MONTH
;

-- REVENUE BY REGION 
SELECT YEAR(order_date) AS YEAR, MONTH(order_date) AS MONTH, customer_region, ISNULL(CAST(SUM(discounted_price * quantity_sold) AS DECIMAL(18,2)), 0.00) AS revenue
FROM amazon_sales
GROUP BY YEAR(order_date), MONTH(order_date), customer_region
ORDER BY YEAR, MONTH
;

-- PAYMENT METHODS
SELECT payment_method, COUNT(order_id) AS count
FROM amazon_sales
GROUP BY payment_method
ORDER BY count DESC;

-- LinkedIn Portfolio

-- CATEGORY PERFORMANCE 
SELECT product_category, SUM(total_revenue) AS category_revenue, SUM(quantity_sold) as category_quantity, COUNT(order_id) AS orders, CAST(AVG(rating) AS DECIMAL(18,2)) AS average_rating
FROM amazon_sales
GROUP BY product_category
ORDER BY SUM(total_revenue) DESC;

-- TOP PERFORMING PRODUCTS 
SELECT TOP 5 product_id, product_category, SUM(total_revenue) AS revenue, SUM(quantity_sold) AS quantity, COUNT(order_id) AS orders, CAST(AVG(rating) AS DECIMAL(18,2)) AS average_rating
FROM amazon_sales
GROUP BY product_id, product_category
ORDER BY SUM(total_revenue) DESC;

-- Discounts and Sales
SELECT 
CASE
	WHEN discount_percent = 0 THEN '0%'
	WHEN discount_percent BETWEEN 1 AND 10 THEN '1-10%'
	WHEN discount_percent BETWEEN 11 AND 20 THEN '11-20%'
	WHEN discount_percent BETWEEN 21 AND 30 THEN '21-30%'
	END AS discounted_range,

	COUNT(*) as order_count, SUM(quantity_sold) AS units_sold, SUM(total_revenue) AS total_revenue
FROM amazon_sales
GROUP BY CASE
	WHEN discount_percent = 0 THEN '0%'
	WHEN discount_percent BETWEEN 1 AND 10 THEN '1-10%'
	WHEN discount_percent BETWEEN 11 AND 20 THEN '11-20%'
	WHEN discount_percent BETWEEN 21 AND 30 THEN '21-30%'
	END
	
ORDER BY discounted_range;

-- SALES BY REGION
SELECT customer_region, CAST(SUM(discounted_price * quantity_sold) AS DECIMAL(18,2)) AS revenue, COUNT(order_id) AS orders,
SUM(quantity_sold) AS units_sold, CAST(AVG(total_revenue) AS DECIMAL(18,2)) AS average_order_revenue
FROM amazon_sales
GROUP BY  customer_region
ORDER BY revenue DESC
;

-- SALES BY REGION BY YEAR
SELECT customer_region, CAST(SUM(CASE WHEN YEAR(order_date) = 2022 THEN total_revenue ELSE 0 END) AS DECIMAL(18, 2)) AS Year_2022,
CAST(SUM(CASE WHEN YEAR(order_date) = 2023 THEN total_revenue ELSE 0 END) AS DECIMAL(18, 2)) AS Year_2023
FROM amazon_sales
GROUP BY  customer_region
;

-- CUSTOMER SATISFACTION AND SALES
SELECT product_id, product_category, SUM(total_revenue) AS revenue, SUM(quantity_sold) AS quantity, CAST(AVG(rating) AS DECIMAL(18,2)) AS average_rating, SUM(review_count) AS reviews
FROM amazon_sales
GROUP BY product_id, product_category
ORDER BY revenue DESC;

