select departments.department_id , departments.department_name , min (employees.salary) as [MIN(salary)]
from employees
join departments on employees.department_id = departments.department_id
group by departments.department_id , departments.department_name
order by [MIN(salary)] asc 

