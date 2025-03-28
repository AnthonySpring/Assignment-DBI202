DELETE FROM Student_Class
WHERE student_id = 'HE190140';

DELETE FROM Grades
WHERE student_id = 'HE190140';

DELETE FROM Students
WHERE student_id = 'HE190140';

DELETE FROM Grades
WHERE student_id = 'HE190001' AND subject_id = 1;

DELETE FROM Student_Class
WHERE student_id = 'HE190002' AND class_id = 1910;

DELETE FROM Teachers
WHERE teacher_id = 5;