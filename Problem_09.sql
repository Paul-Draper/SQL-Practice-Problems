/* Problem 9 */  
SELECT
	OrderID
	,CustomerID
	,ShipCountry
FROM
	Orders
WHERE
	ShipCountry IN ('Brazil', 'Mexico', 'Argentina', 'Venezuela')