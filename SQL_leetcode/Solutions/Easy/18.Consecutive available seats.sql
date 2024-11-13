SELECT seat_id FROM (
    SELECT seat_id,free,
    lead(free,1) as next,
    lag(free,1) as prev 
    FROM cinema
) a
WHERE a.free = True and ( next = True or prev = True)
ORDER BY seat_id;
