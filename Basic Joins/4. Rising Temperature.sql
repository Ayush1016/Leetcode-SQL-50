Problem Link: https://leetcode.com/problems/rising-temperature/?envType=study-plan-v2&envId=top-sql-50

select w1.id
from weather w1
inner join weather as w2
on DATEDIFF(w1.recordDate,w2.recordDate)=1 and w1.temperature>w2.temperature
