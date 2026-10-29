--What is the average costs in each category?
SELECT 
category,
AVG(product_cost) AS avg_cost
FROM gold.dim_products
GROUP BY category
ORDER BY avg_cost DESC