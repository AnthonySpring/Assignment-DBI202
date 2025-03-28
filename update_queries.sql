UPDATE Grades
SET grade = 8.0
WHERE student_id = 'HE190001' AND subject_id = 1;

UPDATE Students
SET major = 'Information Safety'
WHERE student_id = 'HE190002';

UPDATE Teachers
SET department = 'Artificial Intelligence'
WHERE teacher_id = 1;

UPDATE Subjects
SET credits = 5
WHERE subject_id = 1;