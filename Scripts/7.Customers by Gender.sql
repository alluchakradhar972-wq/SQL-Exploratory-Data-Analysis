--Find total customers by gender
SELECT 
gender,
COUNT(customer_key) AS no_of_customers 
FROM gold.dim_customers
GROUP BY gender
ORDER BY no_of_customers DESC