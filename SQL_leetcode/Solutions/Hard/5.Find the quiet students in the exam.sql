with cte as exam_scores(
    select *,
    MAX(score) over(partition by exam_id) as max_score,
    MIN(score) over(partition by exam_id) as min_score
    from
    Exam
),
 quite_students as(
    select 
    student_id 
    from exam_scores
    group by student_id
    having sum(case when score= max_score or score =min_score then 1 else 0)=0
 )


select student_id,student_name 
from Student 
join quite_students
using student_id
order by 1
