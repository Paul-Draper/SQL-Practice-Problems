/* Problem 13 */
SELECT 
	OrderID
	,ProductID
	,UnitPrice 
	,Quantity
	,UnitPrice * Quantity AS TotalPrice
FROM
	[Order Details]
ORDER BY
	OrderID
	,ProductID
