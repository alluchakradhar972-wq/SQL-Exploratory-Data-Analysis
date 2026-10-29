--Top 10 customers who have generated the highest revenue
SELECT TOP 5
F.customer_id,
C.first_name,
C.last_name,
SUM(sales_amount) AS total_revenue
FROM GOLD.fact_sales AS F
LEFT JOIN GOLD.dim_customers AS C
ON F.customer_id = C.customer_id
GROUP BY F.customer_id,C.first_name,C.last_name
ORDER BY SUM(sales_amount) DESC

SELECT
*
FROM
(SELECT
F.customer_id,
C.first_name,
C.last_name,
SUM(sales_amount) AS total_revenue,
ROW_NUMBER() OVER(ORDER BY SUM(sales_amount) DESC) AS ranks_customers
FROM GOLD.fact_sales AS F
LEFT JOIN GOLD.dim_customers AS C
ON F.customer_id = C.customer_id
GROUP BY F.customer_id,C.first_name,C.last_name)t
WHERE ranks_customers<=5