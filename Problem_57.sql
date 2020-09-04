/* Problem 57 */
WITH T AS (
	SELECT
		CustomerID
		,OrderDate
		,NextOrderDate = LAG(OrderDate, 1, 0) OVER (PARTITION BY CustomerID ORDER BY OrderDate DESC)
		,DaysBetweenOrders = DATEDIFF(day, OrderDate, LAG(OrderDate, 1, 0) OVER (PARTITION BY CustomerID ORDER BY OrderDate DESC))
	FROM
		Orders
)
SELECT
	*
FROM
	T
WHERE
	T.DaysBetweenOrders <= 5 AND
	T.DaysBetweenOrders >= 0
ORDER BY
	CustomerID
	,OrderDate