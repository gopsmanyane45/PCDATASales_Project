
-- ======================================================
-- SQL PROJECT QUESTIONS
-- Dataset: PC Sales
-- ======================================================

-- BASIC QUESTIONS

SELECT *  FROM  [dbo].[PC DATA PROJECT]


-- 1. Count the total number of sales records.
SELECT COUNT(*) AS #Sales FROM  [dbo].[PC DATA PROJECT]


-- 2. Count the number of sales per Continent.

 SELECT COUNT(*) AS #Sales, Continent   FROM  [dbo].[PC DATA PROJECT]
GROUP BY CONTINENT

-- 3. Count the number of sales per Country or State.
SELECT COUNT(*) AS #Sales, Country_or_State FROM  [dbo].[PC DATA PROJECT]
GROUP BY Country_or_State

-- 4. List all distinct Shop Name values.
SELECT COUNT (DISTINCT Shop_Name) AS Shopname FROM  [dbo].[PC DATA PROJECT]

-- 5. Find the average Sale Price.
SELECT *  FROM  [dbo].[PC DATA PROJECT]

SELECT AVG(Sale_Price) AS Average_Sale_Price FROM  [dbo].[PC DATA PROJECT]

-- 6. Find the highest and lowest Sale Price.
SELECT MAX(Sale_Price) AS High_Price,MIN(Sale_Price) AS Low_Price  FROM  [dbo].[PC DATA PROJECT]


-- 7. Count the number of sales by Payment Method.
SELECT COUNT(Payment_Method) AS Payment_Method FROM  [dbo].[PC DATA PROJECT]

-- 8. Count the number of sales by Channel (Online vs Offline).
SELECT COUNT(Payment_Method) AS Payment_Method FROM  [dbo].[PC DATA PROJECT]

-- 9. Count the number of sales by Priority level.
SELECT COUNT(Payment_Method) AS Priority_Level FROM  [dbo].[PC DATA PROJECT]
GROUP BY Priority

-- 10. Count the number of distinct PC Make values.
SELECT COUNT (DISTINCT PC_Make) AS Total_Number_ FROM  [dbo].[PC DATA PROJECT]



-- INTERMEDIATE QUESTIONS

SELECT TOP 10 *  FROM  [dbo].[PC DATA PROJECT]

-- 11. Calculate total revenue (SUM of Sale Price).
SELECT SUM (Sale_Price) AS Total_Revenue FROM  [dbo].[PC DATA PROJECT]

-- 12. Calculate total profit (SUM of Sale Price - Cost Price).
SELECT SUM (Cost_Price) AS Total_CP FROM  [dbo].[PC DATA PROJECT]

SELECT SUM (Sale_Price) AS Total_Revenue, SUM (Cost_Price) AS Total_CP, Sum(Total_Revenue) - sum(Total_CP) FROM  [dbo].[PC DATA PROJECT]

SELECT SUM (Sale_Price - Cost_Price) AS totalprofit FROM  [dbo].[PC DATA PROJECT]


-- 13. Find the average Discount Amount.
SELECT AVG(Discount_Amount) AS Average_Discount_Amount FROM  [dbo].[PC DATA PROJECT]


-- 14. Calculate total Finance Amount issued.
SELECT SUM (Finance_Amount ) AS Total_Revenue FROM  [dbo].[PC DATA PROJECT]


-- 15. Find total revenue per PC Make.
-- 16. Find average Sale Price per Storage Type.
-- 17. Calculate total revenue per Shop Name.
-- 18. Calculate total revenue per Sales Person Name.
-- 19. Find average Credit Score per Payment Method.
-- 20. Calculate total Cost of Repairs per Sales Person Department.

-- ADVANCED QUESTIONS

-- 21. Calculate profit per Shop Name.
-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) / Sale Price).
-- 23. Determine which Continent has the highest total revenue.
-- 24. Calculate average Sale Price per RAM size.
-- 25. Find the PC Model with the highest Sale Price.
-- 26. Calculate the average number of days between Purchase Date and Ship Date.
-- 27. Determine which Sales Person Department generates the highest revenue.
-- 28. Calculate total revenue per Storage Capacity.
-- 29. Identify sales where Sale Price is lower than PC Market Price.
-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.

