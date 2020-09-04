/* Problem 56 */
SELECT
	A.CustomerID
	,A.OrderID AS InitialOrderID
	,A.OrderDate AS InitialOrderDate
	,B.OrderID AS NextOrderID
	,B.OrderDate AS NextOrderDate
	,DaysBetween = DATEDIFF(day, A.OrderDate, B.OrderDate)
FROM
	Orders A
	,Orders B
WHERE
	A.CustomerID = B.CustomerID AND
	B.OrderID > A.OrderID AND
	DATEDIFF(day, A.OrderDate, B.OrderDate) <= 5 AND 
	DATEDIFF(day, A.OrderDate, B.OrderDate) >= 0
ORDER BY
	CustomerID