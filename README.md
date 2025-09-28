# Retail Sales Performance Analysis
(Global Superstore Project)

## Problem Statement
Retail sales data from the Global Superstore is multi-dimensional and can be hard to analyze due to varied regions, states/cities, product categories, discounts, and order metrics.  
Manual analysis for identifying trends, growth drivers, and risks is challenging, especially as the data volume grows large.

## Objective
- Analyze the “Global Superstore” dataset to uncover trends, opportunities, and risks in sales, profit, and order metrics across regions, states/cities, product categories, and more.
- Provide actionable insights on:
  - Sales growth and profitability over time
  - Product and category performance
  - Geographic profit and margin trends
  - Impact of discount, shipping, and delivery
  - Customer segmentation and repeat purchases

## Analysis Scope
- Yearly and monthly sales, profit, and quantity trends
- Top-performing products and categories (by sales and profit)
- Profit margin analysis by region/state/city
- Effect of discounts on profit margins and quantity sold
- Identifying break-even discount points
- Year-over-Year growth in sales/profit
- Shipping and delivery lead time performance
- Products/categories with negative profit

- ## Skills Used

- SQL Joins (INNER, LEFT, etc.)
- Aggregations (SUM, AVG, COUNT)
- GROUP BY and HAVING clauses
- Window Functions (ROW_NUMBER, RANK, PARTITION BY, etc.)
- Date/Time Functions (extracting Year, Month, Quarter; handling date differences)
- CASE Statements (for conditional bucketing)
- Subqueries and Common Table Expressions (CTEs)
- User-defined Functions or Stored Procedures (for scaling or repetitive tasks)

## Key Insights

## Total Sales, Profit, and Quantity Over Time
- Sales and profit show consistent Year-over-Year growth in both South and West regions.
- South region sales: 70,433.58 (2015) → 93,207.01 (2016), YoY growth: 32.3%
- West region sales: 136,838.59 (2015) → 183,815.85 (2016), YoY growth: 34.3%
- Clearly, West region leads in both growth rate and absolute sales performance.

## Top-Performing Products
- Leading products by sales/revenue are typically technology items.
- Examples include: ‘Canon ImageCLASS 2200 Advanced Copier’, ‘HP LaserJet Pro’, and ‘Apple MacBook Pro’.
- Top categories: Technology, Office Supplies.

## Profitability by Region / State / City
- West region maintains highest profit margins, consistently above 10%.
- States like California contribute high sales but need margin improvements.
- Cities (e.g., New York, Los Angeles) drive profits, but margin differences reveal focus areas.

## Effect of Discounts on Profit
- Average profit margin falls to below 5% when discounts cross 20%.
- Margins of 8-10% are seen for 10-20% discount buckets.
- Excessive discounts result in substantial loss of profitability.

## Customer Segmentation – Top & Repeat Customers
- Top customers place ≥8 orders and spend above 5,000 in total.
- Repeat buyers are responsible for disproportionately high revenue.

## Seasonality Analysis
- Sales peak in November-December (monthly sales can exceed 20,000).
- July-August: lowest sales period, indicates scope for seasonal promotions.

## Shipping / Delivery Performance
- Standard shipping usually delivers in under 3 days.
- Second-class/Same-day delivery may take 5–7 days, especially during high volume in peak regions.

## Profit Loss by Products (Negative Profits)
- Furniture items, such as ‘Chaise Lounge’, often report negative total profit.
- Products with >1,000 total loss need review for possible discontinuation.

## Discount vs. Quantity Sold
- Higher discounts do increase quantities but sharply reduce profit per unit.
- There is no break-even where higher discounts recover lost profits beyond moderate discount levels.

## Year-over-Year Growth
- West region shows fastest YoY sales growth: 0.343 (34.3%).
- South region and Technology category maintain stable high growth rates around 0.3.
## Recommendations
- Focus inventory and promotions on high-margin products/categories.
- Optimize regional strategies to boost profits in low-margin areas.
- Fine-tune discount policies to avoid crossing profit break-even points.
- Improve supply chain for slow-delivering regions/or ship modes.
- Segment customers and use YoY growth stats to target rising segments and loyal buyers.

## Conclusion
Global Superstore analysis uncovers opportunities, pain points, and profit levers. Leveraging these will help optimize business strategies, maximize profit, target marketing, and foster sustainable retail growth.
