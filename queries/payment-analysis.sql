-- ============================================
-- PAYMENT & INVOICE ANALYSIS
-- ============================================

-- Query: Client Payment Patterns
-- Business Question: What is the payment status of all invoices?
-- Purpose: Cash flow management and collections strategy

USE sql_invoicing;

SELECT 
    c.name AS client_name,
    c.city,
    COUNT(i.invoice_id) AS total_invoices,
    SUM(CASE WHEN i.payment_total = i.invoice_total THEN 1 ELSE 0 END) AS fully_paid,
    SUM(CASE WHEN i.payment_total > 0 AND i.payment_total < i.invoice_total THEN 1 ELSE 0 END) AS partially_paid,
    SUM(CASE WHEN i.payment_total = 0 THEN 1 ELSE 0 END) AS unpaid,
    SUM(i.invoice_total - i.payment_total) AS outstanding_balance
FROM clients c
JOIN invoices i ON c.client_id = i.client_id
GROUP BY c.client_id, c.name, c.city
ORDER BY outstanding_balance DESC;

-- This SQL query reveals critical insights into accounts receivable management 
-- and client payment behavior across different cities.
--
-- The query analyzes invoice payment status by categorizing clients into:
--   • Fully paid (payment equals invoice total)
--   • Partially paid (payment is between zero and invoice total)
--   • Unpaid (no payment received)
--
-- It also calculates outstanding balances and orders results by the highest 
-- outstanding amounts first.
--
-- The results show concerning payment patterns. Topidlounge in Portland has 
-- the largest outstanding balance ($841.63) across 6 invoices, with:
--   • 3 fully paid
--   • 3 partially paid
--   • 3 completely unpaid
-- This indicates inconsistent payment behavior and potential cash flow issues.
--
-- Vinte in Syracuse follows with $728.34 outstanding from 5 invoices, 
-- including 1 partially paid and 4 unpaid invoices, representing a high-risk 
-- account requiring immediate attention.
--
-- Yadel in San Francisco demonstrates slightly better payment discipline 
-- with $557.46 outstanding from 5 invoices (3 fully paid, 3 partially paid, 
-- 2 unpaid).
--
-- Myiworks in Huntington shows the smallest exposure ($101.79) with just 
-- 1 invoice that remains unpaid, suggesting either a newer client relationship 
-- or a recent isolated payment delay.
--
-- Overall, the data highlights the need for stronger collection processes, 
-- particularly in the Portland and Syracuse markets, and suggests that 
-- geographic location may correlate with payment reliability across 
-- the client portfolio.
