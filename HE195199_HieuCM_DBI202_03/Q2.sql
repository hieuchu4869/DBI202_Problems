

select StudentID, StudentLastName , StudentFirstName , Departments.DepartmentName from Students
join Departments on Departments.DepartmentID = Students.DepartmentID
where Departments.DepartmentName = 'Computer Science'