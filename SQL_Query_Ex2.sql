--Using alias 
SELECT [Description] AS [Des]
FROM [dbo].[Categories] ; 

SELECT [CompanyName] AS [Company] , 
[PostalCode] AS "Postal of Code" , 
[City] "Company City" 
FROM [dbo].[Customers];

-- Lastname to Ho and Firstname to Ten 
SELECT [Lastname] AS [Ho and Chu lot] , 
		[Firstname] AS [Ten]
FROM [dbo].[Employees] ; 

-- Take 15 first line of Orders and name it O
-- SELECT o.*
SELECT TOP 15 "o".* 
FROM [dbo].[Orders] AS "o"; 

-- Write SQL take the columns and change and name Products "p" and take 5 each out 
SELECT TOP 5 "p".* , 
	[ProductName] AS [Ten san pham] , 
	[SupplierID] [Ma nha cung cap] , 
	[CategoryID] "Ma the loai" 
FROM [dbo].[Products] AS "p" ; 
-- Sai boi vi no se thuc hien tu tren xuong duoi khong phai cung 1 luc 

SELECT TOP 5
	[p].[ProductName] AS [Ten san pham] , 
	[p].[SupplierID] [Ma nha cung cap] , 
	[p].[CategoryID] "Ma the loai"   
FROM [dbo].[Products] AS "p" ; 


-- Using SELECT MIN() and SELECT MAX() 
SELECT MIN(P.UnitPrice) AS "Min Price" , 
	MAX(UnitsInStock) AS " Max unit in stock" 
FROM [dbo].[Products] AS "P" ; 
--If none of the AS after min it will return no column name 

-- Recent date of Oders 
SELECT MAX([OrderDate]) AS "Recent date" 
FROM [dbo].[Orders] ;

-- Max age in employees 
SELECT MIN(BirthDate) AS "Tuoi doi lon nhat"
FROM [dbo].[Employees] ; 

 -- Count the numbers of Customers 
 SELECT COUNT(*) AS "Number of Customers" 
 FROM [dbo].[Customers] ;

 SELECT COUNT([CustomerID]) AS "Number of Customers" 
 FROM [dbo].[Customers] ; 
 --If there is NULL it wont count it result in cus loss

 -- SUM of the Freight for Orders 
 SELECT SUM(Freight) AS "SUM of the Freight of Orders" 
 FROM [dbo].[Orders] ; 
 -- If 1 line is NULL result in the Sum is NULL 

 -- average of the quantity of order details 
 SELECT AVG(Quantity) AS "The avg of quantity" 
 FROM [dbo].[Order Details] ; 

 -- Count the quantity , Sum of the Pro in stock , aag of the products in Product 
 -- UnitInStock must - UnitsOnOder 
 SELECT COUNT(*) AS "Quantity" , 
 SUM(UnitsInStock) AS "Number of unit in stock" , 
 AVG(UnitPrice) AS "average product price" 
 FROM [dbo].[Products] ; 

 SELECT COUNT(*) AS "Using *" , 
 COUNT(OrderID) AS "Uing order ID " 
 FROM [dbo].[Orders] ; 

 SELECT AVG(UnitPrice) AS "average unit price" , 
 SUM(Quantity) AS "Sum of quantity" 
 FROM [dbo].[Order Details] ; 