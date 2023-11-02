select
  e.employeeId,
  e.firstName,
  e.lastName,
  max(s.salesAmount) as [Max sale],
  min(s.salesAmount) as [Min sale],
  count(s.salesAmount) as [Total Sales]
from sales as s
INNER JOIN
employee as e
ON
e.employeeId = s.employeeId
where
substr(s.soldDate, 1,4) == '2023' /*date('now', 'start of year')*/
group by
e.employeeId
having
[Total Sales] > 0
order by
[Total Sales]
desc