/* show the total sales per year - CTE not really required for this example*/
with sales_by_year as (
  select 
    substr(soldDate,1,4) as [Year of Sale], 
    sum(salesAmount) as [Total Sales]
  from sales 
  group by 
    [Year of Sale]
)
select * from sales_by_year 

