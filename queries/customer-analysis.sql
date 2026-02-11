-- ============================================
-- CUSTOMER ANALYSIS QUERIES
-- ============================================
-- Business Questions: Customer segmentation and spending patterns
-- Database: sql_store
-- Author: ARANAS DOMINICK
-- Date: February 2026
-- ============================================

-- --------------------------------------------
-- Query 1: Customer Segmentation by Points
-- --------------------------------------------
-- Business Question: How are customers distributed across value tiers?
-- Purpose: Identify high-value customers for targeted marketing

USE sql_store;

SELECT 
    state,
    COUNT(customer_id) AS customers_per_state,
    SUM(CASE WHEN points >= 3000 THEN 1 ELSE 0 END) AS gold_customers,
    SUM(CASE WHEN points BETWEEN 1000 AND 2999 THEN 1 ELSE 0 END) AS silver_customers,
    SUM(CASE WHEN points < 1000 THEN 1 ELSE 0 END) AS bronze_customers,
    ROUND(AVG(points), 0) AS avg_points
FROM customers
GROUP BY state 
ORDER BY state;

-- Key Insight : Analysis shows a significant geographic concentration in Florida (FL) and Virginia (VA), which house the majority of "Gold" tier customers (points > 3000).
-- Interestingly, while CA has several customers, they trend towards the "Silver" and "Bronze" tiers,
-- suggesting a high volume of newer or less frequent shoppers in that region compared to the high-loyalty hubs on the East Coast.

-- --------------------------------------------
-- Query 2: Top Spending Customers
-- --------------------------------------------
-- Business Question: Who are our most valuable customers?
-- Purpose: Identify VIP customers for retention programs

SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    COUNT(o.order_id) AS total_orders,
    SUM(oi.quantity * oi.unit_price) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_id, customer_name
ORDER BY total_spent DESC
LIMIT 10;

-- Key Insight:The data identifies Ambur Roseburgh and Freddi Boagey as the top VIPs by total spend.
-- A critical business finding: high point totals don't always correlate perfectly with total spend in this dataset—some customers are "high-frequency/low-value" while others are "low-frequency/high-value.
-- This suggests a need for a tiered reward system that balances transaction count with total invoice value.
