select
  e.firstName,
  e.lastName,
  count(s.salesAmount) as [Total Sales]
from sales as s

RIGHT JOIN
employee as e
ON
e.employeeId = s.employeeId
where
substr(s.soldDate,1,4) == '2023'

group by
e.employeeId
having
[Total Sales] > 5

order by [Total Sales]
DESC