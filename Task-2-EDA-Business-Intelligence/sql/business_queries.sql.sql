-- SQL queries to answer business questions
-- =====================================================
-- ApexPlanet Data Analytics Internship
-- Task 2: Business Intelligence SQL Queries
-- Project: Sales Analytics End-to-End Project
-- =====================================================

---------------------------------------------------------
-- 1. View Complete Dataset
---------------------------------------------------------

SELECT *
FROM sales;

---------------------------------------------------------
-- 2. Total Revenue
---------------------------------------------------------

SELECT
SUM(Total_Sales) AS Total_Revenue
FROM sales;

---------------------------------------------------------
-- 3. Total Orders
---------------------------------------------------------

SELECT
COUNT(DISTINCT Order_ID) AS Total_Orders
FROM sales;

---------------------------------------------------------
-- 4. Total Customers
---------------------------------------------------------

SELECT
COUNT(DISTINCT Customer_ID) AS Total_Customers
FROM sales;

---------------------------------------------------------
-- 5. Average Order Value
---------------------------------------------------------

SELECT
AVG(Total_Sales) AS Average_Order_Value
FROM sales;

---------------------------------------------------------
-- 6. Revenue by Product
---------------------------------------------------------

SELECT
Product,
SUM(Total_Sales) AS Revenue
FROM sales
GROUP BY Product
ORDER BY Revenue DESC;

---------------------------------------------------------
-- 7. Revenue by Category
---------------------------------------------------------

SELECT
Category,
SUM(Total_Sales) AS Revenue
FROM sales
GROUP BY Category
ORDER BY Revenue DESC;

---------------------------------------------------------
-- 8. Revenue by City
---------------------------------------------------------

SELECT
City,
SUM(Total_Sales) AS Revenue
FROM sales
GROUP BY City
ORDER BY Revenue DESC;

---------------------------------------------------------
-- 9. Revenue by Age Group
---------------------------------------------------------

SELECT
Age_Group,
SUM(Total_Sales) AS Revenue
FROM sales
GROUP BY Age_Group
ORDER BY Revenue DESC;

---------------------------------------------------------
-- 10. Revenue by Gender
---------------------------------------------------------

SELECT
Gender,
SUM(Total_Sales) AS Revenue
FROM sales
GROUP BY Gender;

---------------------------------------------------------
-- 11. Top 10 Customers
---------------------------------------------------------

SELECT
Customer_Name,
SUM(Total_Sales) AS Revenue
FROM sales
GROUP BY Customer_Name
ORDER BY Revenue DESC
LIMIT 10;

---------------------------------------------------------
-- 12. Monthly Revenue
---------------------------------------------------------

SELECT
MONTHNAME(Order_Date) AS Month,
SUM(Total_Sales) AS Revenue
FROM sales
GROUP BY MONTH(Order_Date), MONTHNAME(Order_Date)
ORDER BY MONTH(Order_Date);

---------------------------------------------------------
-- 13. Average Order Value by Category
---------------------------------------------------------

SELECT
Category,
AVG(Total_Sales) AS Average_Order_Value
FROM sales
GROUP BY Category
ORDER BY Average_Order_Value DESC;

---------------------------------------------------------
-- 14. Top Selling Products by Quantity
---------------------------------------------------------

SELECT
Product,
SUM(Quantity) AS Total_Quantity_Sold
FROM sales
GROUP BY Product
ORDER BY Total_Quantity_Sold DESC;

---------------------------------------------------------
-- 15. Customer Count by City
---------------------------------------------------------

SELECT
City,
COUNT(DISTINCT Customer_ID) AS Total_Customers
FROM sales
GROUP BY City
ORDER BY Total_Customers DESC;

---------------------------------------------------------
-- 16. Product Count by Category
---------------------------------------------------------

SELECT
Category,
COUNT(Product) AS Product_Count
FROM sales
GROUP BY Category;

---------------------------------------------------------
-- 17. Highest Revenue Transaction
---------------------------------------------------------

SELECT *
FROM sales
ORDER BY Total_Sales DESC
LIMIT 1;

---------------------------------------------------------
-- 18. Lowest Revenue Transaction
---------------------------------------------------------

SELECT *
FROM sales
ORDER BY Total_Sales ASC
LIMIT 1;

---------------------------------------------------------
-- 19. Monthly Order Count
---------------------------------------------------------

SELECT
MONTHNAME(Order_Date) AS Month,
COUNT(DISTINCT Order_ID) AS Orders
FROM sales
GROUP BY MONTH(Order_Date), MONTHNAME(Order_Date)
ORDER BY MONTH(Order_Date);

---------------------------------------------------------
-- 20. Overall Business Summary
---------------------------------------------------------

SELECT
COUNT(DISTINCT Order_ID) AS Total_Orders,
COUNT(DISTINCT Customer_ID) AS Total_Customers,
SUM(Total_Sales) AS Total_Revenue,
AVG(Total_Sales) AS Average_Order_Value,
SUM(Quantity) AS Total_Quantity_Sold
FROM sales;