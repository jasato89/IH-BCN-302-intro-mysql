-- Crear schema nuevo
CREATE SCHEMA my_first_database;

-- Utilizar ese schema por defecto

USE my_first_database;


-- CREAR TABLAS
CREATE TABLE course(
course_code VARCHAR(155) NOT NULL,
course_name VARCHAR(255),
PRIMARY KEY(course_code)
);

CREATE TABLE section(
id VARCHAR(255),
course_code VARCHAR(155),
room_number int,
instructor VARCHAR(255),
PRIMARY KEY(id),
FOREIGN KEY (course_code) REFERENCES course(course_code)
);

CREATE TABLE grade(
id INT NOT NULL AUTO_INCREMENT,
student_name VARCHAR(255),
section_id VARCHAR(255),
score INT,
PRIMARY KEY (id),
FOREIGN KEY (section_id) REFERENCES section(id)
);

-- Insertar datos en las tablas

INSERT INTO course VALUES
('CS101', 'Intro to Java'),
('CS103', 'Intro to Databases');

INSERT INTO course(course_code) VALUES('CS102');

INSERT INTO section (id, course_code, room_number, instructor) VALUES
('CS101-A', 'CS101', 1802, 'Balderez'),
('CS101-B', 'CS101',  1650, 'Su'),
('CS103-A', 'CS103',  1200, 'Rojas'),
('CS103-B', 'CS103',  1208, 'Tonno');

INSERT INTO grade (student_name, section_id, score) VALUES
('Maya Charlotte', 'CS101-A', 98),
('James Fields', 'CS101-A', 82),
('Michael Alcocer', 'CS101-B', 65),
('Maya Charlotte', 'CS103-A', 89),
('Tomas Lacroix', 'CS101-A', 99),
('Sara Bisat', 'CS101-A', 87),
('James Fields', 'CS103-A', 46),
('Helena Sepulvida', 'CS103-A', 72),
('Michael Goodman', 'CS101-A', 85),
('Sara Bisat', 'CS103-A', 77),
('Jacob Armas', 'CS101-B', 92),
('Luceilla Sepulvida', 'CS103-A', 88),
('Tomas Lacroix', 'CS103-A', 100),
('Michael Alcocer', 'CS103-A', 93),
('Michael Goodman' , 'CS103-A', 80),
('Helena Sepulvida', 'CS101-B', 90);

-- UPDATE
UPDATE grade SET score = 95 WHERE id = 1;

-- DELETE
DELETE FROM grade WHERE id = 20;

-- SELECT
SELECT * FROM grade ;

SELECT student_name, score FROM GRADE;

-- Media por estudiante
SELECT student_name, AVG(score) FROM grade GROUP BY student_name;

SELECT AVG(score) FROM grade;

-- Contar cuantas notas tenemos de cada estudiante
SELECT student_name, COUNT(*) AS "Number of grades" FROM grade GROUP BY student_name;

-- Cuántas asignaturas tenemos
SELECT COUNT(*) FROM course;

-- Cuál es la nota más baja y más alta de cada sección
SELECT section_id, MIN(score) FROM grade GROUP BY section_id;
SELECT section_id, MAX(score) FROM grade GROUP BY section_id;

-- UTILIZAR LIKE

SELECT * FROM GRADE WHERE student_name LIKE "%e";
SELECT * FROM GRADE WHERE student_name LIKE "m%";

-- Expresiones regulars
SELECT * FROM GRADE WHERE student_name REGEXP "/\b(?:(?:2(?:[0-4][0-9]|5[0-5])|[0-1]?[0-9]?[0-9])\.){3}(?:(?:2([0-4][0-9]|5[0-5])|[0-1]?[0-9]?[0-9]))\b/ig";

-- UTILIZAR RANGOS

SELECT * FROM GRADE WHERE score > 50 AND score < 75;
SELECT * FROM grade WHERE score BETWEEN 50 AND 75;

-- ORDENAR LOS DATOS
SELECT * FROM grade ORDER BY student_name ASC, score DESC;

-- SELECT DISTINCT

SELECT DISTINCT student_name from GRADE;




