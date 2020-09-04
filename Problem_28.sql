/* Problem 28 */
SELECT TOP 3
	ShipCountry
	,AVG(Freight) AS AverageFreight
FROM
	Orders
WHERE
	OrderDate > DATEADD(year, -1, (SELECT MAX(OrderDate) FROM Orders))
GROUP BY
	ShipCountry
ORDER BY
	AverageFreight DESC