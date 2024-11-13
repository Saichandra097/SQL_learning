select title
from TVProgram 
join(
select title,content_id
from Content
where Kids_content = 'Y' and content_type ='Movies') as a 
using (content_id)
where month(program_date)=6