Problem Link: https://leetcode.com/problems/average-time-of-process-per-machine?envType=study-plan-v2&envId=top-sql-50

select s.machine_id, ROUND(AVG(e.timestamp-s.timestamp),3) as processing_time 
from Activity as s
inner join Activity as e 
on e.machine_id=s.machine_id
where s.activity_type='start' and e.activity_type='end'
group by s.machine_id
