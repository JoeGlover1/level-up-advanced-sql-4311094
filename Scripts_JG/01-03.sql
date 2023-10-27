/* Get a list of all customers and all sales, even if some data is gone */

SELECT
  c.firstName AS 'Customer First Name',
  c.LastName AS 'Customer Last Name',
  s.salesAmount AS 'Sales Amount',
  s.soldDate AS 'Sold Date'
FROM
customer AS c
FULL JOIN
sales AS s
ON
c.customerId = s.customerId
ORDER BY
c.firstName