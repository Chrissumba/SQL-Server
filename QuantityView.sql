CREATE VIEW product_sales_view AS
SELECT
  p.product_id,
  p.product_name,
  SUM(oi.quantity) AS total_quantity,
  SUM(oi.quantity * oi.list_price) AS total_sales_amount
FROM
  production.products AS p
JOIN
  sales.order_items AS oi ON p.product_id = oi.product_id
GROUP BY
  p.product_id, p.product_name;

  SELECT product_name, total_quantity, total_sales_amount FROM product_sales_view;
