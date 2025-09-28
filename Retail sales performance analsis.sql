-- 1. Total Sales, Profit, and Quantity Over Time
--    Compute yearly & monthly SUM of Sales, Profit, Quantity.
--    Trend line: are they increasing?

SELECT Region, State, SUM(Sales) AS Sales, SUM(Profit) AS Profit, SUM(Profit)/NULLIF(SUM(Sales),0) AS ProfitMargin 
FROM superstore_copy GROUP BY Region, State ORDER BY ProfitMargin DESC;

---------------------------------------------------------------------------------------------------------------------------------------------------
-- 2. Top-Performing Products
--    Find top 10 products by revenue (Sales) and by profit.
--    Also top categories/sub-categories.

SELECT Category,`Sub-Category`, `Product Name`, SUM(Sales) AS Revenue, SUM(Profit) AS Profits 
FROM superstore_copy GROUP BY Category,`Sub-Category`, `Product Name` ORDER BY Revenue DESC LIMIT 10;

---------------------------------------------------------------------------------------------------------------------------------------------------
-- 3. Profitability by Region / State / City
--    Compare profit margin (profit ÷ sales) by region.
--    Find states which have high sales but low margins.

SELECT Region, State, SUM(Sales) AS Sales, SUM(Profit) AS Profit, SUM(Profit)/NULLIF(SUM(Sales),0) AS ProfitMargin 
FROM superstore_copy GROUP BY Region, State ORDER BY ProfitMargin DESC;

-------------------------------------------------------------------------------------------------------------------------------------------------
-- 4. Effect of Discounts on Profit
--    For different discount buckets (e.g. 0-10%, 10-20%, >20%), compute average profit margin.
--    Does higher discount always reduce profit?

SELECT CASE WHEN Discount BETWEEN 0 AND 0.1 THEN '0-10%' WHEN Discount BETWEEN 0.1 AND 0.2 THEN '10-20%' ELSE '>20%' END AS DiscountBucket, 
AVG(Profit/Sales) AS AvgMargin, SUM(Sales) AS TotalSales FROM superstore_copy GROUP BY DiscountBucket ORDER BY DiscountBucket;

-------------------------------------------------------------------------------------------------------------------------------------------------
-- 5. Customer Segmentation – Top & Repeat Customers
--    Identify which customers purchase most in terms of revenue.
--    Which customers have repeat order frequency.
--    Possibly compute “RFM” metrics: Recency, Frequency, Monetary.

SELECT `Customer ID`, COUNT(DISTINCT `Order ID`) AS NumOrders, SUM(Sales) AS TotalSpend 
FROM superstore_copy GROUP BY `Customer ID` ORDER BY TotalSpend DESC LIMIT 20;

-------------------------------------------------------------------------------------------------------------------------------------------------
-- 6. Seasonality Analysis
-- Are there months or quarters with consistent high/low sales?
-- Compare e.g. quarter over quarter, year over year.

SELECT EXTRACT(MONTH FROM `Order Date`) AS Month, AVG(Sales) AS AvgSalesOverYears FROM superstore_copy GROUP BY Month ORDER BY Month;

-------------------------------------------------------------------------------------------------------------------------------------------------
-- 7. Shipping / Delivery Performance
--    Compute time between OrderDate and ShipDate (shipping lead time).
--    Find average, median, and outliers.
--    See if lead time varies by region or ship mode.
SELECT `Ship Mode`, Region, AVG(DATEDIFF(`Ship Date`,`Order Date`)) AS AvgLeadTime FROM superstore_copy GROUP BY `Ship Mode`, 
Region ORDER BY AvgLeadTime;

-------------------------------------------------------------------------------------------------------------------------------------------------
-- 8. Profit Loss by Products (or negative profits)
--    Find products or categories where profit is negative.
--    Compute how much loss, possibly suggest discontinuation or cost-review.
SELECT `Product Name`, SUM(Profit) AS TotalProfit FROM superstore_copy GROUP BY `Product Name` HAVING SUM(Profit) < 0 ORDER BY TotalProfit;

-------------------------------------------------------------------------------------------------------------------------------------------------
-- 9. Discount vs. Quantity sold 
--    Do higher discounts lead to significantly more quantity sold?
--    Is there a break-even point where discount hurts profit more than it drives sales?


SELECT Discount, SUM(Quantity) AS TotalQty, SUM(Profit) AS TotalProfit FROM superstore_copy 
GROUP BY Discount ORDER BY Discount;

-------------------------------------------------------------------------------------------------------------------------------------------------
-- 10. Year-over-Year Growth
--     Compute YoY growth in Sales and Profit by Region, Category.
--     Which region/category has highest growth?


 WITH Yearly AS ( SELECT EXTRACT(YEAR FROM `Order Date`) AS Year, Region, SUM(Sales) AS Sales FROM superstore_copy GROUP BY Year, Region ) 
SELECT y1.Region, y1.Year, y1.Sales, (y1.Sales - y0.Sales)/NULLIF(y0.Sales,0) AS YoY_Growth FROM Yearly y1 
JOIN Yearly y0 ON y1.Region = y0.Region AND y1.Year = y0.Year + 1 ORDER BY Region, y1.Year;