/* Problem 22 */
SELECT
	ProductID
	,ProductName
	,UnitsInStock
	,ReorderLevel
FROM
	Products
WHERE
	UnitsInStock < ReorderLevel