/* Problem 30 */
SELECT 
	C.CustomerID AS Customers_CustomerID
	,O.CustomerID AS Orders_CustomerID
FROM
	Customers C
		LEFT JOIN Orders O
			ON C.CustomerID = O.CustomerID
WHERE
	O.CustomerID IS NULL