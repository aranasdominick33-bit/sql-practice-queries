-- ============================================
-- SALES REPORTS & ANALYSIS
-- ============================================

-- Query: Products Never Ordered
-- Business Question: Which products have zero sales?
-- Purpose: Identify dead inventory for clearance

USE sql_store;

SELECT 
    p.product_id,
    p.name,
    p.quantity_in_stock,
    p.unit_price
FROM products p 
LEFT JOIN order_items oi ON p.product_id = oi.product_id
WHERE oi.order_id IS NULL
ORDER BY p.name;
