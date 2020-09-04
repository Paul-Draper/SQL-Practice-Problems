/* Problem 54 (ver. 2) */
WITH SupplierTable AS (
	SELECT 
		Country
		,TotalSuppliers = COUNT(*)
		,TotalCustomers = 0
	FROM
		Suppliers
	GROUP BY
		Country
),
CustomerTable AS (
	SELECT
		Country
		,TotalSuppliers = 0
		,TotalCustomers = COUNT(*)
	FROM
		Customers
	GROUP BY
		Country
)
SELECT
	T.Country
	,TotalSuppliers = SUM(T.TotalSuppliers)
	,TotalCustomers = SUM(T.TotalCustomers)
FROM 
	(SELECT
	  	 *
	 FROM
		 SupplierTable
	 UNION ALL
	 SELECT
		 *
	 FROM
		 CustomerTable
	) AS T
GROUP BY
	T.Country