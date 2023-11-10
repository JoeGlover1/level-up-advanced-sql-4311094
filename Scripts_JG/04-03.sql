/* Show the number of cars sold last month and this month */

SELECT 
 count(*) as, 
 (select count(*) from sales where strftime('%Y-%m', soldDate) = '2023-01')
FROM sales
WHERE strftime('%Y-%m', soldDate) = '2022-12'

