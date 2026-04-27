SELECT 
    o.order_id,
    o.order_purchase_timestamp AS order_date,
    t.column2 AS category,
    oi.price AS revenue,
    oi.freight_value AS shipping_cost,
    (oi.price + oi.freight_value) AS total_order_value,
    CAST((oi.freight_value / NULLIF(oi.price, 0)) * 100 AS DECIMAL(10,2)) AS shipping_ratio_percent
FROM dbo.orders o
JOIN dbo.order_items oi ON o.order_id = oi.order_id
JOIN dbo.products p ON oi.product_id = p.product_id
JOIN dbo.product_category_name t ON p.product_category_name = t.column1
WHERE o.order_status = 'delivered' 
  AND t.column1 <> 'product_category_name'
ORDER BY order_date DESC;


SELECT 
    order_id,
    order_purchase_timestamp AS purchase_date,
    order_delivered_customer_date AS delivered_date,
    order_estimated_delivery_date AS estimated_date,
    DATEDIFF(day, order_purchase_timestamp, order_delivered_customer_date) AS actual_delivery_days,
    DATEDIFF(day, order_estimated_delivery_date, order_delivered_customer_date) AS delay_days
FROM dbo.orders
WHERE order_status = 'delivered' 
  AND order_delivered_customer_date IS NOT NULL
ORDER BY actual_delivery_days DESC;

SELECT 
    c.customer_state AS state,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(oi.price) AS total_revenue,
    AVG(oi.freight_value) AS avg_shipping_cost,
    SUM(oi.price) / COUNT(DISTINCT o.order_id) AS avg_ticket_value
FROM dbo.orders o
JOIN dbo.order_items oi ON o.order_id = oi.order_id
JOIN dbo.customers c ON o.customer_id = c.customer_id
WHERE o.order_status = 'delivered'
GROUP BY c.customer_state
ORDER BY total_revenue DESC;
