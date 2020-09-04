/* Problem 36 */
SELECT TOP 10
	OrderID
	,COUNT(OrderID) TotalOrderDetails
FROM
	[Order Details]
GROUP BY
	OrderID
ORDER BY
	TotalOrderDetails DESC
	,OrderID DESC