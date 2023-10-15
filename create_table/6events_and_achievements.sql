CREATE TABLE IF NOT EXISTS accomplishments(
    accomplishment_id BIGSERIAL NOT NULL PRIMARY KEY,
    accomplishment VARCHAR(255),
    year_achieved DATE NOT NULL
);

-- POPULATE
INSERT INTO accomplishments (accomplishment, year_achieved)
VALUES
    ('Publication in a Peer-Reviewed Journal', '2021-08-10'),
    ('Research Grant Award', '2020-11-30'),
    ('Outstanding Community Service Award', '2022-07-22'),
    ('Innovation Award', '2023-02-05'),
    ('National Science Fair First Place', '2020-04-15'),
    ('Art Exhibition Featured Artist', '2021-06-28'),
    ('Best Paper Presentation at a Conference', '2022-10-08'),
    ('Leadership Award', '2023-05-12'),
    ('Musical Performance Recognition', '2021-12-03'),
    ('Accreditation Achievement', '2020-01-01'),
    ('Cross-University Championship', '2021-02-15'),
    ('Sports Achievement', '2022-05-20'),
    ('Accreditation Achievement', '2023-03-10'),
    ('Cross-University Championship', '2020-06-05'),
    ('Sports Achievement', '2021-07-30'),
    ('Accreditation Achievement', '2022-09-18'),
    ('Cross-University Championship', '2023-11-12'),
    ('Sports Achievement', '2020-04-25');
















