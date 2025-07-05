


create function fn_students(@departmentID int )
returns table 
as 
	return 
		select * from Students
		where @departmentID = Students.DepartmentID and StudentScholarship > 0 
