CREATE VIEW ClassDetails AS
SELECT 
    c.class_id,
    c.class_name,
    t.teacher_name,
    s.subject_name,
    c.semester
FROM Classes c
JOIN Teachers t ON c.teacher_id = t.teacher_id
JOIN Subjects s ON c.subject_id = s.subject_id;
