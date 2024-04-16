SELECT [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
      ,[SalesOrderNumber]
      ,[SalesAmount]
  FROM [AdventureWorksDW2022].[dbo].[FactInternetSales]
  WHERE LEFT([OrderDateKey],4) >= YEAR(GETDATE()) - 4 -- Take only last 4 year of sales data 

