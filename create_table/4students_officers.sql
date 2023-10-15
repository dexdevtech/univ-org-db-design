CREATE TABLE IF NOT EXISTS officer_types(
    officer_type_id BIGSERIAL NOT NULL PRIMARY KEY,
    officer_type VARCHAR(100) NOT NULL,
    association_type VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS officers(
    officer_id BIGSERIAL NOT NULL PRIMARY KEY,
    student_id VARCHAR(100) NOT NULL REFERENCES students(student_id),
    officer_type_id BIGINT NOT NULL REFERENCES officer_types(officer_type_id),
    year_of_service DATE NOT NULL
);


-- POPULATE
INSERT INTO officer_types (officer_type, association_type)
VALUES
    ('President', 'Organization'),
    ('Vice President External', 'Organization'),
    ('Vice President Internal', 'Organization'),
    ('Secretary', 'Organization'),
    ('Assistant Secretary', 'Organization'),
    ('Treasurer', 'Organization'),
    ('Auditor', 'Organization'),
    ('Business Manager', 'Organization'),
    ('Muse', 'Organization'),
    ('Escort', 'Organization'),
    ('President', 'Class'),
    ('Vice President External', 'Class'),
    ('Vice President Internal', 'Class'),
    ('Secretary', 'Class'),
    ('Assistant Secretary', 'Class'),
    ('Treasurer', 'Class'),
    ('Auditor', 'Class'),
    ('Business Manager', 'Class'),
    ('Muse', 'Class'),
    ('Escort', 'Class');


-- POPULATE
INSERT INTO officers (student_id, officer_type_id, year_of_service)
VALUES
    ('2019-00001-ST-0', 1, '2023-01-01'),
    ('2019-00002-ST-0', 2, '2023-01-01'),
    ('2020-00003-ST-0', 3, '2023-01-01'),
    ('2019-00004-ST-0', 4, '2023-01-01'),
    ('2021-00005-ST-0', 5, '2023-01-01'),
    ('2023-00006-ST-0', 6, '2023-01-01'),
    ('2019-00007-ST-0', 7, '2023-01-01'),
    ('2022-00008-ST-0', 8, '2023-01-01'),
    ('2020-00009-ST-0', 9, '2023-01-01'),
    ('2021-00010-ST-0', 10, '2023-01-01'),
    ('2019-00011-ST-0', 11, '2023-01-01'),
    ('2022-00012-ST-0', 12, '2023-01-01'),
    ('2020-00013-ST-0', 13, '2023-01-01'),
    ('2019-00014-ST-0', 14, '2023-01-01'),
    ('2023-00015-ST-0', 15, '2023-01-01'),
    ('2019-00016-ST-0', 16, '2023-01-01'),
    ('2022-00017-ST-0', 17, '2023-01-01'),
    ('2021-00018-ST-0', 18, '2023-01-01'),
    ('2023-00019-ST-0', 19, '2023-01-01'),
    ('2020-00020-ST-0', 20, '2023-01-01');












