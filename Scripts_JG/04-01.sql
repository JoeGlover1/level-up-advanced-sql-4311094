/* Get a list of employees and rank the car models they've sold the most of */

select
  e.firstName,
  e.lastName,
  m.model,
  count(s.SalesAmount)
  Rank
from employee as e

select * from model