/* Problem 39 */
WITH DoubleEntry AS (
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
)
SELECT
	*
FROM
	[Order Details]
WHERE
	OrderID IN (SELECT OrderID FROM DoubleEntry)