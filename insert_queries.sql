INSERT INTO Students (student_id, student_name, birthdate, major, phone_number, email)
VALUES ('HE190141', 'Nguyen Van New', '2003-01-01', 'Software Engineering', '0912345670', 'new.nguyen@example.com');

INSERT INTO Student_Class (student_id, class_id)
VALUES ('HE190141', 1910);

INSERT INTO Grades (grade_id, student_id, subject_id, grade)
VALUES (141, 'HE190141', 1, 7.5);

INSERT INTO Teachers (teacher_id, teacher_name, department, email)
VALUES (6, 'Vo Thi New', 'Software Engineering', 'new.vo@example.com');