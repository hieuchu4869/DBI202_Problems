

create trigger Salary_Min_Max
on employees
after update 
as	 
	begin 
		if exists ( select * from inserted join jobs
		on jobs.job_id = inserted.job_id
		where inserted.salary < min_salary or inserted.salary > max_salary)
		begin
			rollback
		end
		
	end


update employees
set salary = 3000
where employee_id = 122 