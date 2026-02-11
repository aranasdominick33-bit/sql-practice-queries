# SQL Analytics Portfolio

## 📊 Overview
Collection of SQL queries demonstrating data analysis and business intelligence skills. These queries answer real business questions across retail, invoicing, and HR domains.

## 🎯 Skills Demonstrated
- Multi-table JOINs (INNER, LEFT)
- Aggregate functions (COUNT, SUM, AVG, MAX, MIN)
- Conditional logic with CASE statements
- GROUP BY and HAVING clauses
- Date/time functions and calculations
- Subqueries and data filtering
- Business metrics calculation

## 📁 Project Structure
```
sql-analytics-portfolio/
│
├── database-setup/
│   └── schema.sql              # Database structure
│
├── queries/
│   ├── customer-analysis.sql   # Customer segmentation & spending
│   ├── sales-reports.sql       # Sales trends & performance
│   ├── payment-analysis.sql    # Invoice & payment patterns
│   └── hr-metrics.sql          # Employee & office analytics
│
└── README.md
```

## 💼 Business Questions Answered

### Customer Analysis
- How are customers segmented by value tier (Gold/Silver/Bronze)?
- Who are the top spending customers?
- What is the customer retention rate?
- Which states have the most high-value customers?

### Sales & Operations  
- What are our best-selling products?
- Which orders are overdue for fulfillment?
- What is our order fulfillment rate by customer?
- How do sales vary by region?

### Financial Analysis
- Which clients have outstanding invoices?
- What is our payment collection rate?
- Which payment methods are most popular?
- What is the average invoice value by client?

### HR Analytics
- What is the salary distribution by office?
- Which offices have the highest average compensation?
- How many employees work in each location?


## 📚 Database Sources
Practice databases created for learning purposes:
- **sql_store**: Retail operations data (customers, orders, products)
- **sql_invoicing**: Business invoicing data (clients, invoices, payments)  
- **sql_hr**: Employee and office data

## 🔍 Sample Insights

**Customer Segmentation:**
Looking at this SQL query and its results, the key insights show that the database is analyzing customer loyalty segmentation across different US states. The query categorizes customers into three tiers based on their points: gold customers (3000+ points), silver customers (1000-2999 points), and bronze customers (under 1000 points), while also calculating average points per state. The results reveal significant geographic variation in customer engagement, with states like Illinois (IL) and Texas (TX) having gold-tier customers with high average points (3073 and 3675 respectively), while states like Colorado (CO) and Tennessee (TN) show strong silver-tier presence but no gold customers, suggesting different market penetration or customer behavior patterns. California (CA) stands out with zero customers in any premium tier despite having one customer, indicating either a new market or a churned customer base, while the overall distribution shows most states have relatively small customer bases (1-2 customers each), pointing to either a nascent business, a niche market, or a filtered dataset focused on specific customer segments.

### HR Analytics Insights 
This SQL query provides insights into HR analytics by examining office locations and their compensation structures across different US cities.
Richmond, VA leads with the highest average salary ($96,977.50) for 4 employees, followed by Cincinnati, OH offices showing similar employee counts but varying average salaries ($91,701.75 and $81,262.00), indicating potential differences in role composition or seniority.
New York City demonstrates competitive compensation ($74,008.75 average) with a notably higher maximum salary ($114,257), showing significant salary variation within that office.
Minneapolis has the smallest team (3 employees) with a lower average salary ($70,083.67), pointing to either junior-level concentration or lower cost-of-living adjustments.
Salary ranges across locations highlight disparities that reflect different job functions, experience levels, or regional market rates.

### Accounts Receivable Insights
This SQL query analyzes invoice payment status across clients, categorizing them into fully paid, partially paid, and unpaid.
Topidlounge in Portland has the largest outstanding balance ($841.63) across 6 invoices, indicating inconsistent payment behavior and potential cash flow issues.
Vinte in Syracuse follows with $728.34 outstanding from 5 invoices (1 partially paid, 4 unpaid), representing a high-risk account requiring immediate attention.
Yadel in San Francisco shows slightly better payment discipline ($557.46 outstanding from 5 invoices), while Myiworks in Huntington has the smallest exposure ($101.79 from 1 unpaid invoice).
Geographic location may correlate with payment reliability, highlighting the need for stronger collection processes in certain markets.

### Inventory Management Insights
This SQL query identifies products that have never been ordered, highlighting potential issues with product demand, marketing effectiveness, or product lifecycle.
"Sweet Pea Sprouts" (product_id 7) is sitting in inventory with 98 units at $3.29/unit (~$322.42 in unsold inventory), generating zero revenue.
This may indicate lack of market demand, insufficient marketing or visibility, seasonal misalignment, or a newly introduced product without traction.
Strategic actions could include promotional campaigns, price adjustments, bundling with popular items, or potential discontinuation.
Optimizing inventory turnover reduces carrying costs and reallocates resources toward higher-performing products.


## 🛠️ Technologies
- MySQL
- SQL
- Database Design
- Data Analysis

## 🚀 How to Use
1. Set up databases using `database-setup/schema.sql`
2. Browse queries in the `queries/` folder
3. Each query includes business context and purpose
4. Run queries in your MySQL environment

## 📫 Contact
Dominick 
aranasdominick33@gmail.com
