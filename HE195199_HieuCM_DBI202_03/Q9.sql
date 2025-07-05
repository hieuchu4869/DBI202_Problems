

create procedure proc_report
	@deptname varchar(50),
	@result INT output
as
	select @result = (
		select count(StudentID) from 
		Students join Departments on Departments.DepartmentID = Students.DepartmentID
		where @deptname = Departments.DepartmentName
		group by Students.DepartmentID
	)


