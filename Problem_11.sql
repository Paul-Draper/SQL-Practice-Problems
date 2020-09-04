/* Problem 11 */
SELECT 
	FirstName
	,LastName 
	,Title 
	,CONVERT(VARCHAR(10), Birthdate, 102) AS DateOnlyBirthDate
FROM
	Employees
ORDER BY
	BirthDate