SELECT 
      [DateKey]
      ,[FullDateAlternateKey] as Date 
      ,[DayNumberOfWeek] 
      ,[EnglishDayNameOfWeek] as Day
     -- ,[SpanishDayNameOfWeek]
     -- ,[FrenchDayNameOfWeek]
     -- ,[DayNumberOfMonth]
     -- ,[DayNumberOfYear]
     -- ,[WeekNumberOfYear]
      ,[EnglishMonthName] as Month
     -- ,[SpanishMonthName]
    --  ,[FrenchMonthName]
      ,[MonthNumberOfYear] as Month_No
      ,[CalendarQuarter] as Quarter
      ,[CalendarYear] as Year
     -- ,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2022].[dbo].[DimDate]
  where CalendarYear>=2022