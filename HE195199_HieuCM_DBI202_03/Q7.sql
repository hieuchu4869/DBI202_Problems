

with tmp as (

	select Subjects.SubjectID , Subjects.SubjectName,  Results.Score as total from Results
	join Subjects on Subjects.SubjectID = Results.SubjectID
	where Score < 5


),
tmp2 as (
	select SubjectID, SubjectName  , count(*) as total2 from tmp
	group by SubjectID, SubjectName 
)

select Departments.DepartmentName , Subjects.SubjectName , tmp2.total2 from 
Departments join Subjects on Subjects.DepartmentID = Subjects.DepartmentID
join tmp2 on tmp2.SubjectID = Subjects.SubjectID 
where tmp2.total2 = (select max(total2) from tmp2 )

go


WITH tmp AS (
    SELECT Subjects.SubjectID, Subjects.SubjectName, Results.Score
    FROM Results
    JOIN Subjects ON Subjects.SubjectID = Results.SubjectID
    WHERE Score < 5
),
tmp2 AS (
    SELECT SubjectID, SubjectName, COUNT(*) AS total2
    FROM tmp
    GROUP BY SubjectID, SubjectName
)

SELECT 
    Departments.DepartmentName, 
    Subjects.SubjectName, 
    tmp2.total2
FROM Departments
JOIN Subjects ON Subjects.DepartmentID = Departments.DepartmentID
JOIN tmp2 ON tmp2.SubjectID = Subjects.SubjectID
WHERE tmp2.total2 = (
    SELECT MAX(total2) FROM tmp2
)
