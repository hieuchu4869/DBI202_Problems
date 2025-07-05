

select Departments.DepartmentID , Departments.DepartmentName , count(StudentID) as NumberOfStudents
from Departments
left  join Students on Students.DepartmentID = Departments.DepartmentID
group by Departments.DepartmentID , Departments.DepartmentName


