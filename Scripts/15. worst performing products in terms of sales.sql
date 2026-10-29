--which are the worst performing products in terms of sales
SELECT TOP 5
P.product_id,
SUM(F.sales_amount) AS total_revenue
FROM gold.fact_sales AS F
LEFT JOIN gold.dim_products AS P
ON F.product_number =P.product_number
GROUP BY P.product_id
ORDER BY SUM(F.sales_amount)

SELECT
*
FROM
	(SELECT
	P.product_name,
	SUM(F.sales_amount) AS total_revenue,
	ROW_NUMBER() OVER(ORDER BY SUM(F.sales_amount) ASC ) AS ranking
	FROM gold.fact_sales AS F
	LEFT JOIN gold.dim_products AS P
	ON F.product_number =P.product_number
	GROUP BY P.product_name)t
WHERE ranking <=5