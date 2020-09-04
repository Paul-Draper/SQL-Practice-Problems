/* Problem 29 */
SELECT 
	O.EmployeeID
	,LastName
	,O.OrderID
	,ProductName
	,Quantity
FROM
	Orders O
	JOIN [Order Details] D
		ON O.OrderID = D.OrderID
	JOIN Employees E
		ON O.EmployeeID = E.EmployeeID
	JOIN Products P
		ON D.ProductID = P.ProductID
ORDER BY
	OrderID
	,P.ProductID