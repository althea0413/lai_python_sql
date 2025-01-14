CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(10),
    age smallint
);

CREATE TABLE enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id smallint REFERENCES students(student_id),
    course_name VARCHAR(20),
    grade VARCHAR(5)
);

INSERT INTO students (name, age) VALUES
    ('張小明', 20),
    ('李美華', 19),
    ('王大寶', 21),
    ('陳雅婷', 20),
    ('林志偉', 22);

INSERT INTO enrollments (student_id, course_name, grade) VALUES
    (1, '資料庫系統', 'A'),
    (1, '程式設計', 'B+'),
    (2, '資料庫系統', 'A-'),
    (2, '網頁設計', 'A'),
    (3, '程式設計', 'B'),
    (3, '資料結構', 'B+'),
    (4, '資料庫系統', 'A+'),
    (4, '作業系統', 'A-'),
    (5, '網頁設計', 'B+'),
    (5, '資料庫系統', 'A-');

SELECT s.student_id AS 學生編號,
			   name AS 學生姓名,
		        age AS AGE,
		course_name AS 課程名稱,
		      grade AS 成積
FROM enrollments e join students s
				 on e.student_id = s.student_id
WHERE name='張小明';