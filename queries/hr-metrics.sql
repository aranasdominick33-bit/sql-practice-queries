-- ============================================
-- HR & EMPLOYEE ANALYTICS
-- ============================================

-- Query: Office Compensation Analysis
-- Business Question: How does compensation vary by office location?
-- Purpose: Ensure competitive and equitable pay across locations

USE sql_hr;

SELECT 
    o.city,
    o.state,
    COUNT(e.employee_id) AS employee_count,
    ROUND(AVG(e.salary), 2) AS avg_salary,
    MAX(e.salary) AS max_salary,
    MIN(e.salary) AS min_salary
FROM offices o
JOIN employees e ON o.office_id = e.office_id
GROUP BY o.office_id, o.city, o.state
HAVING employee_count > 2
ORDER BY avg_salary DESC;
