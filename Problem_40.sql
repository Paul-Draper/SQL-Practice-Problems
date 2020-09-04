/* Problem 40 */
SELECT
	[Order Details].OrderID
	,ProductID
	,UnitPrice
	,Quantity
	,Discount
FROM
	[Order Details]
		JOIN (
			SELECT DISTINCT
				OrderID
			FROM 
				[Order Details]
			WHERE 
				Quantity >= 60
			GROUP BY 
				OrderID
			HAVING
				COUNT(Quantity) <> COUNT(DISTINCT Quantity)
		) PotentialProblemOrders
		ON 
			PotentialProblemOrders.OrderID = [Order Details].OrderID
ORDER BY
	OrderID
	,ProductID