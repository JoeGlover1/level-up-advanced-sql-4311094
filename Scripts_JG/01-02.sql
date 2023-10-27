SELECT
emp.FirstName AS Employee_FirstName,
emp.LastName AS Employee_LastName,
emp.Title AS Title,
s.salesAmount AS 'Sales Amount'
FROM
employee as emp
LEFT JOIN
sales as s
ON
emp.employeeID = s.employeeID
WHERE
emp.title = 'Sales Person' AND s.salesamount IS NULL
ORDER BY
Employee_FirstName