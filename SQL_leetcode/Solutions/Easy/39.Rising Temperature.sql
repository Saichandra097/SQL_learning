with cte as (
    SELECT Id,RecordDate,Temperature,
    LAG(Temperature) OVER(ORDER BY RecordDate ) as prev_date
    FROM Weather
)

select Id 
from cte 
where Temperature > prev_date
