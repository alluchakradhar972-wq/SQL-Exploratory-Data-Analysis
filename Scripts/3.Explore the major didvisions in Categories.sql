-- EXPLORE ALL CATEGORIES THE MAJOR DIVISIONS
SELECT 
DISTINCT 
category,
sub_category,
product_name
FROM gold.dim_products
ORDER BY 1,2,3