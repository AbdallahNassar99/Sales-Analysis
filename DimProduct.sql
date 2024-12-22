SELECT 
      p.[ProductKey]
     ,p.[ProductAlternateKey] AS Product_Item_Code
      ,ps.EnglishProductSubcategoryName as Sub_Category
	  ,pc.EnglishProductCategoryName as Product_category
     -- ,[WeightUnitMeasureCode]
     -- ,[SizeUnitMeasureCode]
      ,p.[EnglishProductName]
     -- ,[SpanishProductName]
     -- ,[FrenchProductName]
     -- ,[StandardCost]
    --  ,[FinishedGoodsFlag]
      ,p.[Color]
     -- ,[SafetyStockLevel]
     -- ,[ReorderPoint]
    --  ,[ListPrice]
      ,p.[Size]
     -- ,[SizeRange]
     -- ,[Weight]
     -- ,[DaysToManufacture]
      ,p.[ProductLine]
     -- ,[DealerPrice]
     -- ,[Class]
     -- ,[Style]
      ,p.[ModelName]
    --  ,[LargePhoto]
      ,p.[EnglishDescription] as Product_Description
    --  ,[FrenchDescription]
    --  ,[ChineseDescription]
    --  ,[ArabicDescription]
     -- ,[HebrewDescription]
     -- ,[ThaiDescription]
    --  ,[GermanDescription]
     -- ,[JapaneseDescription]
     -- ,[TurkishDescription]
    --  ,[StartDate]
    --  ,[EndDate]
    --  ,[Status]
  FROM [AdventureWorksDW2022].[dbo].[DimProduct] as p
   LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey 
  order by 
  p.ProductKey asc