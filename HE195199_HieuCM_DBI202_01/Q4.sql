select employees.employee_id , employees.first_name + ', ' + employees.last_name as full_name , 
jobs.job_title , employees.phone_number
from employees 
join jobs on employees.job_id = jobs.job_id
where employees.phone_number like '590%' and jobs.job_title like 'Programmer'