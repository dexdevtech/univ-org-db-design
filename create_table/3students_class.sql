CREATE TABLE IF NOT EXISTS subjects(
    subject_id BIGSERIAL NOT NULL PRIMARY KEY,
    subject_name VARCHAR(255) NOT NULL,
    number_of_units INT NOT NULL,
    subject_type VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS professors(
    professor_id VARCHAR(100) NOT NULL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    middle_name VARCHAR(100),
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255),
    date_enrolled DATE NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR(50) NOT NULL,
    contact_number VARCHAR(50) NOT NULL,
    barangay VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS classes(
    class_id BIGSERIAL NOT NULL PRIMARY KEY,
    subject_id BIGINT NOT NULL REFERENCES subjects(subject_id),
    professor_id VARCHAR(100) NOT NULL REFERENCES professors(professor_id),
    year_offered DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS students_classes(
    student_id VARCHAR(100) NOT NULL REFERENCES students(student_id),
    class_id BIGINT  NOT NULL REFERENCES classes(class_id)
);

-- POPULATE
INSERT INTO subjects (subject_name, number_of_units, subject_type)
VALUES
    ('Introduction to Electronics', 3, 'Core'),
    ('Analog Electronics', 4, 'Core'),
    ('Digital Electronics', 4, 'Core'),
    ('Communication Systems', 4, 'Core'),
    ('Signal Processing', 3, 'Core'),
    ('Microwave Engineering', 3, 'Elective'),
    ('Fiber Optic Communication', 3, 'Elective'),
    ('Antenna Theory', 3, 'Elective'),
    ('Wireless Communication', 3, 'Elective');

-- POPULATE
INSERT INTO professors (professor_id, first_name, middle_name, last_name, email, starting_year, date_of_birth, gender, contact_number, barangay, city)
VALUES ('PROF1', 'John', 'Michael', 'Smith', 'john.smith@email.com', '2000-01-01', '1975-05-15', 'Male', '091234567890', 'Barangay 1', 'City 1'),
        ('PROF2', 'Jane', 'Elizabeth', 'Doe', 'jane.doe@email.com', '2001-02-01', '1978-08-20', 'Female', '092345678901', 'Barangay 2', 'City 2'),
        ('PROF3', 'David', 'William', 'Brown', 'david.brown@email.com', '2002-03-01', '1980-12-10', 'Male', '093456789012', 'Barangay 3', 'City 3'),
        ('PROF4', 'Sarah', 'Marie', 'Johnson', 'sarah.johnson@email.com', '2003-04-01', '1982-03-25', 'Female', '094567890123', 'Barangay 4', 'City 4'),
        ('PROF5', 'Robert', 'James', 'Wilson', 'robert.wilson@email.com', '2004-05-01', '1984-06-30', 'Male', '095678901234', 'Barangay 5', 'City 5');

-- POPULATE
INSERT INTO classes (subject_id, professor_id, year_offered)
VALUES (
    (SELECT subject_id FROM subjects WHERE subject_name = 'Introduction to Electronics'),
    'PROF1',
    '2023-01-01'
);
INSERT INTO classes (subject_id, professor_id, year_offered)
VALUES (
    (SELECT subject_id FROM subjects WHERE subject_name = 'Analog Electronics'),
    'PROF2',
    '2023-01-01'
);
INSERT INTO classes (subject_id, professor_id, year_offered)
VALUES (
    (SELECT subject_id FROM subjects WHERE subject_name = 'Digital Electronics'),
    'PROF3',
    '2023-01-01'
);
INSERT INTO classes (subject_id, professor_id, year_offered)
VALUES (
    (SELECT subject_id FROM subjects WHERE subject_name = 'Communication Systems'),
    'PROF4',
    '2023-01-01'
);
INSERT INTO classes (subject_id, professor_id, year_offered)
VALUES (
    (SELECT subject_id FROM subjects WHERE subject_name = 'Signal Processing'),
    'PROF5',
    '2023-01-01'
);
INSERT INTO classes (subject_id, professor_id, year_offered)
VALUES (
    (SELECT subject_id FROM subjects WHERE subject_name = 'Microwave Engineering'),
    'PROF1',
    '2023-01-01'
);
INSERT INTO classes (subject_id, professor_id, year_offered)
VALUES (
    (SELECT subject_id FROM subjects WHERE subject_name = 'Fiber Optic Communication'),
    'PROF2',
    '2023-01-01'
);
INSERT INTO classes (subject_id, professor_id, year_offered)
VALUES (
    (SELECT subject_id FROM subjects WHERE subject_name = 'Antenna Theory'),
    'PROF3',
    '2023-01-01'
);
INSERT INTO classes (subject_id, professor_id, year_offered)
VALUES (
    (SELECT subject_id FROM subjects WHERE subject_name = 'Wireless Communication'),
    'PROF4',
    '2023-01-01'
);


-- POPULATE
INSERT INTO students_classes (student_id, class_id)
VALUES
    ('2019-00001-ST-0', 1),
    ('2019-00002-ST-0', 2),
    ('2020-00003-ST-0', 3),
    ('2019-00004-ST-0', 4),
    ('2021-00005-ST-0', 5),
    ('2023-00006-ST-0', 6),
    ('2019-00007-ST-0', 7),
    ('2022-00008-ST-0', 8),
    ('2020-00009-ST-0', 9),
    ('2021-00010-ST-0', 1),
    ('2019-00011-ST-0', 2),
    ('2022-00012-ST-0', 3),
    ('2020-00013-ST-0', 4),
    ('2019-00014-ST-0', 5),
    ('2023-00015-ST-0', 6),
    ('2019-00016-ST-0', 7),
    ('2022-00017-ST-0', 8),
    ('2021-00018-ST-0', 9),
    ('2023-00019-ST-0', 1),
    ('2020-00020-ST-0', 2),
    ('2020-00021-ST-0', 3),
    ('2022-00022-ST-0', 4),
    ('2023-00023-ST-0', 5),
    ('2019-00024-ST-0', 6),
    ('2022-00025-ST-0', 7),
    ('2021-00026-ST-0', 8),
    ('2019-00027-ST-0', 9),
    ('2020-00028-ST-0', 1),
    ('2021-00029-ST-0', 2),
    ('2023-00030-ST-0', 3),
    ('2019-00031-ST-0', 4),
    ('2020-00032-ST-0', 5),
    ('2021-00033-ST-0', 6),
    ('2022-00034-ST-0', 7),
    ('2023-00035-ST-0', 8),
    ('2019-00036-ST-0', 9),
    ('2020-00037-ST-0', 1),
    ('2021-00038-ST-0', 2),
    ('2022-00039-ST-0', 3),
    ('2023-00040-ST-0', 4),
    ('2019-00041-ST-0', 5),
    ('2020-00042-ST-0', 6),
    ('2021-00043-ST-0', 7),
    ('2022-00044-ST-0', 8),
    ('2023-00045-ST-0', 9),
    ('2019-00046-ST-0', 1),
    ('2020-00047-ST-0', 2),
    ('2021-00048-ST-0', 3),
    ('2022-00049-ST-0', 4),
    ('2023-00050-ST-0', 5);

















