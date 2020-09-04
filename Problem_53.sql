/* Problem 53 */
WITH SupplierTable AS (
	SELECT DISTINCT
		Country AS SupplierCountry
	FROM
		Suppliers
),
CustomerTable AS (
	SELECT DISTINCT
		Country AS CustomerCountry
	FROM
		Customers
)
SELECT
	SupplierTable.SupplierCountry
	,CustomerTable.CustomerCountry
FROM
	SupplierTable
	FULL JOIN CustomerTable
		ON SupplierTable.SupplierCountry = CustomerTable.CustomerCountry