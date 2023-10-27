SELECT 
  emp.employeeId,
  emp.firstName,
  emp.LastName,
  mang.managerId,
  mang.firstName AS Manager_firstName,
  mang.LastName AS Manager_lastName
FROM employee AS emp
INNER JOIN
employee AS mang
ON
emp.managerId = mang.employeeId
ORDER BY
emp.employeeId;