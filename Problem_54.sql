/* Problem 54 */
WITH SupplierTable AS (
	SELECT 
		Country
		,TotalSuppliers = COUNT(*)
	FROM
		Suppliers
	GROUP BY
		Country
),
CustomerTable AS (
	SELECT
		Country
		,TotalCustomers = COUNT(*)
	FROM
		Customers
	GROUP BY
		Country
)
SELECT
	Country = ISNULL(SupplierTable.Country, CustomerTable.Country)
	,TotalSuppliers = ISNULL(SupplierTable.TotalSuppliers, 0)
	,TotalCustomers = ISNULL(CustomerTable.TotalCustomers, 0)
FROM
	SupplierTable
	FULL JOIN CustomerTable
		ON SupplierTable.Country = CustomerTable.Country