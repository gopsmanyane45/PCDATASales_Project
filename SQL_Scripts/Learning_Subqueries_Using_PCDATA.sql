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
