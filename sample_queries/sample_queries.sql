-- 1. Fetch the guardian details of student 2021-00038-ST-0 and its relationship to the student
SELECT CONCAT(s.first_name, ' ', s.last_name) AS student_name, 
        CONCAT(g.first_name, ' ', g.last_name) AS guardian_name, 
        g.email, 
        g.contact_number, 
        gt.guardian_type AS relationship 
        FROM students s
    JOIN student_guardian_relationship sgr
    ON s.student_id = sgr.student_id
    JOIN guardians g
    ON g.guardian_id = sgr.guardian_id
    JOIN guardian_type gt
    ON gt.guardian_type_id = sgr.guardian_type_id
WHERE s.student_id = '2021-00038-ST-0';

-- 2. Count how many students enrolled in 2020, 2021, and 2022
SELECT EXTRACT(YEAR FROM date_enrolled) AS school_year, 
    COUNT(EXTRACT(YEAR FROM date_enrolled)) AS no_of_enrollees
    FROM students
GROUP BY school_year
ORDER BY school_year;

-- 3. List the chairman and co-chairman of each suborganization in the year 2023
SELECT  s.student_id,
        CONCAT(s.first_name, ' ', s.last_name) AS name, 
        so.suborganization, 
        EXTRACT(YEAR FROM so.suborganization_term_year) AS term_year,
        sr.suborganization_role AS role
        FROM suborganization_roles sr
    JOIN students_suborganizations ss
    ON sr.suborganization_role_id = ss.suborganization_role_id
    JOIN students s
    ON s.student_id = ss.student_id
    JOIN suborganizations so
    ON so.suborganization_id = ss.suborganization_id
WHERE sr.suborganization_role IN ('chairman', 'co-chairman') 
    AND EXTRACT(YEAR FROM so.suborganization_term_year) = 2023;

-- 4. All students that belongs to suborg5 in the year 2023
SELECT s.student_id,
       CONCAT(s.first_name, ' ', s.last_name) AS name, 
       so.suborganization,
       sr.suborganization_role,
       EXTRACT(YEAR FROM so.suborganization_term_year) AS term_year
       FROM suborganizations so
    JOIN students_suborganizations ss
    ON so.suborganization_id = ss.suborganization_id
    JOIN students s 
    ON s.student_id = ss.student_id
    JOIN suborganization_roles sr
    ON sr.suborganization_role_id = ss.suborganization_role_id
WHERE so.suborganization = 'suborg5';

-- 5. Give all students that PROF3 handles
SELECT s.student_id,
        CONCAT(s.first_name, ' ', s.last_name) AS student,
        CONCAT(p.first_name, ' ', p.last_name) AS professor,
        sj.subject_name
        FROM professors p
    JOIN classes c
    ON c.professor_id = p.professor_id
    JOIN students_classes sc
    ON c.class_id = sc.class_id
    JOIN students s
    ON s.student_id = sc.student_id
    JOIN subjects sj 
    ON c.subject_id = sj.subject_id
WHERE p.professor_id = 'PROF3';

-- 6. List all the subjects student 2020-00042-ST-0 takes up
SELECT s.student_id,
       sj.subject_name
       FROM students s
    JOIN students_classes sc
    ON s.student_id = sc.student_id
    JOIN classes c
    ON c.class_id = sc.class_id
    JOIN subjects sj
    ON sj.subject_id = c.subject_id
WHERE s.student_id = '2020-00042-ST-0' ;

-- 7. All students in class 2
SELECT s.student_id,
       c.class_id
    FROM classes c
    JOIN students_classes sc
    ON sc.class_id = c.class_id
    JOIN students s
    ON s.student_id = sc.student_id
WHERE c.class_id = 2;

-- 8. Fetch the 2023 organization vice president internal
SELECT CONCAT(s.first_name, ' ', s.last_name) AS student,
       ot.officer_type,
       ot.association_type
    FROM officer_types ot
    JOIN officers o
    ON o.officer_type_id = ot.officer_type_id
    JOIN students s
    ON s.student_id = o.student_id
WHERE ot.officer_type = 'Vice President Internal' 
    AND ot.association_type = 'Organization';

-- 9. Get all laudes
SELECT s.student_id, 
        CONCAT(s.first_name, ' ', s.last_name) AS student,
        awt.award_type
    FROM award_types awt 
    JOIN top_performing_students tps
    ON tps.award_type_id = awt.award_type_id
    JOIN students s
    ON s.student_id = tps.student_id
WHERE awt.award_type iLIKE '%laude%';

-- 10. List all the achievements in 2023 and who is the organization president.
SELECT s.student_id,
        CONCAT(s.last_name, ', ', s.first_name) AS president,
        a.accomplishment,
        EXTRACT(YEAR FROM a.year_achieved) AS year_
        FROM officer_types ot
      JOIN officers o 
      ON o.officer_type_id = ot.officer_type_id
      JOIN students s
      ON s.student_id = o.student_id
      JOIN accomplishments a 
      ON EXTRACT(YEAR FROM a.year_achieved) = EXTRACT(YEAR FROM o.year_of_service)
WHERE ot.officer_type = 'President'
    AND association_type = 'Organization'
    AND EXTRACT(YEAR FROM a.year_achieved) = '2023';

















