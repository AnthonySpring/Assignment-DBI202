START TRANSACTION;

INSERT INTO Students (student_id, student_name, birthdate, major, phone_number, email)
VALUES ('HE190142', 'Tran Thi Test', '2003-02-02', 'Artificial Intelligence', '0912345671', 'test.tran@example.com');

SAVEPOINT after_insert;

INSERT INTO Student_Class (student_id, class_id)
VALUES ('HE190142', 1911);

UPDATE Students
SET major = 'Software Engineering'
WHERE student_id = 'HE190142';

ROLLBACK TO after_insert;

COMMIT;

GRANT SELECT, INSERT ON Students TO 'test_user'@'localhost';

GRANT EXECUTE ON PROCEDURE UpdateStudentMajor TO 'test_user'@'localhost';

REVOKE INSERT ON Students FROM 'test_user'@'localhost';