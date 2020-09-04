/* Problem 55 */
WITH M AS (
	SELECT 
		ShipCountry
		,MIN(OrderDate) AS OrderDate
	FROM
		Orders
	GROUP BY
		ShipCountry
)
SELECT
	O.ShipCountry
	,CustomerID
	,OrderID
	,O.OrderDate
FROM
	Orders O
		INNER JOIN M
			ON O.ShipCountry = M.ShipCountry AND 
			   O.OrderDate = M.OrderDate
