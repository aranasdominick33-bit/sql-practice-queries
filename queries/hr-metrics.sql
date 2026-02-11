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

-- This SQL query provides insights into HR analytics by examining office locations 
-- and their compensation structures across different US cities. The query joins 
-- office and employee data to analyze workforce distribution and salary metrics, 
-- filtering for offices with more than 2 employees and ordering results by average 
-- salary in descending order.
--
-- The results reveal that Richmond, VA leads with the highest average salary 
-- ($96,977.50) for 4 employees, followed closely by Cincinnati, OH offices showing 
-- similar employee counts (4 each) but with varying average salaries ($91,701.75 
-- and $81,262.00), suggesting potential differences in role composition or 
-- seniority levels between Cincinnati locations.
--
-- New York City demonstrates competitive compensation ($74,008.75 average) 
-- despite having a notably higher maximum salary ($114,257), indicating 
-- significant salary variation within that office.
--
-- Minneapolis shows the smallest team (3 employees) with a lower average 
-- salary ($70,083.67), pointing to either junior-level concentration or 
-- lower cost-of-living adjustments.
--
-- The salary ranges across locations (minimum salaries spanning from 
-- $32,179 to $62,871) highlight substantial disparities that likely reflect 
-- different job functions, experience levels, or regional market rates 
-- across the organization's geographic footprint.
