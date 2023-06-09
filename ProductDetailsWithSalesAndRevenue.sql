CREATE VIEW product_sales_summary_view AS
SELECT
  p.product_id,
  p.product_name,
  p.brand_id,
  p.category_id,
  p.model_year,
  p.list_price,
  SUM(oi.quantity) AS total_sales_quantity,
  SUM(oi.quantity * oi.list_price) AS total_revenue
FROM
  production.products AS p
JOIN
  sales.order_items AS oi ON p.product_id = oi.product_id
GROUP BY
  p.product_id, p.product_name, p.brand_id, p.category_id, p.model_year, p.list_price;
