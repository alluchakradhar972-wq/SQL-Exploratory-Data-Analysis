--Find the total customers by countries
SELECT 
country,
COUNT(customer_id) AS no_of_customers 
FROM gold.dim_customers
GROUP BY country
ORDER BY COUNT(customer_id) DESC