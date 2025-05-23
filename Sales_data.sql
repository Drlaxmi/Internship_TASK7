-- Monthly sales and order volume analysis
SELECT
    strftime('%Y-%m', order_date) AS year_month,
    SUM(sales) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM sales
GROUP BY year_month
ORDER BY year_month;

SELECT 
    customer_id,
    SUM(sales) AS total_spent,
    SUM(quantity) AS total_items,
    COUNT(DISTINCT order_id) AS orders
FROM sales
GROUP BY customer_id
ORDER BY total_spent DESC;


SELECT 
    product_id, 
    SUM(sales) AS total_sales,
    COUNT(DISTINCT order_id) AS order_count
FROM sales
GROUP BY product_id
ORDER BY total_sales DESC;
