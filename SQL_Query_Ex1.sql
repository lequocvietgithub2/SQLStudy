-- Write a SQL code that returns all the product name 
SELECT [ProductName] 
FROM [dbo].[Products] ; 
-- Write a SQL code that returns all the product name , unit price and quantity per unit 
SELECT [ProductName] , [UnitPrice] , [QuantityPerUnit] 
FROM [dbo].[Products] ; 

SELECT [Phone] , [ContactName] 
FROM [dbo].[Customers] ; 
-- Write code that returns everything in Product 
SELECT * 
FROM [dbo].[Products] ; 

SELECT * 
FROM [dbo].[Customers]; 

SELECT * 
FROM [dbo].[Suppliers] ; 
-- Write code that return diff country from customers
SELECT DISTINCT [Country] 
FROM [dbo].[Customers] ; 

-- Write code that return diff postal code from suppliers
SELECT DISTINCT [PostalCode]
FROM [dbo].[Suppliers] ; 

--Write code that return diff lastname and title of ...
SELECT DISTINCT [LastName] , [TitleOfCourtesy] 
FROM [dbo].[Employees] ; 

--Write code that return diff ShipVia from orders 
SELECT DISTINCT [ShipVia] 
FROM [dbo].[Orders] ; 

-- Return 5 first lines of Customers 
SELECT TOP 10 *
FROM [dbo].[Customers] ; 

-- Return 30% of the employees 
SELECT TOP 30 percent * 
FROM [dbo].[Employees] ; 

-- Return 5 distinct customers 
SELECT DISTINCT TOP 5 [CustomerID] 
FROM [dbo].[Orders] ; 

