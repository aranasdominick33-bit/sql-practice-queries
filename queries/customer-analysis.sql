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

-- Key Insight :Looking at this SQL query and its results, the key insights show that the database is analyzing customer loyalty segmentation across different US states. 
-- The query categorizes customers into three tiers based on their points: gold customers (3000+ points), silver customers (1000-2999 points), and bronze customers (under 1000 points), while also calculating average points per state. 
-- The results reveal significant geographic variation in customer engagement, with states like Illinois (IL) and Texas (TX) having gold-tier customers with high average points (3073 and 3675 respectively), while states like Colorado (CO) and Tennessee (TN) show strong silver-tier presence but no gold customers, suggesting different market penetration or customer behavior patterns. 
-- California (CA) stands out with zero customers in any premium tier despite having one customer, indicating either a new market or a churned customer base, while the overall distribution shows most states have relatively small customer bases (1-2 customers each),
-- pointing to either a nascent business, a niche market, or a filtered dataset focused on specific customer segments.

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

-- Key Insight:Looking at this SQL query, the key insights reveal a customer value analysis that identifies the top 10 highest-spending customers by joining customer data with their complete order history.
-- The query calculates two critical metrics: purchase frequency (total number of orders) and lifetime value (total amount spent across all order items), which together provide a comprehensive view of customer profitability.
-- By ordering results by total spend in descending order, this analysis enables the business to identify their most valuable customers for targeted retention strategies, VIP programs, or personalized marketing campaigns.
-- The use of CONCAT to display full customer names makes the results immediately actionable for customer relationship management, while the GROUP BY clause ensures accurate aggregation of multiple orders and line items per customer. 
-- This type of query is fundamental for implementing the Pareto principle in retail analytics, typically revealing that a small percentage of customers (the top 10 in this case) contribute a disproportionately large share of total revenue,
-- which helps businesses prioritize resource allocation and customer service efforts toward their highest-value relationships.
