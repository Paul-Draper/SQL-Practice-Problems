/* Problem 21 */
SELECT
	Country
	,City
	,COUNT(CustomerID) AS TotalCustomer
FROM
	Customers
GROUP BY
	Country
	,City
ORDER BY
	TotalCustomer DESC