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
-- This SQL query provides insights into inventory management by identifying 
-- products that have never been ordered, revealing potential issues with 
-- product demand, marketing effectiveness, or product lifecycle management.
--
-- The query uses a LEFT JOIN between the products and order_items tables, 
-- filtering for products where no corresponding order exists 
-- (order_id IS NULL), and orders results alphabetically by product name.
--
-- The results show that "Sweet Pea Sprouts" (product_id 7) is sitting in 
-- inventory with 98 units at a unit price of $3.29, representing 
-- approximately $322.42 in unsold inventory value generating zero revenue.
--
-- This may indicate:
--   • Lack of market demand
--   • Insufficient marketing or product visibility
--   • Seasonal timing misalignment
--   • A newly introduced product without traction
--
-- The presence of unordered inventory highlights the need for strategic action,
-- such as promotional campaigns, price adjustments, bundling with popular 
-- products, or potential discontinuation and clearance if performance remains weak.
--
-- This type of analysis is crucial for optimizing inventory turnover, 
-- reducing carrying costs, and reallocating resources toward 
-- higher-performing products.
