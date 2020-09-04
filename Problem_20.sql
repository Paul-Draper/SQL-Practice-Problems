/* Problem 20 */
SELECT
	CategoryName
	,COUNT(ProductID) AS TotalProducts
FROM
	Categories C
		JOIN Products P
			ON C.CategoryID = P.CategoryID
GROUP BY
	CategoryName
ORDER BY
	TotalProducts DESC