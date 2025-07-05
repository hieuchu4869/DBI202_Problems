

select StudentID, StudentLastName , StudentFirstName , DATEDIFF(YEAR, StudentBirthday, GETDATE())
 from Students
 group by StudentID, StudentLastName , StudentFirstName , StudentBirthday
 having  DATEDIFF(YEAR, StudentBirthday, GETDATE()) - (  CASE 
      WHEN MONTH(StudentBirthday) > MONTH(GETDATE()) 
           OR (MONTH(StudentBirthday) = MONTH(GETDATE()) AND DAY(StudentBirthday) > DAY(GETDATE()))
      THEN 1 ELSE 0 
    END )  > 20