--Find total products by category
SELECT 
category,
COUNT(product_key) AS no_of_products
FROM gold.dim_products
GROUP BY category
ORDER BY no_of_products DESC