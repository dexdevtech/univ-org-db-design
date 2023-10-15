CREATE TABLE IF NOT EXISTS suborganizations(
    suborganization_id BIGSERIAL PRIMARY KEY NOT NULL,
    suborganization VARCHAR(50) NOT NULL,
    suborganization_term_year DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS suborganization_roles(
    suborganization_role_id BIGSERIAL PRIMARY KEY NOT NULL,
    suborganization_role VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS students_suborganizations(
    student_id VARCHAR(100) NOT NULL REFERENCES students(student_id),
    suborganization_id BIGINT NOT NULL REFERENCES suborganizations(suborganization_id),
    suborganization_role_id BIGINT NOT NULL REFERENCES suborganization_roles(suborganization_role_id)
);

-- POPULATE
INSERT INTO suborganizations (suborganization, suborganization_term_year)
VALUES
    ('suborg1', '2023-01-01'),
    ('suborg2', '2023-01-01'),
    ('suborg3', '2023-01-01'),
    ('suborg4', '2023-01-01'),
    ('suborg5', '2023-01-01'),
    ('suborg6', '2023-01-01'),
    ('suborg7', '2023-01-01'),
    ('suborg1', '2024-01-01'),
    ('suborg2', '2024-01-01'),
    ('suborg3', '2024-01-01'),
    ('suborg4', '2024-01-01'),
    ('suborg5', '2024-01-01'),
    ('suborg6', '2024-01-01'),
    ('suborg7', '2024-01-01');


-- POPULATE
INSERT INTO suborganization_roles(suborganization_role)
VALUES ('chairman'),
     ('co-chairman'),
     ('member');   

-- POPULATE
INSERT INTO students_suborganizations (student_id, suborganization_id, suborganization_role_id)
VALUES
    ('2019-00001-ST-0', 1, 1),
    ('2019-00002-ST-0', 2, 1),
    ('2020-00003-ST-0', 3, 1),
    ('2019-00004-ST-0', 4, 1),
    ('2021-00005-ST-0', 5, 1),
    ('2023-00006-ST-0', 6, 1),
    ('2019-00007-ST-0', 7, 1),
    ('2022-00008-ST-0', 1, 2),
    ('2020-00009-ST-0', 2, 2),
    ('2021-00010-ST-0', 3, 2),
    ('2019-00011-ST-0', 4, 2),
    ('2022-00012-ST-0', 5, 2),
    ('2020-00013-ST-0', 6, 2),
    ('2019-00014-ST-0', 7, 2),
    ('2023-00015-ST-0', 1, 3),
    ('2019-00016-ST-0', 2, 3),
    ('2022-00017-ST-0', 3, 3),
    ('2021-00018-ST-0', 4, 3),
    ('2023-00019-ST-0', 5, 3),
    ('2020-00020-ST-0', 6, 3),
    ('2020-00021-ST-0', 7, 3),
    ('2022-00022-ST-0', 1, 3),
    ('2023-00023-ST-0', 2, 3),
    ('2019-00024-ST-0', 3, 3),
    ('2022-00025-ST-0', 4, 3),
    ('2021-00026-ST-0', 5, 3),
    ('2019-00027-ST-0', 6, 3),
    ('2020-00028-ST-0', 7, 3),
    ('2021-00029-ST-0', 1, 3),
    ('2023-00030-ST-0', 2, 3),
    ('2019-00031-ST-0', 3, 3),
    ('2020-00032-ST-0', 4, 3),
    ('2021-00033-ST-0', 5, 3),
    ('2022-00034-ST-0', 6, 3),
    ('2023-00035-ST-0', 7, 3),
    ('2019-00036-ST-0', 1, 3),
    ('2020-00037-ST-0', 2, 3),
    ('2021-00038-ST-0', 3, 3),
    ('2022-00039-ST-0', 4, 3),
    ('2023-00040-ST-0', 5, 3),
    ('2019-00041-ST-0', 6, 3),
    ('2020-00042-ST-0', 7, 3),
    ('2021-00043-ST-0', 1, 3),
    ('2022-00044-ST-0', 2, 3),
    ('2023-00045-ST-0', 3, 3),
    ('2019-00046-ST-0', 4, 3),
    ('2020-00047-ST-0', 5, 3),
    ('2021-00048-ST-0', 6, 3),
    ('2022-00049-ST-0', 7, 3),
    ('2023-00050-ST-0', 1, 3);








