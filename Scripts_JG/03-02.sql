/* Display the number of sales for each employee for each month of 2021 */

select 
  e.firstName,
  e.lastName,
  substr(s.soldDate,1,4) as Year,
  substr(s.soldDate,6,2) as Month,
  s.salesAmount
from employee as e
INNER JOIN
sales as s
ON
e.employeeId = s.employeeId
order by
e.employeeId, Year, Month