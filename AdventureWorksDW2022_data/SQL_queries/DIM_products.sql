SELECT [ProductKey]
      ,[ProductAlternateKey]
	  ,[EnglishProductCategoryName] AS Category
      ,[EnglishProductSubcategoryName] AS Subcategory
      ,[EnglishProductName] AS Name
      ,[StandardCost] AS Cost
      ,[FinishedGoodsFlag] AS Continued
      ,[SafetyStockLevel]
      ,[ListPrice]
      ,[DealerPrice]
      ,[Class]
      ,[Style]
      ,[ModelName]
      ,[EnglishDescription]
	  ,ISNULL([Status],'Discontinued') AS Status
  FROM [AdventureWorksDW2022].[dbo].[DimProduct] p
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimProductSubcategory] psc
  ON p.ProductSubcategoryKey=psc.ProductSubcategoryKey
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimProductCategory] pc
  ON psc.ProductCategoryKey=pc.ProductCategoryKey
