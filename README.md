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
-- Looking at this SQL query and its results, the key insights show that the database is analyzing customer loyalty segmentation across different US states. The query categorizes customers into three tiers based on their points: gold  -- -- customers (3000+ points), silver customers (1000-2999 points), and bronze customers (under 1000 points), while also calculating average points per state. The results reveal significant geographic variation in customer engagement, with -- states like Illinois (IL) and Texas (TX) having gold-tier customers with high average points (3073 and 3675 respectively), while states like Colorado (CO) and Tennessee (TN) show strong silver-tier presence but no gold customers, ------- suggesting different market penetration or customer behavior patterns. California (CA) stands out with zero customers in any premium tier despite having one customer, indicating either a new market or a churned customer base, while ----- the overall distribution shows most states have relatively small customer bases (1-2 customers each), pointing to either a nascent business, a niche market, or a filtered dataset focused on specific customer segments.


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
