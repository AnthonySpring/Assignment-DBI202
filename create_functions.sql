DELIMITER //

CREATE FUNCTION GetStudentCredits(p_student_id VARCHAR(8))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_credits INT;
    SELECT SUM(sub.credits) INTO total_credits
    FROM Student_Class sc
    JOIN Classes c ON sc.class_id = c.class_id
    JOIN Subjects sub ON c.subject_id = sub.subject_id
    WHERE sc.student_id = p_student_id;
    RETURN IFNULL(total_credits, 0);
END //

CREATE FUNCTION GetStudentAverageGrade(p_student_id VARCHAR(8))
RETURNS DECIMAL(5,2)
DETERMINISTIC
BEGIN
    DECLARE avg_grade DECIMAL(5,2);
    SELECT AVG(grade) INTO avg_grade
    FROM Grades
    WHERE student_id = p_student_id;
    RETURN IFNULL(avg_grade, 0);
END //

CREATE FUNCTION GetStudentClassCount(p_student_id VARCHAR(8))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE class_count INT;
    SELECT COUNT(*) INTO class_count
    FROM Student_Class
    WHERE student_id = p_student_id;
    RETURN class_count;
END //

DELIMITER ;

SELECT student_id, student_name, GetStudentCredits(student_id) AS total_credits
FROM Students
WHERE student_id = 'HE190001';

SELECT student_id, student_name, GetStudentAverageGrade(student_id) AS average_grade
FROM Students
WHERE student_id = 'HE190001';

SELECT student_id, student_name, GetStudentClassCount(student_id) AS class_count
FROM Students
WHERE student_id = 'HE190001';