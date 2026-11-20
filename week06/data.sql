USE sen307_12134;
INSERT INTO Department (dept_name) VALUES
('Software Engineering'),
('Computer Science'),
('Artificial Intelligence'),
('Data Science'),
('Cybersecurity');
INSERT INTO Course (course_code, course_title, credit_units, description, dept_id) VALUES
('SEN307', 'Database Systems', 3,
'Relational database design, SQL queries, normalization, transactions and indexing using
MySQL.',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('SEN301', 'Software Architecture', 3,
'Architectural styles, design patterns, microservices and how to structure large software
systems.',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('COS301', 'Operating Systems', 3,
'Processes, threads, CPU scheduling, memory management and file systems.',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('COS305', 'Computer Networks', 3,
'TCP/IP, routing, switching, LAN and WAN design and network protocols.',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('AIN301', 'Introduction to Artificial Intelligence', 3,
'Intelligent agents, search algorithms, knowledge representation and reasoning.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('AIN305', 'Machine Learning', 3,
'Supervised and unsupervised learning, neural networks, deep learning and model
evaluation.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('AIN307', 'Natural Language Processing', 3,
'Text processing, word embeddings, language models, sentiment analysis and chatbots.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('DTS301', 'Data Visualization and Analytics', 2,
'Exploratory data analysis, charts, dashboards and telling stories with data.',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('DTS305', 'Big Data Technologies', 3,
'Distributed storage and processing of very large datasets with Hadoop and Spark.',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('CYB301', 'Network Security', 3,
'Firewalls, cryptography, intrusion detection and protecting networks from attacks.',
(SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity'));
SELECT d.dept_name, COUNT(c.course_id) AS courses
FROM Department d LEFT JOIN Course c ON d.dept_id = c.dept_id
GROUP BY d.dept_name;


SELECT dept_id, dept_name FROM Department;
SELECT course_id, course_code FROM Course;


INSERT INTO Lecturer (staff_no, full_name, email, dept_id) VALUES
('VUA/ST/101', 'Dr Amaka Okafor',     'a.okafor@vua.edu.ng',    1),
('VUA/ST/102', 'Dr Musa Bello',       'm.bello@vua.edu.ng',     1),
('VUA/ST/103', 'Prof Ngozi Eze',      'n.eze@vua.edu.ng',       2),
('VUA/ST/104', 'Dr Ibrahim Danjuma',  'i.danjuma@vua.edu.ng',   2),
('VUA/ST/105', 'Dr Funmilayo Adeyemi','f.adeyemi@vua.edu.ng',   3),
('VUA/ST/106', 'Mr Chinedu Nwosu',    'c.nwosu@vua.edu.ng',     3),
('VUA/ST/107', 'Dr Halima Yusuf',     'h.yusuf@vua.edu.ng',     4),
('VUA/ST/108', 'Dr Emeka Obi',        'e.obi@vua.edu.ng',       4),
('VUA/ST/109', 'Mrs Blessing Ojo',    'b.ojo@vua.edu.ng',       5),
('VUA/ST/110', 'Dr Samuel Gyang',     's.gyang@vua.edu.ng',     5);

INSERT INTO Student (matric_no, full_name, gender, date_of_birth, dept_id) VALUES
('12134', 'Alada Emmanuel',              'M', '2008-09-11', 1),
('20231235', 'John Musa',            'M', '2004-11-02', 2),
('20231236', 'Chiamaka Nnadi',       'F', '2005-07-21', 3),
('20231237', 'Abubakar Sadiq',       'M', '2004-05-09', 4),
('20231238', 'Temitope Balogun',     'F', '2005-01-30', 5),
('20231239', 'Daniel Gyang',         'M', '2004-09-17', 1),
('20231240', 'Fatima Lawal',         'F', '2005-12-03', 2),
('20231241', 'Emeka Okonkwo',        'M', '2004-02-26', 3),
('20231242', 'Blessing Eze',         'F', '2005-06-11', 4),
('20231243', 'Yusuf Ibrahim',        'M', '2004-10-08', 5),
('20231244', 'Grace Adeleke',        'F', '2005-04-19', 1),
('20231245', 'Samuel Dung',          'M', '2004-08-23', 2),
('20231246', 'Ngozi Umeh',           'F', '2005-02-07', 3),
('20231247', 'Ahmed Garba',          'M', '2004-12-15', 4),
('20231248', 'Folake Adebayo',       'F', '2005-09-28', 5),
('20231249', 'Peter Choji',          'M', '2004-03-04', 1),
('20231250', 'Hauwa Mohammed',       'F', '2005-05-16', 2),
('20231251', 'Victor Nwachukwu',     'M', '2004-07-01', 3),
('20231252', 'Esther Bitrus',        'F', '2005-11-25', 4),
('20231253', 'Tunde Ogunleye',       'M', '2004-01-12', 5);


SELECT * from Student;
SELECT * from Course;
SELECT * from Department;
SELECT student_id, matric_no, full_name FROM Student;
SELECT lecturer_id, full_name FROM Lecturer;
INSERT INTO Enrolment (student_id, course_id) VALUES
(1, 1), (1, 2), (2, 3), (2, 4), (3, 5), (3, 6), (3, 7), (4, 8), (4, 9), (5, 10), 
(6, 1), (6, 2), (7, 3), (7, 4), (8, 5), (8, 6), (8, 7), (9, 8), (9, 9), (10, 10), 
(11, 1), (11, 2), (12, 3), (12, 4), (13, 5), (13, 6), (13, 7), (14, 8), (14, 9), (15, 10),
(16, 1), (16, 2), (17, 3), (17, 4), (18, 5), (18, 6), (18, 7), (19, 8), (19, 9), (20, 10);


INSERT INTO CourseAllocation (course_id, lecturer_id) VALUES
(1, 1), (1, 2),   -- SEN307 Database Systems: Okafor + Bello
(2, 2),           -- SEN301 Software Architecture: Bello
(3, 3), (3, 4),   -- COS301 Operating Systems: Eze + Danjuma
(4, 4),           -- COS305 Computer Networks: Danjuma
(5, 5),           -- AIN301 Intro to AI: Adeyemi
(6, 6), (6, 5),   -- AIN305 Machine Learning: Nwosu + Adeyemi
(7, 5),           -- AIN307 NLP: Adeyemi
(8, 7),           -- DTS301 Data Visualization: Yusuf
(9, 8),           -- DTS305 Big Data: Obi
(10, 9), (10, 10);-- CYB301 Network Security: Ojo + Gyang
UPDATE Student SET dept_id = 2 WHERE student_id = 1;
SET SQL_SAFE_UPDATES = 0;
UPDATE Student SET dept_id = 1 WHERE matric_no = '12134';
SET SQL_SAFE_UPDATES = 0;

UPDATE Student SET dept_id = 2 WHERE matric_no = '12134';

SET SQL_SAFE_UPDATES = 1;
SELECT matric_no, full_name, dept_id FROM Student WHERE matric_no = '12134';

INSERT INTO Department (dept_name) VALUES ('Library and Information Science');
INSERT INTO Student (matric_no, full_name, dept_id)
VALUES ('20249999', 'Transfer Student',
(SELECT dept_id FROM Department WHERE dept_name = 'Library and Information
Science'));

DELETE FROM Department WHERE dept_name = 'Library and Information Science';


