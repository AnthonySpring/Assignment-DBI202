SELECT 
    s.student_id,
    s.student_name,
    s.major,
    ROUND(AVG(g.grade), 2) AS average_grade
FROM Students s
LEFT JOIN Grades g ON s.student_id = g.student_id
GROUP BY s.student_id, s.student_name, s.major
HAVING AVG(g.grade) IS NOT NULL
ORDER BY average_grade DESC;

SELECT 
    c.class_id,
    c.class_name,
    COUNT(sc.student_id) AS student_count
FROM Classes c
LEFT JOIN Student_Class sc ON c.class_id = sc.class_id
GROUP BY c.class_id, c.class_name
ORDER BY student_count DESC;

SELECT 
    s.student_id,
    s.student_name,
    sub.subject_name,
    g.grade
FROM Students s
JOIN Grades g ON s.student_id = g.student_id
JOIN Subjects sub ON g.subject_id = sub.subject_id
WHERE g.grade > 8.0
ORDER BY g.grade DESC;