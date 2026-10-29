-- which 5 products generate the highest revenue
SELECT TOP 5
P.product_id,
SUM(F.sales_amount) AS total_revenue
FROM gold.fact_sales AS F
LEFT JOIN gold.dim_products AS P
ON F.product_number =P.product_number
GROUP BY P.product_id
ORDER BY SUM(F.sales_amount) DESC


SELECT
*
FROM
	(SELECT
	P.product_name,
	SUM(F.sales_amount) AS total_revenue,
	ROW_NUMBER() OVER(ORDER BY SUM(F.sales_amount) DESC ) AS ranking
	FROM gold.fact_sales AS F
	LEFT JOIN gold.dim_products AS P
	ON F.product_number =P.product_number
	GROUP BY P.product_name)t
WHERE ranking <=5