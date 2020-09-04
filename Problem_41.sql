/* Problem 41 */
SELECT
	OrderID
	,OrderDate
	,RequiredDate
	,ShippedDate
FROM
	Orders
WHERE
	RequiredDate <= ShippedDate