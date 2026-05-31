-- 1. View Sample Data

SELECT *
FROM sales_data
LIMIT 10;

-- 2. Total Sales

SELECT SUM(Sales) AS TotalSales
FROM sales_data;

-- 3. Sales by Category

SELECT Category,
       SUM(Sales) AS TotalSales
FROM sales_data
GROUP BY Category
ORDER BY TotalSales DESC;

-- 4. Sales by Region

SELECT Region,
       SUM(Sales) AS TotalSales
FROM sales_data
GROUP BY Region
ORDER BY TotalSales DESC;

-- 5. Sales by Customer Segment

SELECT Segment,
       SUM(Sales) AS TotalSales
FROM sales_data
GROUP BY Segment
ORDER BY TotalSales DESC;

-- 6. Top 10 Cities by Sales

SELECT City,
       SUM(Sales) AS TotalSales
FROM sales_data
GROUP BY City
ORDER BY TotalSales DESC
LIMIT 10;

-- 7. Top 10 Products by Sales

SELECT `Product Name`,
       SUM(Sales) AS TotalSales
FROM sales_data
GROUP BY `Product Name`
ORDER BY TotalSales DESC
LIMIT 10;

-- 8. Average Sales by Category

SELECT Category,
       AVG(Sales) AS AverageSales
FROM sales_data
GROUP BY Category
ORDER BY AverageSales DESC;

-- 9. Categories with Sales Above 100000

SELECT Category,
       SUM(Sales) AS TotalSales
FROM sales_data
GROUP BY Category
HAVING SUM(Sales) > 100000
ORDER BY TotalSales DESC;

-- 10. Number of Orders by Region

SELECT Region,
       COUNT(*) AS TotalOrders
FROM sales_data
GROUP BY Region
ORDER BY TotalOrders DESC;
