
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
SELECT Country_or_State, COUNT(*) AS #Sales  FROM  [dbo].[PC DATA PROJECT]
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

Corrected 
SELECT SUM (Sale_Price - Cost_Price) AS totalprofit FROM  [dbo].[PC DATA PROJECT]


-- 13. Find the average Discount Amount.
SELECT AVG(Discount_Amount) AS Average_Discount_Amount FROM  [dbo].[PC DATA PROJECT]


-- 14. Calculate total Finance Amount issued.
SELECT SUM (Finance_Amount ) AS Total_Revenue FROM  [dbo].[PC DATA PROJECT]


-- 15. Find total revenue per PC Make.
Unit price X quantity sold 
	SELECT SUM (Sale_Price * Cost_Price) AS totalprofit FROM  [dbo].[PC DATA PROJECT]

SELECT SUM (Sale_Price) AS Total_Revenue FROM  [dbo].[PC DATA PROJECT]
--- Correct one 
SELECT PC_Make, SUM([Sale_Price) AS Total_Revenue
FROM  [dbo].[PC DATA PROJECT]
GROUP BY PC_Make

[PC_Make] 

-- 16. Find average Sale Price per Storage Type.
SELECT AVG(Sale_Price) AS Average_Sale_Price FROM  [dbo].[PC DATA PROJECT]
---Corrected 
SELECT Storage_Type, SUM (Sale_Price) AS #Sales  FROM  [dbo].[PC DATA PROJECT]
GROUP BY 

-- 17. Calculate total revenue per Shop Name.

SELECT  Shop_Name, SUM (Sale_Price) AS Revenue_Per_Shop FROM  [dbo].[PC DATA PROJECT]
GROUP BY Shop_Name

-- 18. Calculate total revenue per Sales Person Name.
SELECT Sales_Person_Name, SUM(Sale_Price) AS Revenue_Per_Person FROM  [dbo].[PC DATA PROJECT]
GROUP BY Sales_Person_Name

-- 19. Find average Credit Score per Payment Method.
SELECT Payment_Method, AVG(Credit_Score) AS AVG_CR_SCore FROM  [dbo].[PC DATA PROJECT]
GROUP BY Payment_Method

-- 20. Calculate total Cost of Repairs per Sales Person Department.
SELECT Sales_Person_Department , SUM(Cost_of_Repairs) AS Total_Repair_Cost  FROM 
[dbo].[PC DATA PROJECT]
GROUP BY Sales_Person_Department

-- ADVANCED QUESTIONS

-- 21. Calculate profit per Shop Name.
SELECT SUM (Sale_Price - Cost_Price) AS totalprofit FROM  [dbo].[PC DATA PROJECT]


----error - Msg 802, Level 17, State 2, Line 115
-----There is insufficient memory available in the buffer pool.
----corrected 
SELECT Shop_Name, SUM (Sale_Price - Cost_Price) AS totalprofit FROM  [dbo].[PC DATA PROJECT]
Group BY Shop_Name

-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) / Sale Price).

SELECT  SUM (Sale_Price - Cost_Price/Sale_Price) AS Profit_Margin_PerSale FROM  [dbo].[PC DATA PROJECT]


-- 23. Determine which Continent has the highest total revenue.
     wring  
SELECT Continent, SUM([Sale_Price) AS Total_Revenue
FROM  [dbo].[PC DATA PROJECT]
GROUP BY Continent 

SELECT Continent, SUM ([Sale_Price) AS Total_Revenue
FROM  [dbo].[PC DATA PROJECT]
GROUP BY Continent 

Corrected 

SELECT Continent , SUM (Sale_Price - Cost_Price) AS totalprofit FROM  [dbo].[PC DATA PROJECT]
GROUP BY Continent 
ORDER BY totalprofit DESC



-- 24. Calculate average Sale Price per RAM size.
SELECT RAM, AVG(Sale_Price) AS AVG_Sale_Ramsize FROM  [dbo].[PC DATA PROJECT]
GROUP BY RAM

-- 25. Find the PC Model with the highest Sale Price.
SELECT PC_Model, MAX(Sale_Price) AS MAX_PC_Model FROM  [dbo].[PC DATA PROJECT]
GROUP BY PC_Model 

-- 26. Calculate the average number of days between Purchase Date and Ship Date.

-- 27. Determine which Sales Person Department generates the highest revenue.
-- 28. Calculate total revenue per Storage Capacity.
-- 29. Identify sales where Sale Price is lower than PC Market Price.
-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.

