-- determine the distribution of orders by hour  for the day.
SELECT 
    HOUR(order_time) AS times, COUNT(order_id)
FROM
    orders
GROUP BY times;