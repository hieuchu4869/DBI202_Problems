





delete from dependents
where exists (
    select *
    from employees
    where employees.employee_id = dependents.employee_id
    and first_name = 'Alexander'
);


delete from dependents
where employee_id in (
	select employee_id
	from employees
	where first_name = 'Alexander'
);
