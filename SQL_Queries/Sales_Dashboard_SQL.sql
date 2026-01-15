/* =========================================
   SALES PERFORMANCE DASHBOARD – SQL QUERIES
   ========================================= */

/* ---------- KPI VALIDATION ---------- */

/* Total Sales */
SELECT SUM(Sales) AS Total_Sales
FROM FactSales;

/* Total Profit */
SELECT SUM(Profit) AS Total_Profit
FROM FactSales;

/* Average Order Value (AOV) */
SELECT 
    SUM(Sales) / COUNT(DISTINCT OrderID) AS AOV
FROM FactSales;

/* Sales by Year-Month */
SELECT 
    YEAR(OrderDate) AS Year,
    MONTH(OrderDate) AS Month,
    SUM(Sales) AS Total_Sales
FROM FactSales
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY Year, Month;

/* ---------- CATEGORY ANALYSIS ---------- */

/* Sales by Category */
SELECT 
    P.Category,
    SUM(F.Sales) AS Total_Sales
FROM FactSales F
JOIN DimProduct P
    ON F.ProductID = P.ProductID
GROUP BY P.Category
ORDER BY Total_Sales DESC;

/* Profit by Category */
SELECT 
    P.Category,
    SUM(F.Profit) AS Total_Profit
FROM FactSales F
JOIN DimProduct P
    ON F.ProductID = P.ProductID
GROUP BY P.Category
ORDER BY Total_Profit DESC;

/* ---------- CUSTOMER ANALYSIS ---------- */

/* Top Customers by Sales */
SELECT 
    C.CustomerName,
    SUM(F.Sales) AS Total_Sales,
    SUM(F.Profit) AS Total_Profit
FROM FactSales F
JOIN DimCustomer C
    ON F.CustomerID = C.CustomerID
GROUP BY C.CustomerName
ORDER BY Total_Sales DESC;

/* ---------- YOY BASE DATA ---------- */

/* Sales by Year */
SELECT 
    YEAR(OrderDate) AS Year,
    SUM(Sales) AS Total_Sales
FROM FactSales
GROUP BY YEAR(OrderDate)
ORDER BY Year;

