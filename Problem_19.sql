/* Problem 19 */
SELECT 
	OrderID
	,CONVERT(VARCHAR(10), OrderDate, 102) AS OrderDate
	,CompanyName
FROM
	Orders O
		JOIN Shippers S
			ON O.ShipVia = S.ShipperID
WHERE
	OrderID < 10300
ORDER BY
	OrderID