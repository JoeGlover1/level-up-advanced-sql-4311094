/* Find all sales where the car purchased was electric - using a subqiery*/
select 
  s.soldDate as [D.O.P],
  s.salesAmount as [Purchase Amount],
  i.colour as [Car Colour]
from 
  sales as s
INNER JOIN
  inventory as i
ON
  s.inventoryId = i.inventoryId
WHERE
  i.modelId in (select modelId from model where EngineType = 'Electric')

