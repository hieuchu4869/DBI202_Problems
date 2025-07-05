




select StudentID , StudentLastName, StudentFirstName from Students
where StudentScholarship = 
(
select max(StudentScholarship) as highest from Students 
join Departments on Departments.DepartmentID = Students.DepartmentID
where DepartmentName = 'Mathematics'
)

