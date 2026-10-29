-- BOUNDARIES OF THE DATE EARLIEST AND THE LATEST

SELECT
MIN(order_date) AS min_order_date,
MIN(shipping_date) AS min_shipping_date,
MIN(due_date) AS min_due_date,
MAX(order_date) AS max_order_date,
MAX(shipping_date) AS max_shipping_date,
MAX(due_date) AS max_due_date
FROM gold.fact_sales

-- FIND THE YOUNGEST AND THE OLDEST CUSTOMERS
SELECT
MIN(date_of_birth) AS youngest,
DATEDIFF(year,MIN(date_of_birth),GETDATE()) AS largest_age_,
MAX(date_of_birth) AS oldest,
DATEDIFF(year,MAX(date_of_birth),GETDATE()) AS youngest_age,
DATEDIFF(year,MIN(date_of_birth),MAX(date_of_birth)) AS largest_age_diff
FROM gold.dim_customers