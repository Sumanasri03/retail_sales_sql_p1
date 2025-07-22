-- 1. Total Sales by Category
SELECT category, SUM(total_sale) AS total_sales
FROM retail_sales
GROUP BY category
ORDER BY total_sales DESC;

-- 2. Average Sales by Gender
SELECT gender, AVG(total_sale) AS avg_sales
FROM retail_sales
GROUP BY gender;

-- 3. Age Group Distribution
SELECT 
  CASE
    WHEN age BETWEEN 18 AND 25 THEN '18-25'
    WHEN age BETWEEN 26 AND 35 THEN '26-35'
    WHEN age BETWEEN 36 AND 50 THEN '36-50'
    ELSE '50+'
  END AS age_group,
  COUNT(*) AS total_customers
FROM retail_sales
GROUP BY age_group;

-- 4. Daily Sales Trend
SELECT sale_date, SUM(total_sale) AS daily_sales
FROM retail_sales
GROUP BY sale_date
ORDER BY sale_date;

-- 5. Top 5 Customers by Total Spend
SELECT customer_id, SUM(total_sale) AS total_spend
FROM retail_sales
GROUP BY customer_id
ORDER BY total_spend DESC
LIMIT 5;
