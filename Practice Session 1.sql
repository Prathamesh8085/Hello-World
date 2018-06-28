--1) display names of products, sub category name of product, category name 


select 
	p.name as Product_Name, 
	psc.Name as Product_subcategory_Name, 
	pc.Name as Product_Category_Name
from 
	[Production].[Product] P
	inner join [Production].[ProductSubcategory] PSC 
		on p.ProductSubcategoryID = psc.ProductSubcategoryID
	inner join [Production].[ProductCategory] PC 
		on psc.ProductCategoryID = pc.ProductCategoryID