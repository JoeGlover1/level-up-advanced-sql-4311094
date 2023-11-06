/* sold_year, sold_month, sales_amount, running_total */

select
  strftime('%Y', soldDate) as Year,
  case
    when strftime('%m', soldDate) == '01' then 'Jan'
    when strftime('%m', soldDate) == '02' then 'Feb'
    when strftime('%m', soldDate) == '03' then 'Mar'
    when strftime('%m', soldDate) == '04' then 'Apr'
    when strftime('%m', soldDate) == '05' then 'May'
    when strftime('%m', soldDate) == '06' then 'Jun'
    when strftime('%m', soldDate) == '07' then 'Jul'
    when strftime('%m', soldDate) == '08' then 'Aug'
    when strftime('%m', soldDate) == '09' then 'Sep'
    when strftime('%m', soldDate) == '10' then 'Oct'
    when strftime('%m', soldDate) == '11' then 'Nov'
    when strftime('%m', soldDate) == '12' then 'Dec'
  end as Month,
  SUM(salesAmount) as [Total Sales Amount]
  /*SUM(SUM(salesAmount)) over (partition by strftime('%Y', soldDate) order by strftime('%m', soldDate)) as [Running Total] */
from sales as s
group by 
  Year, Month
order by
  Year, Month