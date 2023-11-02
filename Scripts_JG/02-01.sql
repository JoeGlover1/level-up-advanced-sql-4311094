select
  e.firstName,
  e.lastName,
  count(s.salesAmount) as [Total Sales]
from sales as s
RIGHT JOIN
employee as e
ON
e.employeeId = s.employeeId
group by
e.employeeId
order by [Total Sales]
DESC