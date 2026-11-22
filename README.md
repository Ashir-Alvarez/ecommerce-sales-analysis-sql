E-commerce Sales Analysis | SQL Portfolio Project

Project Overview

This project analyzes an e-commerce customer behavior and sales dataset using PostgreSQL. The goal is to explore sales performance, customer purchasing behavior, product category trends, and revenue patterns through SQL queries.

The analysis focuses on transforming raw sales records into meaningful business insights that can support data-driven decision-making.

Tools & Technologies

- Database: PostgreSQL
- SQL Environment:** pgAdmin 4
- Language:** SQL
- Dataset Format: CSV

Dataset Overview

The dataset contains 17,049 sales records and 18 columns, covering:

- Order and customer information
- Purchase dates and product categories
- Unit prices, quantities, discounts, and total amounts
- Payment methods and device types
- Customer ratings and delivery times
- Customer returning status

Dataset Disclaimer

The dataset used in this project is synthetic and intended for educational and portfolio purposes. It does not represent actual transactions, customers, or business operations from a real company. All findings and insights are based solely on the provided sample data.

Date Range: January 1, 2023 – March 25, 2024

SQL Analysis Performed

The project includes the following analyses:

1. Data quality checks
2. Sales overview
3. Monthly sales performance
4. Product category analysis
5. Customer purchasing behavior
6. Geographic sales analysis
7. Payment method analysis
8. Device type analysis
9. Customer rating analysis
10. Delivery time analysis
11. Customer purchasing frequency
12. Customer lifetime value (historical spending)
13. Customer segmentation
14. Month-over-month revenue growth
15. Cumulative revenue analysis
16. Product category revenue ranking
17. Customer spending ranking
18. Monthly revenue performance by product category

SQL Concepts & Techniques

- SELECT, WHERE, GROUP BY, and ORDER BY
- Aggregate functions: COUNT, SUM, AVG, MIN, and MAX
- Common Table Expressions (CTEs)
- CASE statements
- Window functions: RANK(), LAG(), and SUM() OVER()
- Date and time functions
- Data validation and quality checks
- Revenue calculations and percentage analysis

Key Findings

- **Total Sales:** 21,779,052.59 across 17,049 orders.
- **Unique Customers:** 5,000.
- **Top Revenue Category:** Electronics generated 10,481,897.65, approximately 48.1% of total revenue.
- **Top Performing City:** Istanbul generated 5,646,595.78 in revenue.
- **Payment Preference:** Credit cards accounted for approximately 39.89% of all orders.
- **Device Usage:** Mobile devices accounted for approximately 56% of orders.
- **Customer Behavior:** Orders flagged as returning-customer transactions generated approximately 88.1% of total revenue.
- **Customer Segmentation:** The high-value segment contained 116 customers, based on historical spending thresholds.
- **Monthly Performance:** December 2023 recorded the highest monthly revenue at 1,586,213.77.

Project Structure

```text
ecommerce-sales-analysis-sql/
│
├── sql/
│   ├── 01_data_quality_checks.sql
│   ├── 02_sales_overview.sql
│   ├── 03_monthly_sales_analysis.sql
│   ├── 04_product_category_analysis.sql
│   ├── 05_customer_behavior_analysis.sql
│   ├── 06_geographic_sales_analysis.sql
│   ├── 07_payment_method_analysis.sql
│   ├── 08_device_type_analysis.sql
│   ├── 09_customer_rating_analysis.sql
│   ├── 10_delivery_time_analysis.sql
│   ├── 11_customer_purchasing_frequency.sql
│   ├── 12_customer_lifetime_value.sql
│   ├── 13_customer_segmentation.sql
│   ├── 14_monthly_revenue_growth.sql
│   ├── 15_cumulative_revenue.sql
│   ├── 16_category_revenue_ranking.sql
│   ├── 17_customer_spending_ranking.sql
│   └── 18_monthly_category_performance.sql
│
└── README.md
```

Notes & Limitations

- Customer segmentation is based on historical spending thresholds and is not a predictive model.
- Customer lifetime value represents historical spending, not forecasted future value.
- The returning-customer flag is analyzed at the transaction level.
- March 2024 contains data only through March 25 and is therefore an incomplete month.
- The dataset's currency is not specified, so monetary values are presented without a currency symbol.
- Data quality checks cover selected fields and conditions; they do not establish that every possible data issue is absent.

Conclusion

This project demonstrates the use of PostgreSQL to perform exploratory sales analysis, evaluate customer purchasing behavior, identify revenue trends, and generate business insights using SQL.

It showcases practical SQL skills applicable to entry-level Data Analyst and Data Reporting roles.
