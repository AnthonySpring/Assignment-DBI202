CREATE PROCEDURE UpdateStudentMajor
    @p_student_id VARCHAR(8),
    @p_new_major VARCHAR(50)
AS
BEGIN
    UPDATE Students
    SET major = @p_new_major
    WHERE student_id = @p_student_id;
END;


