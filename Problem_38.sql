/* Problem 38 */
SELECT
	OrderID
FROM
	[Order Details]
WHERE
	Quantity >= 60
GROUP BY
	OrderID
HAVING
	COUNT(Quantity) <> COUNT(DISTINCT Quantity)
ORDER BY
	OrderID