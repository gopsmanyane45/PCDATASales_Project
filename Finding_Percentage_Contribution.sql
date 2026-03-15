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