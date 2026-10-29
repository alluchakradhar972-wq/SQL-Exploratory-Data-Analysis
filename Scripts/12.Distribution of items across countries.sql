--What is the distribution of sold items across countries?
SELECT
c.country,
SUM(f.sales_quantity) AS distribution_
FROM gold.fact_sales AS f
LEFT JOIN gold.dim_customers AS c
ON f.customer_id =c.customer_id
GROUP BY c.country
ORDER BY distribution_ DESC