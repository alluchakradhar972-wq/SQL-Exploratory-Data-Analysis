-- Top 3 customers with the fewest orders placed
SELECT
*
FROM
(SELECT
F.customer_id,
C.first_name,
C.last_name,
COUNT(DISTINCT F.order_number) AS no_of_orders,
ROW_NUMBER() OVER(ORDER BY COUNT(F.order_number)) AS rank_customers
FROM gold.fact_sales AS F
LEFT JOIN gold.dim_customers AS C
ON F.customer_id = C.customer_id
GROUP BY F.customer_id,C.first_name,C.last_name)t
WHERE rank_customers <= 3