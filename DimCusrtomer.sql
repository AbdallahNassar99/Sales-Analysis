SELECT 
      c.[CustomerKey]
     -- ,[GeographyKey]
     -- ,[CustomerAlternateKey]
     -- ,[Title]
      ,c.[FirstName]
     -- ,[MiddleName]
      ,c.[LastName]
	  ,c.[FirstName]+' '+LastName
     -- ,[NameStyle]
    --  ,[BirthDate]
      --,[MaritalStatus]
     -- ,[Suffix]
      ,Case when c.Gender='M' then 'Male' else 'Famale' end  as Gender
    --  ,[EmailAddress]
     -- ,[YearlyIncome]
     -- ,[TotalChildren]
     -- ,[NumberChildrenAtHome]
    --  ,[EnglishEducation]
    --  ,[SpanishEducation]
    --  ,[FrenchEducation]
    --  ,[EnglishOccupation]
    --  ,[SpanishOccupation]
    --  ,[FrenchOccupation]
    --  ,[HouseOwnerFlag]
    --  ,[NumberCarsOwned]
    --  ,[AddressLine1]
    --  ,[AddressLine2]
    --  ,[Phone]
    ,c.[DateFirstPurchase]
    --  ,[CommuteDistance]
	,g.City as City
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] as c
   LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC -- Ordered List by CustomerKey