SELECT TOP (1000) [Continent]
      ,[Country_or_State]
      ,[Province_or_City]
      ,[Shop_Name]
      ,[Shop_Age]
      ,[PC_Make]
      ,[PC_Model]
      ,[Storage_Type]
      ,[Customer_Name]
      ,[Customer_Surname]
      ,[Customer_Contact_Number]
      ,[Customer_Email_Address]
      ,[Sales_Person_Name]
      ,[Sales_Person_Department]
      ,[Cost_Price]
      ,[Sale_Price]
      ,[Payment_Method]
      ,[Discount_Amount]
      ,[Purchase_Date]
      ,[Ship_Date]
      ,[Finance_Amount]
      ,[RAM]
      ,[Credit_Score]
      ,[Channel]
      ,[Priority]
      ,[Cost_of_Repairs]
      ,[Total_Sales_per_Employee]
      ,[PC_Market_Price]
      ,[Storage_Capacity]
  FROM [PCDATASales].[dbo].[PC DATA PROJECT]

SELECT AVG(Discount_Amount) AS Average_Discount_Amount FROM  [PCDATASales].[dbo].[PC DATA PROJECT]


----To check the Columns
SELECT TOP 5 *  FROM 
[PCDATASales].[dbo].[PC DATA PROJECT]

-----Learning Subquery 

SELECT TOP 5 *
FROM (SELECT PC_Make, Storage_Capacity FROM [PCDATASales].[dbo].[PC DATA PROJECT]
 WHERE Storage_Capacity > '256GB') AS "high_Storage_Capacity"

 SELECT TOP 5 *
FROM (SELECT PC_Make, Sale_Price FROM [PCDATASales].[dbo].[PC DATA PROJECT]
 WHERE Sale_Price > 23000) AS "high_Sale_Price"

---- Can make subquery from SELECT ,FROM, WHERE, GROUP, HAVING

---FIND THE % CONTRIBUTION PER PC_Make

SELECT 
    PC_Make,
    Sale_Price,
    ((SELECT SUM(Sale_Price)/Sale_Price, PC_Make FROM  [PCDATASales].[dbo].[PC DATA PROJECT])) * 100 AS Percentage_Contribution
FROM  [PCDATASales].[dbo].[PC DATA PROJECT];

SELECT 
    PC_Make,
    Sale_Price,
    (Sale_Price/ (SELECT SUM(Sale_Price) FROM  [PCDATASales].[dbo].[PC DATA PROJECT])) * 100 AS Percentage_Contribution
FROM  [PCDATASales].[dbo].[PC DATA PROJECT];


SELECT 
    name,
    gpa,
    (gpa / (SELECT SUM(gpa) FROM Student)) * 100 AS gpa_percentage
FROM Student;

Corrected 

SELECT
    SUM(Sale_Price) AS Total_revenue
FROM  [PCDATASales].[dbo].[PC DATA PROJECT];

SELECT PC_Make,
    SUM(Sale_Price) AS Total_revenue
FROM [PCDATASales].[dbo].[PC DATA PROJECT]
GROUP BY PC_Make;

SELECT
    PC_Make,
    SUM(Sale_Price) AS Revenue,
    SUM(Sale_Price) * 100.0 /
        (SELECT SUM(Sale_Price) FROM [PCDATASales].[dbo].[PC DATA PROJECT])
        AS Revenue_Percentage
FROM [PCDATASales].[dbo].[PC DATA PROJECT]
GROUP BY PC_Make
ORDER BY Revenue DESC;

----WHEN WE ADD A DECIMAL 100.0  -- IT SHORTENS THE DECIMAL 
-----USING WINDOW FUNSTIONS WITH PARTITIONS
SELECT
    Pc_Make,
    SUM(Sale_Price) AS Revenue,
    SUM(Sale_Price) * 100.0
    / SUM(SUM(Sale_Price))
    OVER () AS Revenue_Percentage
FROM [PCDATASales].[dbo].[PC DATA PROJECT])
GROUP BY Pc_Make
ORDER BY Revenue DESC;

-----Finding Revenue Contribution by [Country_or_State] = Nigeria ehh problems 
SELECT
    Country_or_State,
    SUM(Sale_Price) AS Revenue,
    SUM(Sale_Price) * 100.0
    / SUM(SUM(Sale_Price))
    OVER () AS Revenue_Percentage
FROM [PCDATASales].[dbo].[PC DATA PROJECT]
GROUP BY Country_or_State
ORDER BY Revenue DESC;


------CASE STATEMENT 

SELECT PC_Make, SUM(Sales_Price - Cost_Price) AS Total_Rev
    CASE 
         WHEN 


-----Finding Revenue Contribution by [Sales_Person_Name] = Joseph Good  

SELECT
    Sales_Person_Name,
    SUM(Sale_Price) AS Revenue,
    SUM(Sale_Price) * 100.0
    / SUM(SUM(Sale_Price))
    OVER () AS Revenue_Percentage
FROM [PCDATASales].[dbo].[PC DATA PROJECT]
GROUP BY Sales_Person_Name
ORDER BY Revenue DESC;


-----Learning Dates
SELECT PC_Make, DATE_FORMAT (Purchase_Date, '') AS formatted_date 
FROM [PCDATASales].[dbo].[PC DATA PROJECT];

SELECT TOP 3 PC_Make, Purchase_Date 
FROM [PCDATASales].[dbo].[PC DATA PROJECT];

----Identify the Most PC_Make SOld 
SELECT TOP 1 PC_Make, COUNT (*) AS Sales_Count 
FROM [PCDATASales].[dbo].[PC DATA PROJECT]
GROUP BY PC_Make
ORDER BY Sales_Count DESC 

----Identify the Least  PC_Make SOld 
SELECT TOP 1 PC_Make, COUNT (*) AS Sales_Count 
FROM [PCDATASales].[dbo].[PC DATA PROJECT]
GROUP BY PC_Make
ORDER BY Sales_Count ASC 

---- Find the Top Sales Employee \\\Joseph Good 
-----Then find the Top sales Employee per County 
SELECT TOP 10 Country_or_State,Sales_Person_Name, SUM (Total_Sales_per_Employee) AS SUM_Sales , Count(Total_Sales_per_Employee) AS #_Sales
FROM [PCDATASales].[dbo].[PC DATA PROJECT]
GROUP BY Country_or_State, Sales_Person_Name
ORDER BY Sales_Person_Name DESC 
 
 SELECT TOP 10 Sales_Person_Name, SUM (Total_Sales_per_Employee) AS SUM_Sales , Count(Total_Sales_per_Employee) AS #_Sales
FROM [PCDATASales].[dbo].[PC DATA PROJECT]
GROUP BY Country_or_State, Sales_Person_Name
ORDER BY Sales_Person_Name DESC 


-----Thr find the customer that bring most revenue 
SELECT TOP 10 Customer_Name, SUM (Total_Sales_per_Employee) AS SUM_Sales , Count(Total_Sales_per_Employee) AS #_Sales
FROM [PCDATASales].[dbo].[PC DATA PROJECT]
GROUP BY Country_or_State, Sales_Person_Name
ORDER BY Sales_Person_Name DESC

----Practising Sales Questoins 
SELECT TOP 5 Customer_Name, SUM (Sale_Price) AS Rev 
FROM [PCDATASales].[dbo].[PC DATA PROJECT]
GROUP BY Customer_Name
ORDER BY Customer_Name DESC 

---Using AVG on the Order Clause  
SELECT TOP 5 PC_Make,
RAM
FROM [PCDATASales].[dbo].[PC DATA PROJECT]
GROUP BY PC_Make, RAM
ORDER BY AVG(Sale_Price) DESC


------CASE STATEMENT // tried not working 

SELECT  SUM(Sale_Price) AS Total_Rev,
    CASE 
         WHEN SUM(Sale_Price) < 10000 THEN 'LOW'
         WHEN SUM(Sale_Price) BETWEEN 30000 AND 30000 THEN 'MEDIUM'
         ELSE 'HIGH'
    END AS PC_Make_Category 
FROM [PCDATASales].[dbo].[PC DATA PROJECT];



