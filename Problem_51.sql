/* Problem 51 */
WITH MainTable AS (
	SELECT
		C.CustomerID
		,C.CompanyName
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
)
SELECT
	CustomerID
	,CompanyName
	,TotalOrderAmount
	,GroupName
FROM MainTable
	JOIN CustomerGroupThreshold
		ON MainTable.TotalOrderAmount BETWEEN 
			CustomerGroupThreshold.RangeBottom AND
			CustomerGroupThreshold.RangeTop
ORDER BY CustomerID