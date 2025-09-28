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

- ## Challenges Based on Insights

- **Profit Margin Erosion**: Steep discounts (above 20%) dramatically cut margins below 5%. Balancing between being competitive and staying profitable is a major challenge.
- **Underperforming Product Lines**: Certain furniture items (e.g., ‘Chaise Lounge’) consistently show negative profit. It is challenging to decide whether to discontinue or revamp these products.
- **Seasonal Sales Slump**: There’s a clear dip in sales during July–August, which can hurt cash flow and resource utilization. Addressing slow months requires strategic planning.
- **Logistics and Delivery Delays**: Lead times in high-volume regions and for specific shipping modes (like second-class and same-day) can exceed expectations, risking customer satisfaction.
- **Customer Retention and Repeat Purchase**: While some customers buy repeatedly, expanding this base and retaining high value customers is an ongoing challenge.
- **Regional Performance Variance**: States with high sales sometimes deliver low profit margins, reflecting operational or market pricing challenges needing deeper analysis.

These are core operational, financial, and strategic challenges highlighted by the data, demanding a mix of tactical and long-term solutions.
## Recommendations

- **Target the West Region**: The West region consistently leads in both absolute sales and growth rate (YoY growth: 34.3%). Prioritize marketing and inventory allocation for West to maintain momentum and maximize revenue.
- **Monitor and Optimize Discounts**: Avoid discounting above 20% as margins drop sharply below 5%. Focus on moderate discounts (10–20%) to maintain a healthy balance between quantity sold and profit margin.
- **Promote Top-Performing Products**: Invest more in popular technology products like 'Canon ImageCLASS 2200 Advanced Copier', 'HP LaserJet Pro', and 'Apple MacBook Pro.' Use these as flagship products in campaigns.
- **Review Negative Profit Products**: Identify and phase out or improve underperforming furniture items like ‘Chaise Lounge’ that generate ongoing losses over 1,000.
- **Leverage Repeat Customers**: Recognize and reward repeat buyers who place ≥8 orders and spend more than 5,000, as they contribute disproportionately to total revenue.
- **Develop Off-Season Strategies**: Implement special offers and campaigns in low-sales months (July–August) to smooth out seasonal dips.
- **Improve Shipping in Peak Regions**: Reinforce shipping logistics in high-volume regions especially for same-day and second-class shipping to keep average lead times competitive.

## Conclusion

The data presents a strong growth opportunity, particularly in the West region and technology product category, driven by effective discount management and repeat customer engagement. By focusing marketing, inventory, and operations on these strengths—while avoiding excessive discounting and reviewing non-performing products—business performance can be further optimized. Strengthening logistics and running targeted seasonal campaigns will help maintain sales and profit momentum throughout the year[attached_image:1].
