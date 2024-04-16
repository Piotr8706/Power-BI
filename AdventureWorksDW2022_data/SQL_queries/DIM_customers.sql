SELECT [CustomerKey]
      ,CONCAT([FirstName],' ',[LastName]) AS FullName
      ,[BirthDate]
      , CASE WHEN [MaritalStatus]='M' THEN 1 ELSE 0 END AS Married
      , CASE WHEN [Gender]='M' THEN 'Male' ELSE 'Female' END AS Gender
      ,[YearlyIncome] 
      ,[EnglishEducation] AS Education
      ,[EnglishOccupation] AS Occupation
      ,[HouseOwnerFlag] AS HouseOwner
	  ,[EnglishCountryRegionName] AS Country
      ,[AddressLine1] AS Address
      ,[DateFirstPurchase]
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] c
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimGeography] g -- Including geographical info
  ON c.GeographyKey=g.GeographyKey
