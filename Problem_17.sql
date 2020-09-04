/* Problem 17 */
SELECT
	ContactTitle
	,COUNT(ContactTitle) AS TotalContactTitle
FROM
	Customers
GROUP BY
	ContactTitle
ORDER BY
	TotalContactTitle DESC