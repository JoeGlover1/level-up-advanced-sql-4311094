/* Get a list of employees and rank the car models they've sold the most of */

select
  e.firstName as [Employee First Name],
  e.lastName as [Employee Last Name],
  m.model as [Car Model],
  count(m.model) as [Sales Count],
  rank() over (partition by e.employeeId order by count(m.model) desc) as Ranking
from employee as e
inner join
sales as s
on
s.employeeId = e.employeeId
inner join
inventory as i
on
s.inventoryId = i.inventoryId
inner join
model as m
on
i.modelId = m.modelId
group by
e.employeeId, m.model



