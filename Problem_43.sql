/* Problem 43 */
WITH _AllOrders AS
(
	SELECT
		E.EmployeeID
		,E.LastName
		,AllOrders = COUNT(OrderID)
	FROM
		Orders O
			JOIN Employees E
				ON O.EmployeeID = E.EmployeeID
	GROUP BY
		E.EmployeeID
		,E.LastName
),

_LateOrders AS
(
	SELECT
		E.EmployeeID
		,LastName
		,LateOrders = COUNT(OrderID)
	FROM
		Employees E
			JOIN (SELECT
					OrderID
					,EmployeeID
				  FROM
					Orders
				  WHERE
					RequiredDate <= ShippedDate
				  ) L
				ON E.EmployeeID = L.EmployeeID
	GROUP BY
		LastName
		,E.EmployeeID
)

SELECT 
	_A.EmployeeID
	,_A.LastName	
	,AllOrders
	,LateOrders
FROM
	_AllOrders _A
		JOIN _LateOrders _L
			ON _A.EmployeeID = _L.EmployeeID AND
			_A.LastName = _L.LastName