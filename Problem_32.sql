/* Problem 32 */
SELECT
	C.CustomerID
	,C.CompanyName
	,O.OrderID
	,TotalOrderAmount = SUM(UnitPrice * Quantity)
FROM 
	Orders O
		JOIN [Order Details] D
			ON O.OrderID = D.OrderID
		JOIN Customers C
			ON O.CustomerID = C.CustomerID
WHERE
	OrderDate >= '19980101' AND
	OrderDate < '19990101'
GROUP BY
	C.CustomerID
	,C.CompanyName
	,O.OrderID
HAVING
	SUM(UnitPrice * Quantity) > 10000
ORDER BY
	TotalOrderAmount DESC
