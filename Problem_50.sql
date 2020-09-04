/* Problem 50 */
WITH GroupTable AS (
	SELECT
		C.CustomerID
		,C.CompanyName
		,TotalOrderAmount = SUM(UnitPrice * Quantity)
		,CASE
			WHEN SUM(UnitPrice * Quantity) >= 0    AND SUM(UnitPrice * Quantity) < 1000  THEN 'Low'
			WHEN SUM(UnitPrice * Quantity) >= 1000 AND SUM(UnitPrice * Quantity) < 5000  THEN 'Medium'
			WHEN SUM(UnitPrice * Quantity) >= 5000 AND SUM(UnitPrice * Quantity) < 10000 THEN 'High'
			ELSE 'Very High'
		 END AS CustomerGroup
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
)
SELECT
	CustomerGroup
	,TotalInGroup = COUNT(*)
	,PercentageInGroup = (COUNT(*) * 1.0) / (SELECT COUNT(*) FROM GroupTable)
FROM
	GroupTable
GROUP BY
	CustomerGroup