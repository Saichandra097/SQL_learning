With table1 as
(
   Select player_id, device_id,
   Rank() OVER(partition by player_id
               order by event_date) as rk
   From Activity
)
Select t.player_id, t.device_id
from table1 as t
where t.rk=1