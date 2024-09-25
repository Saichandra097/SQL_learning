
with avg_event1 as (select event_type,
AVG(occurences) as avg_events
from Events
group by event_type )

select business_id 
from Events e 
left join avg_event1 a on e.event_type=a.event_type 
where e.occurences > a.avg_events
group by business_id
having count(event_type)>1
