/* Display the number of sales for each employee for each month of 2021 */

select 
  e.firstName as [Employee First Name],
  e.lastName as [Employee Last Name],
  SUM(CASE WHEN strftime('%m', s.soldDate) = '01' THEN s.SalesAmount END) as JanSales,
  SUM(CASE WHEN strftime('%m', s.soldDate) = '02' THEN s.SalesAmount END) as FebSales,
  SUM(CASE WHEN strftime('%m', s.soldDate) = '03' THEN s.SalesAmount END) as MarSales,
  SUM(CASE WHEN strftime('%m', s.soldDate) = '04' THEN s.SalesAmount END) as AprSales,
  SUM(CASE WHEN strftime('%m', s.soldDate) = '05' THEN s.SalesAmount END) as JunSales,
  SUM(CASE WHEN strftime('%m', s.soldDate) = '06' THEN s.SalesAmount END) as JulSales,
  SUM(CASE WHEN strftime('%m', s.soldDate) = '07' THEN s.SalesAmount END) as AugSales,
  SUM(CASE WHEN strftime('%m', s.soldDate) = '08' THEN s.SalesAmount END) as SepSales,
  SUM(CASE WHEN strftime('%m', s.soldDate) = '09' THEN s.SalesAmount END) as OctSales,
  SUM(CASE WHEN strftime('%m', s.soldDate) = '10' THEN s.SalesAmount END) as NovSales,
  SUM(CASE WHEN strftime('%m', s.soldDate) = '11' THEN s.SalesAmount END) as DecSales
from 
  employee as e
INNER JOIN
  sales as s
ON
  e.employeeId = s.employeeId
where 
  strftime('%Y', s.soldDate) = '2021'
group by
  e.employeeId
order by
  e.employeeId