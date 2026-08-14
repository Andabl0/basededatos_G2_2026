/*===================================================================================

INNER JOIN

¿Que es un join?
un join permite combinar informacion de dos o mas tablas utilizando una
relacion entre ellas
===================================================================================*/
USE NORTHWND;

SELECT  
	ProductID AS [numero_producto],
	ProductName AS [nombre_producto],
	UnitPrice AS [precio],
	UnitsInStock AS [existencia],
	(p.UnitPrice * P.UnitsInStock) AS [valor_inventario],
	c.CategoryID AS [numero_categoria],
	c.CategoryName AS [nombre_provedor]
FROM Products AS p
INNER JOIN
Categories AS c
ON c.CategoryID = p.CategoryID
INNER JOIN Suppliers AS s
ON s.SupplierID = p.SupplierID
WHERE p.UnitsInStock <> 0 
AND
c.CategoryName IN ('Seadfood','Confections', 'Beverages')
AND
p.ProductName LIKE 'C%'
ORDER BY [valor_inventario] ASC;

--Selecionar los datos de los clientes que han hecho pedidos (orders)
--mostrando el numero de cliente, el nombre de cliente (companyName),
--numero de orden y la fecha de orden
SELECT
	o.OrderID AS [numero_orden],
	o.OrderDate AS[fecha_orden],
	UPPER(FORMAT(o.OrderDate,'MMMM','es-Es')) AS [mes_orden],
	UPPER(FORMAT(o.OrderDate,'dddd','es-Es')) AS [dia_orden],
	DATEPART(YEAR,o.OrderDate) AS [año_orden],
	o.CustomerID AS [numero_cliente],
	UPPER(c.CompanyName) AS [nombre_cliente]
FROM Orders AS o
INNER JOIN
Customers AS c
ON c.CustomerID = o.CustomerID;

--seleccionar ademas del cliente al que se le vendieron los productos,
--queremos saber el nombre del empleado en formato fullnam que 
--atendio el pedido

SELECT
	o.OrderID AS [numero_orden],
	o.OrderDate AS[fecha_orden],
	UPPER(FORMAT(o.OrderDate,'MMMM','es-Es')) AS [mes_orden],
	UPPER(FORMAT(o.OrderDate,'dddd','es-Es')) AS [dia_orden],
	DATEPART(YEAR,o.OrderDate) AS [año_orden],
	o.CustomerID AS [numero_cliente],
	UPPER(c.CompanyName) AS [nombre_cliente],
	CONCAT (e.FirstName, ' ', e.LastName) AS [nombre_completo]
	FROM Orders AS o
INNER JOIN
Customers AS c
ON c.CustomerID = o.CustomerID
INNER JOIN Employees AS e
ON e.EmployeeID = o.EmployeeID;
GO




SELECT *
FROM Categories;




