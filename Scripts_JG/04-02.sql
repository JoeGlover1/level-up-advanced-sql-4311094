/* sold_year, sold_month, sales_amount, running_total */
with cte as (
select
  strftime('%Y', soldDate) as year,
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
  end as month,
  SUM(salesAmount) as total_sales
from sales as s
group by 
  year, strftime('%m', soldDate)
order by
  year, strftime('%m', soldDate)
)

select 
  year, 
  month, 
  total_sales,
  SUM(total_sales) over (partition by year order by year, month) as Running_Total
from cte