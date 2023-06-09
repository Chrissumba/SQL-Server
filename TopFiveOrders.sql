SELECT TOP 5
  c.customer_id,
  c.first_name,
  c.last_name,
  COUNT(o.order_id) AS order_count
FROM
  sales.customers AS c
JOIN
  sales.orders AS o ON c.customer_id = o.customer_id
GROUP BY
  c.customer_id, c.first_name, c.last_name
ORDER BY
  order_count DESC;
