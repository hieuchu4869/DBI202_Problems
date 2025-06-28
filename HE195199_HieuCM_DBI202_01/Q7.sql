

select countries.country_id ,  countries.country_name , count(employees.employee_id) as [number of employees] from countries
join locations on countries.country_id = locations.country_id
join departments on departments.location_id = locations.location_id
join employees on employees.department_id = departments.department_id
group by countries.country_id ,  countries.country_name 
having count(employees.employee_id) >= 2