SELECT parent_id as post_id, COUNT(DIISTINCT sub_id) as number_of_comments
FROM Submissions
WHERE parent_id in (SELECT DISTINCT sub_id FROM Submissions 
WHERE parent_id IS NULL)
GROUP BY parent_id
ORDER BY post_id;

