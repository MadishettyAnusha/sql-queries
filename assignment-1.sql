Use AdventureWorks2019
Go

--Write a query that retrieves the columns ProductID, Name, Color and ListPrice from the Production.Product table, with no filter. 

Select ProductID, Name, Color , ListPrice from Production.Product;

--Write a query that retrieves the columns ProductID, Name, Color and ListPrice from the Production.Product table, excludes the rows that ListPrice is 0.
Select ProductID, Name, Color , ListPrice from Production.Product where ListPrice!=0;

--Write a query that retrieves the columns ProductID, Name, Color and ListPrice from the Production.Product table, the rows that are NULL for the Color column.
Select ProductID, Name, Color , ListPrice from Production.Product where Color IS NULL ;

--Write a query that retrieves the columns ProductID, Name, Color and ListPrice from the Production.Product table, the rows that are not NULL for the Color column.
Select ProductID, Name, Color , ListPrice from Production.Product where Color IS NOT NULL ;

--Write a query that retrieves the columns ProductID, Name, Color and ListPrice from the Production.Product table, the rows that are not NULL for the column Color, and the column ListPrice has a value greater than zero.

Select ProductID, Name, Color , ListPrice from Production.Product where Color IS NOT NULL AND ListPrice>0;

--Write a query that concatenates the columns Name and Color from the Production.Product table by excluding the rows that are null for color.

SELECT CONCAT(Name, ' ', Color) AS [Name-Color]
FROM Production.Product
WHERE Color IS NOT NULL;

--Write a query that generates the following result set  from Production.Product:
--NAME: LL Crankarm  --  COLOR: Black
SELECT 'NAME: ' + Name + '  --  COLOR: ' + Color AS ProductDetails FROM Production.Product ;


--Write a query to retrieve the to the columns ProductID and Name from the Production.Product table filtered by ProductID from 400 to 500
Select ProductID, Name from Production.Product where ProductID Between 400 AND 500;

--Write a query to retrieve the to the columns  ProductID, Name and color from the Production.Product table restricted to the colors black and blue
Select ProductID, Name, Color  from Production.Product where Color IN ('black','blue');

--Write a query to get a result set on products that begins with the letter S. 
Select * from Production.Product where name LIKE 'S%'
--Write a query that retrieves the columns Name and ListPrice from the Production.Product table. Your result set should look something like the following. Order the result set by the Name column. 
-- Name                                               ListPrice
-- Seat Lug                                              0,00
-- Seat Post                                             0,00
-- Seat Stays                                            0,00
-- Seat Tube                                            0,00
-- Short-Sleeve Classic Jersey, L           53,99

Select Name,ListPrice from  Production.Product order by name desc;

--Write a query that retrieves the columns Name and ListPrice from the Production.Product table. Your result set should look something like the following. Order the result set by the Name column. The products name should start with either 'A' or 'S'
-- Name                                               ListPrice
-- Adjustable Race                                   0,00
-- All-Purpose Bike Stand                       159,00
-- AWC Logo Cap                                      8,99
-- Seat Lug                                                 0,00
-- Seat Post                                                0,00

SELECT Name, ListPrice FROM Production.Product WHERE Name LIKE 'A%' OR Name LIKE 'S%' ORDER BY Name;

-- --Write a query so you retrieve rows that have a Name that begins with the letters SPO, but is then not followed by the letter K. After this zero or more letters can exists. Order the result set by the Name column.
SELECT Name, ListPrice FROM Production.Product WHERE Name LIKE 'SPO[^K]%' ORDER BY Name;

-- Write a query that retrieves unique colors from the table Production.Product. Order the results  in descending  manner
SELECT DISTINCT Color FROM Production.Product ORDER BY Color DESC;

-- Write a query that retrieves the unique combination of columns ProductSubcategoryID and Color from the Production.Product table. Format and sort so the result set accordingly to the following. We do not want any rows that are NULL.in any of the two columns in the result.
SELECT DISTINCT ProductSubcategoryID ,Color from Production.Product where ProductSubcategoryID is NOT NULL AND Color is NOT NULL ORDER BY ProductSubcategoryID, Color;

