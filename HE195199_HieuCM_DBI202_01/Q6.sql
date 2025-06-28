	
select top 10 a.first_name , a.last_name 
from employees a
 left join employees b on a.employee_id  = b.manager_id
where b.manager_id is null 
order by a.first_name
