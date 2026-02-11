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
