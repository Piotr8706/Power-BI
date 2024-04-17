SELECT [DateKey]
      ,[FullDateAlternateKey] AS Date
      --,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] AS DayName
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      ,[DayNumberOfMonth] AS DayMonth
      --,[DayNumberOfYear]
      ,[WeekNumberOfYear] AS WeekNr
      ,[EnglishMonthName] AS MonthNr
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      ,[MonthNumberOfYear] AS Month
      ,[CalendarQuarter] AS Quarter
      ,[CalendarYear] AS Year
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2022].[dbo].[DimDate]
  WHERE [CalendarYear] >= YEAR(GETDATE()) - 4 -- Take only last 4 year of sales data 

