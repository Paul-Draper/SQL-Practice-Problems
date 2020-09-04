/* Problem 34 */
SELECT
	C.CustomerID
	,C.CompanyName
	,TotalsWithoutDiscount = SUM(UnitPrice * Quantity)
	,TotalsWithDiscount = SUM(UnitPrice * Quantity * (1 - Discount))
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
	C.CustomerID, C.CompanyName
HAVING
	SUM(UnitPrice * Quantity * (1 - Discount)) > 10000
ORDER BY
	TotalsWithDiscount DESC