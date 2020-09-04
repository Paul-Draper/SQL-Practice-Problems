/* Problem 6 */
SELECT
	SupplierID
	,ContactName
	,ContactTitle
FROM
	Suppliers
WHERE
	ContactTitle != 'Marketing Manager'