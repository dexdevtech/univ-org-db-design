CREATE TABLE IF NOT EXISTS award_types(
    award_type_id BIGSERIAL NOT NULL PRIMARY KEY,
    award_type VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS top_performing_students(
    student_id VARCHAR(100) NOT NULL REFERENCES students(student_id),
    award_type_id BIGINT NOT NULL REFERENCES award_types(award_type_id),
    semester INT NOT NULL,
    year_received DATE NOT NULL
);

-- POPULATE
INSERT INTO award_types (award_type)
VALUES
    ('Top 1'),
    ('Top 2'),
    ('Top 3'),
    ('Top 4'),
    ('Top 5'),
    ('Top 6'),
    ('Top 7'),
    ('Top 8'),
    ('Top 9'),
    ('Top 10'),
    ('Laude'),
    ('Cum Laude'),
    ('Magna Cum Laude'),
    ('Non-Academic');

-- POPULATE
INSERT INTO top_performing_students (student_id, award_type_id, semester, year_received)
VALUES
    ('2020-00009-ST-0', 1, 1, '2023-01-01'),
    ('2021-00010-ST-0', 2, 1, '2023-01-01'),
    ('2019-00011-ST-0', 3, 1, '2023-01-01'),
    ('2022-00012-ST-0', 4, 1, '2023-01-01'),
    ('2020-00013-ST-0', 5, 1, '2023-01-01'),
    ('2019-00014-ST-0', 6, 1, '2023-01-01'),
    ('2023-00015-ST-0', 7, 1, '2023-01-01'),
    ('2019-00016-ST-0', 8, 1, '2023-01-01'),
    ('2022-00017-ST-0', 9, 1, '2023-01-01'),
    ('2021-00018-ST-0', 10, 1, '2023-01-01'),
    ('2023-00019-ST-0', 11, 1, '2023-01-01'),
    ('2020-00020-ST-0', 12, 1, '2023-01-01'),
    ('2020-00021-ST-0', 13, 1, '2023-01-01'),
    ('2022-00022-ST-0', 14, 1, '2023-01-01'),
    ('2020-00009-ST-0', 1, 2, '2023-06-01'),
    ('2021-00010-ST-0', 2, 2, '2023-06-01'),
    ('2019-00011-ST-0', 3, 2, '2023-06-01'),
    ('2022-00012-ST-0', 4, 2, '2023-06-01'),
    ('2020-00013-ST-0', 5, 2, '2023-06-01'),
    ('2019-00014-ST-0', 6, 2, '2023-06-01'),
    ('2023-00015-ST-0', 7, 2, '2023-06-01'),
    ('2019-00016-ST-0', 8, 2, '2023-06-01'),
    ('2022-00017-ST-0', 9, 2, '2023-06-01'),
    ('2021-00018-ST-0', 10, 2, '2023-06-01'),
    ('2023-00019-ST-0', 11, 2, '2023-06-01'),
    ('2020-00020-ST-0', 12, 2, '2023-06-01'),
    ('2020-00021-ST-0', 13, 2, '2023-06-01'),
    ('2022-00022-ST-0', 14, 2, '2023-06-01');



























