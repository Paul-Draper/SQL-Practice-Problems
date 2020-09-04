/* Problem 18 */
SELECT
	ProductID
	,ProductName
	,CompanyName
FROM
	Products P
		LEFT JOIN Suppliers S
			ON P.SupplierID = S.SupplierID