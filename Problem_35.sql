/* Problem 35 */
SELECT
	EmployeeID
	,OrderID
	,OrderDate
FROM
	Orders
WHERE
	OrderDate = EOMONTH(OrderDate)
ORDER BY
	EmployeeID
	,OrderID