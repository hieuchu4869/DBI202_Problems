
with tmp as(
select Subjects.SubjectName , StudentID,  max(Score) as FinalGrade from Results
join Subjects on Subjects.SubjectID = Results.SubjectID
group by Subjects.SubjectName , StudentID
)

select Students.StudentID, Students.StudentFirstName, Students.StudentLastName , tmp.SubjectName ,  tmp.FinalGrade
from Students
join tmp on Students.StudentID = tmp.StudentID
group by Students.StudentID, Students.StudentFirstName, Students.StudentLastName , tmp.SubjectName ,  tmp.FinalGrade
order by Students.StudentID



