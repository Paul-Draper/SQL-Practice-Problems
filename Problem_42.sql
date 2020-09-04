/* Problem 42 */
WITH LateOrders AS (
	SELECT
		OrderID
		,EmployeeID
	FROM
		Orders
	WHERE
		RequiredDate <= ShippedDate
)
SELECT
	LateOrders.EmployeeID
	,LastName
	,TotalLateOrders = COUNT(OrderID)
FROM
	Employees
		JOIN LateOrders
			ON Employees.EmployeeID = LateOrders.EmployeeID
WHERE
	OrderID IN (SELECT OrderID FROM LateOrders)
GROUP BY
	LateOrders.EmployeeID
	,LastName
ORDER BY
	TotalLateOrders DESC