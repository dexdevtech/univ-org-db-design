CREATE DATABASE univ_org;

CREATE TABLE IF NOT EXISTS students(
    student_id VARCHAR(100) NOT NULL PRIMARY KEY,
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

CREATE TABLE IF NOT EXISTS guardians(
    guardian_id VARCHAR(100) NOT NULL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255),
    contact_number VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS guardian_type(
    guardian_type_id BIGSERIAL NOT NULL PRIMARY KEY,
    guardian_type VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS student_guardian_relationship (
    student_id VARCHAR(100) NOT NULL REFERENCES students (student_id),
    guardian_id VARCHAR(100) NOT NULL REFERENCES guardians (guardian_id),
    guardian_type_id BIGINT NOT NULL REFERENCES guardian_type (guardian_type_id)
);

--POPULATE THE STUDENT TABLE
INSERT INTO students (student_id, first_name, middle_name, last_name, email, date_enrolled, date_of_birth, gender, contact_number, barangay, city)
VALUES
    ('2019-00001-ST-0', 'John', 'Michael', 'Doe', 'john.doe@email.com', '2022-08-15', '1995-03-20', 'Male', '09123456789', 'Barangay 1', 'City 1'),
    ('2019-00002-ST-0', 'Jane', NULL, 'Smith', 'jane.smith@email.com', '2022-08-16', '1996-05-10', 'Female', '09234567890', 'Barangay 2', 'City 2'),
    ('2020-00003-ST-0', 'Alice', 'Marie', 'Johnson', 'alice.johnson@email.com', '2022-08-17', '1997-02-25', 'Female', '09345678901', 'Barangay 3', 'City 3'),
    ('2019-00004-ST-0', 'Robert', 'James', 'Brown', 'robert.brown@email.com', '2022-08-18', '1998-04-12', 'Male', '09456789012', 'Barangay 1', 'City 1'),
    ('2021-00005-ST-0', 'Emily', 'Grace', 'Davis', 'emily.davis@email.com', '2022-08-19', '1999-06-30', 'Female', '09567890123', 'Barangay 2', 'City 2'),
    ('2023-00006-ST-0', 'David', 'William', 'Wilson', 'david.wilson@email.com', '2022-08-20', '2000-08-18', 'Male', '09678901234', 'Barangay 3', 'City 3'),
    ('2019-00007-ST-0', 'Sarah', 'Elizabeth', 'Anderson', 'sarah.anderson@email.com', '2022-08-21', '2001-03-05', 'Female', '09789012345', 'Barangay 1', 'City 1'),
    ('2022-00008-ST-0', 'Michael', 'Joseph', 'Clark', 'michael.clark@email.com', '2022-08-22', '2002-11-22', 'Male', '09890123456', 'Barangay 2', 'City 2'),
    ('2020-00009-ST-0', 'Olivia', NULL, 'Lee', 'olivia.lee@email.com', '2022-08-23', '2003-07-10', 'Female', '09901234567', 'Barangay 3', 'City 3'),
    ('2021-00010-ST-0', 'Daniel', 'Thomas', 'Garcia', 'daniel.garcia@email.com', '2022-08-24', '2004-04-25', 'Male', '09112345678', 'Barangay 1', 'City 1'),
    ('2019-00011-ST-0', 'Ava', 'Sophia', 'Harris', 'ava.harris@email.com', '2022-08-25', '2005-02-15', 'Female', '09223456789', 'Barangay 2', 'City 2'),
    ('2022-00012-ST-0', 'William', 'Alexander', 'Miller', 'william.miller@email.com', '2022-08-26', '2006-10-11', 'Male', '09334567890', 'Barangay 3', 'City 3'),
    ('2020-00013-ST-0', 'Sophia', NULL, 'White', 'sophia.white@email.com', '2022-08-27', '2007-06-03', 'Female', '09445678901', 'Barangay 1', 'City 1'),
    ('2019-00014-ST-0', 'James', 'Henry', 'Martinez', 'james.martinez@email.com', '2022-08-28', '2008-12-20', 'Male', '09556789012', 'Barangay 2', 'City 2'),
    ('2023-00015-ST-0', 'Olivia', 'Grace', 'Lopez', 'olivia.lopez@email.com', '2022-08-29', '2009-08-07', 'Female', '09667890123', 'Barangay 3', 'City 3'),
    ('2019-00016-ST-0', 'Benjamin', 'Lucas', 'Wright', 'benjamin.wright@email.com', '2022-08-30', '2010-04-30', 'Male', '09778901234', 'Barangay 1', 'City 1'),
    ('2022-00017-ST-0', 'Emma', 'Chloe', 'Robinson', 'emma.robinson@email.com', '2022-08-31', '2011-01-10', 'Female', '09889012345', 'Barangay 2', 'City 2'),
    ('2021-00018-ST-0', 'Ethan', NULL, 'King', 'ethan.king@email.com', '2022-09-01', '2012-09-02', 'Male', '09990123456', 'Barangay 3', 'City 3'),
    ('2023-00019-ST-0', 'Mia', 'Harper', 'Adams', 'mia.adams@email.com', '2022-09-02', '2013-05-18', 'Female', '09101234567', 'Barangay 1', 'City 1'),
    ('2020-00020-ST-0', 'Alexander', 'William', 'Thomas', 'alexander.thomas@email.com', '2022-09-03', '2014-02-28', 'Male', '09212345678', 'Barangay 2', 'City 2'),
    ('2020-00021-ST-0', 'Liam', 'Samuel', 'Turner', NULL, '2022-09-04', '2015-11-15', 'Male', '09345678900', 'Barangay 1', 'City 1'),
    ('2022-00022-ST-0', 'Sophia', 'Grace', 'Green', 'sophia.green@email.com', '2022-09-05', '2016-07-22', 'Female', '09234567801', 'Barangay 2', 'City 2'),
    ('2023-00023-ST-0', 'Noah', 'David', 'Carter', NULL, '2022-09-06', '2017-03-30', 'Male', '09123456712', 'Barangay 3', 'City 3'),
    ('2019-00024-ST-0', 'Olivia', NULL, 'Hill', NULL, '2022-09-07', '2018-01-05', 'Female', '09876543210', 'Barangay 1', 'City 1'),
    ('2022-00025-ST-0', 'Liam', 'James', 'Hall', 'liam.hall@email.com', '2022-09-08', '2019-09-12', 'Male', '09987654321', 'Barangay 2', 'City 2'),
    ('2021-00026-ST-0', 'Mia', 'Olivia', 'Perez', NULL, '2022-09-09', '2020-05-20', 'Female', '09128765432', 'Barangay 3', 'City 3'),
    ('2019-00027-ST-0', 'William', NULL, 'Collins', 'william.collins@email.com', '2022-09-10', '2021-02-25', 'Male', '09129876543', 'Barangay 1', 'City 1'),
    ('2020-00028-ST-0', 'Emma', 'Madison', 'Wood', NULL, '2022-09-11', '2022-10-07', 'Female', '09129987654', 'Barangay 2', 'City 2'),
    ('2021-00029-ST-0', 'James', 'Alexander', 'Gonzalez', 'james.gonzalez@email.com', '2022-09-12', '2023-06-15', 'Male', '09129987655', 'Barangay 3', 'City 3'),
    ('2023-00030-ST-0', 'Olivia', NULL, 'Stewart', NULL, '2022-09-13', '2024-04-03', 'Female', '09129987656', 'Barangay 1', 'City 1'),
    ('2019-00031-ST-0', 'Benjamin', 'Lucas', 'Young', NULL, '2022-09-14', '2025-01-29', 'Male', '09129987657', 'Barangay 2', 'City 2'),
    ('2020-00032-ST-0', 'Ava', 'Sophia', 'Diaz', 'ava.diaz@email.com', '2022-09-15', '2026-09-20', 'Female', '09129987658', 'Barangay 3', 'City 3'),
    ('2021-00033-ST-0', 'Ethan', NULL, 'Flores', NULL, '2022-09-16', '2027-05-16', 'Male', '09129987659', 'Barangay 1', 'City 1'),
    ('2022-00034-ST-0', 'Mia', 'Harper', 'Ward', 'mia.ward@email.com', '2022-09-17', '2028-02-10', 'Female', '09129987660', 'Barangay 2', 'City 2'),
    ('2023-00035-ST-0', 'James', NULL, 'Butler', NULL, '2022-09-18', '2029-10-05', 'Male', '09129987661', 'Barangay 3', 'City 3'),
    ('2019-00036-ST-0', 'Olivia', 'Grace', 'Hayes', NULL, '2022-09-19', '2030-06-01', 'Female', '09129987662', 'Barangay 1', 'City 1'),
    ('2020-00037-ST-0', 'William', NULL, 'Morris', 'william.morris@email.com', '2022-09-20', '2031-01-26', 'Male', '09129987663', 'Barangay 2', 'City 2'),
    ('2021-00038-ST-0', 'Sophia', NULL, 'Kennedy', NULL, '2022-09-21', '2032-09-20', 'Female', '09129987664', 'Barangay 3', 'City 3'),
    ('2022-00039-ST-0', 'Liam', 'Alexander', 'Warren', 'liam.warren@email.com', '2022-09-22', '2033-05-15', 'Male', '09129987665', 'Barangay 1', 'City 1'),
    ('2023-00040-ST-0', 'Ava', NULL, 'Scott', NULL, '2022-09-23', '2034-02-09', 'Female', '09129987666', 'Barangay 2', 'City 2'),
    ('2019-00041-ST-0', 'Ethan', 'Daniel', 'Cruz', NULL, '2022-09-24', '2035-10-04', 'Male', '09129987667', 'Barangay 3', 'City 3'),
    ('2020-00042-ST-0', 'Mia', NULL, 'Patterson', 'mia.patterson@email.com', '2022-09-25', '2036-06-30', 'Female', '09129987668', 'Barangay 1', 'City 1'),
    ('2021-00043-ST-0', 'James', 'Lucas', 'Reed', NULL, '2022-09-26', '2037-03-25', 'Male', '09129987669', 'Barangay 2', 'City 2'),
    ('2022-00044-ST-0', 'Olivia', 'Harper', 'Bailey', 'olivia.bailey@email.com', '2022-09-27', '2038-11-19', 'Female', '09129987670', 'Barangay 3', 'City 3'),
    ('2023-00045-ST-0', 'Liam', NULL, 'Bell', NULL, '2022-09-28', '2039-08-14', 'Male', '09129987671', 'Barangay 1', 'City 1'),
    ('2019-00046-ST-0', 'Sophia', 'Madison', 'Miller', NULL, '2022-09-29', '2040-04-08', 'Female', '09129987672', 'Barangay 2', 'City 2'),
    ('2020-00047-ST-0', 'William', 'James', 'Cox', 'william.cox@email.com', '2022-09-30', '2041-01-03', 'Male', '09129987673', 'Barangay 3', 'City 3'),
    ('2021-00048-ST-0', 'Emma', NULL, 'Howard', NULL, '2022-10-01', '2042-09-29', 'Female', '09129987674', 'Barangay 1', 'City 1'),
    ('2022-00049-ST-0', 'Liam', 'William', 'Ward', 'liam.ward@email.com', '2022-10-02', '2043-06-24', 'Male', '09129987675', 'Barangay 2', 'City 2'),
    ('2023-00050-ST-0', 'Ava', NULL, 'Lewis', NULL, '2022-10-03', '2044-03-20', 'Female', '09129987676', 'Barangay 3', 'City 3');

--POPULATE THE GUARDIAN TABLE
INSERT INTO guardians (guardian_id, first_name, last_name, email, contact_number)
VALUES
    ('2019-00001-ST-0-G', 'John', 'Doe', 'johndoe@email.com', '09123456789'),
    ('2019-00002-ST-0-G', 'Jane', 'Smith', 'janesmith@email.com', '09234567890'),
    ('2020-00003-ST-0-G', 'Alice', 'Johnson', 'alicejohnson@email.com', '09345678901'),
    ('2019-00004-ST-0-G', 'Robert', 'Brown', 'robertbrown@email.com', '09456789012'),
    ('2021-00005-ST-0-G', 'Emily', 'Davis', 'emilydavis@email.com', '09567890123'),
    ('2023-00006-ST-0-G', 'David', 'Wilson', 'davidwilson@email.com', '09678901234'),
    ('2019-00007-ST-0-G', 'Sarah', 'Anderson', 'sarahanderson@email.com', '09789012345'),
    ('2022-00008-ST-0-G', 'Michael', 'Clark', 'michaelclark@email.com', '09890123456'),
    ('2020-00009-ST-0-G', 'Olivia', 'Lee', 'olivialee@email.com', '09901234567'),
    ('2021-00010-ST-0-G', 'Daniel', 'Garcia', 'danielgarcia@email.com', '09112345678'),
    ('2019-00011-ST-0-G', 'Ava', 'Harris', 'avaharris@email.com', '09223456789'),
    ('2022-00012-ST-0-G', 'William', 'Miller', 'williammiller@email.com', '09334567890'),
    ('2020-00013-ST-0-G', 'Sophia', 'White', 'sophiawhite@email.com', '09445678901'),
    ('2019-00014-ST-0-G', 'James', 'Martinez', 'jamesmartinez@email.com', '09556789012'),
    ('2023-00015-ST-0-G', 'Olivia', 'Lopez', 'olivialopez@email.com', '09667890123'),
    ('2019-00016-ST-0-G', 'Benjamin', 'Wright', 'benjaminwright@email.com', '09778901234'),
    ('2022-00017-ST-0-G', 'Emma', 'Robinson', 'emmarobinson@email.com', '09889012345'),
    ('2021-00018-ST-0-G', 'Ethan', 'King', 'ethanking@email.com', '09990123456'),
    ('2023-00019-ST-0-G', 'Mia', 'Adams', 'miaadams@email.com', '09101234567'),
    ('2020-00020-ST-0-G', 'Alexander', 'Thomas', 'alexanderthomas@email.com', '09212345678'),
    ('2020-00021-ST-0-G', 'Liam', 'Turner', 'liamturner@email.com', '09345678900'),
    ('2022-00022-ST-0-G', 'Sophia', 'Green', 'sophiagreen@email.com', '09234567801'),
    ('2023-00023-ST-0-G', 'Noah', 'Carter', 'noahcarter@email.com', '09123456712'),
    ('2019-00024-ST-0-G', 'Olivia', 'Hill', 'oliviahill@email.com', '09876543210'),
    ('2022-00025-ST-0-G', 'Liam', 'Hall', 'liamhall@email.com', '09987654321'),
    ('2021-00026-ST-0-G', 'Mia', 'Perez', 'miaperez@email.com', '09128765432'),
    ('2019-00027-ST-0-G', 'William', 'Collins', 'williamcollins@email.com', '09129876543'),
    ('2020-00028-ST-0-G', 'Emma', 'Wood', 'emmawood@email.com', '09129987654'),
    ('2021-00029-ST-0-G', 'James', 'Gonzalez', 'jamesgonzalez@email.com', '09129987655'),
    ('2023-00030-ST-0-G', 'Olivia', 'Stewart', 'oliviastewart@email.com', '09129987656'),
    ('2019-00031-ST-0-G', 'Benjamin', 'Young', 'benjaminyoung@email.com', '09129987657'),
    ('2020-00032-ST-0-G', 'Ava', 'Diaz', 'avadiaz@email.com', '09129987658'),
    ('2021-00033-ST-0-G', 'Ethan', 'Flores', 'ethanflores@email.com', '09129987659'),
    ('2022-00034-ST-0-G', 'Mia', 'Ward', 'miaward@email.com', '09129987660'),
    ('2023-00035-ST-0-G', 'James', 'Butler', 'jamesbutler@email.com', '09129987661'),
    ('2019-00036-ST-0-G', 'Olivia', 'Hayes', 'oliviahayes@email.com', '09129987662'),
    ('2020-00037-ST-0-G', 'William', 'Morris', 'williammorris@email.com', '09129987663'),
    ('2021-00038-ST-0-G', 'Sophia', 'Kennedy', 'sophiakennedy@email.com', '09129987664'),
    ('2022-00039-ST-0-G', 'Liam', 'Warren', 'liamwarren@email.com', '09129987665'),
    ('2023-00040-ST-0-G', 'Ava', 'Scott', 'avascott@email.com', '09129987666'),
    ('2019-00041-ST-0-G', 'John', 'Smith', NULL, '09129987667'),
    ('2020-00042-ST-0-G', 'Jane', 'Doe', 'jane.doe@email.com', '09129987668'),
    ('2021-00043-ST-0-G', 'Robert', 'Johnson', NULL, '09129987669'),
    ('2022-00044-ST-0-G', 'Alice', 'Brown', 'alice.brown@email.com', '09129987670'),
    ('2023-00045-ST-0-G', 'David', 'Wilson', NULL, '09129987671'),
    ('2019-00046-ST-0-G', 'Sarah', 'Anderson', NULL, '09129987672'),
    ('2020-00047-ST-0-G', 'Michael', 'Clark', 'michael.clark@email.com', '09129987673'),
    ('2021-00048-ST-0-G', 'Olivia', 'Lee', NULL, '09129987674'),
    ('2022-00049-ST-0-G', 'William', 'Garcia', 'william.garcia@email.com', '09129987675'),
    ('2023-00050-ST-0-G', 'Mia', 'Adams', NULL, '09129987676');

--POPULATE THE GUARDIAN_TYPE TABLE
INSERT INTO guardian_type (guardian_type)
VALUES
    ('Mother'),
    ('Father'),
    ('Grandmother'),
    ('Grandfather'),
    ('Older Sibling'),
    ('Aunt'),
    ('Uncle'),
    ('Older Cousin'),
    ('Legal Guardian');


--POPULATE THE STUDENT_GUARDIAN_RELATIONSHIP TABLE
INSERT INTO student_guardian_relationship (student_id, guardian_id, guardian_type_id)
VALUES
    ('2019-00001-ST-0', '2019-00001-ST-0-G', 1),
    ('2019-00002-ST-0', '2019-00002-ST-0-G', 2),
    ('2020-00003-ST-0', '2020-00003-ST-0-G', 3),
    ('2019-00004-ST-0', '2019-00004-ST-0-G', 4),
    ('2021-00005-ST-0', '2021-00005-ST-0-G', 5),
    ('2023-00006-ST-0', '2023-00006-ST-0-G', 6),
    ('2019-00007-ST-0', '2019-00007-ST-0-G', 7),
    ('2022-00008-ST-0', '2022-00008-ST-0-G', 8),
    ('2020-00009-ST-0', '2020-00009-ST-0-G', 9),
    ('2021-00010-ST-0', '2021-00010-ST-0-G', 1),
    ('2019-00011-ST-0', '2019-00011-ST-0-G', 2),
    ('2022-00012-ST-0', '2022-00012-ST-0-G', 3),
    ('2020-00013-ST-0', '2020-00013-ST-0-G', 4),
    ('2019-00014-ST-0', '2019-00014-ST-0-G', 5),
    ('2023-00015-ST-0', '2023-00015-ST-0-G', 6),
    ('2019-00016-ST-0', '2019-00016-ST-0-G', 7),
    ('2022-00017-ST-0', '2022-00017-ST-0-G', 8),
    ('2021-00018-ST-0', '2021-00018-ST-0-G', 9),
    ('2023-00019-ST-0', '2023-00019-ST-0-G', 1),
    ('2020-00020-ST-0', '2020-00020-ST-0-G', 2),
    ('2020-00021-ST-0', '2020-00021-ST-0-G', 3),
    ('2022-00022-ST-0', '2022-00022-ST-0-G', 4),
    ('2023-00023-ST-0', '2023-00023-ST-0-G', 5),
    ('2019-00024-ST-0', '2019-00024-ST-0-G', 6),
    ('2022-00025-ST-0', '2022-00025-ST-0-G', 7),
    ('2021-00026-ST-0', '2021-00026-ST-0-G', 8),
    ('2019-00027-ST-0', '2019-00027-ST-0-G', 9),
    ('2020-00028-ST-0', '2020-00028-ST-0-G', 1),
    ('2021-00029-ST-0', '2021-00029-ST-0-G', 2),
    ('2023-00030-ST-0', '2023-00030-ST-0-G', 3),
    ('2019-00031-ST-0', '2019-00031-ST-0-G', 4),
    ('2020-00032-ST-0', '2020-00032-ST-0-G', 5),
    ('2021-00033-ST-0', '2021-00033-ST-0-G', 6),
    ('2022-00034-ST-0', '2022-00034-ST-0-G', 7),
    ('2023-00035-ST-0', '2023-00035-ST-0-G', 8),
    ('2019-00036-ST-0', '2019-00036-ST-0-G', 9),
    ('2020-00037-ST-0', '2020-00037-ST-0-G', 1),
    ('2021-00038-ST-0', '2021-00038-ST-0-G', 2),
    ('2022-00039-ST-0', '2022-00039-ST-0-G', 3),
    ('2023-00040-ST-0', '2023-00040-ST-0-G', 4),
    ('2019-00041-ST-0', '2019-00041-ST-0-G', 5),
    ('2020-00042-ST-0', '2020-00042-ST-0-G', 6),
    ('2021-00043-ST-0', '2021-00043-ST-0-G', 7),
    ('2022-00044-ST-0', '2022-00044-ST-0-G', 8),
    ('2023-00045-ST-0', '2023-00045-ST-0-G', 9),
    ('2019-00046-ST-0', '2019-00046-ST-0-G', 1),
    ('2020-00047-ST-0', '2020-00047-ST-0-G', 2),
    ('2021-00048-ST-0', '2021-00048-ST-0-G', 3),
    ('2022-00049-ST-0', '2022-00049-ST-0-G', 4),
    ('2023-00050-ST-0', '2023-00050-ST-0-G', 5);






