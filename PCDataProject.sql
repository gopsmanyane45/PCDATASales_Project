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

  -----Doing DATA Domain to Understand what is computers 

 
 SELECT DISTINCT [Continent]FROM [PCDATASales].[dbo].[PC DATA PROJECT]
 --- What is a State vs City 

 SELECT DISTINCT [PC_Make]FROM [PCDATASales].[dbo].[PC DATA PROJECT]

  SELECT DISTINCT [RAM] FROM [PCDATASales].[dbo].[PC DATA PROJECT]

  Then after ana;ysing the data do the first Basic 10 Questions 
