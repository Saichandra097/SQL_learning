select class
from courses
group by class
where count(distinct student ) >= 5;