-- 1. Selezionare tutti gli studenti nati nel 1990
SELECT * FROM students WHERE YEAR(date_of_birth) = 1990;

-- 2. Selezionare tutti i corsi che valgono più di 10 crediti
SELECT * FROM courses WHERE cfu > 10;

-- 3. Selezionare tutti gli studenti che hanno più di 30 anni
SELECT * FROM students WHERE TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) > 30; 

-- 4. Selezionare tutti i corsi di laurea magistrale
SELECT * FROM `degrees` WHERE `level` = 'triennale';

-- 5. Da quanti dipartimenti è composta l’università?
SELECT COUNT(id) AS number_of_departments FROM departments;

-- 6. Quanti sono gli insegnanti che non hanno un numero di telefono?
SELECT * FROM teachers WHERE phone IS NULL;

-- 7. Contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(enrolment_date) AS enrolment_year, COUNT(id) AS total_enrolments FROM students
GROUP BY YEAR(enrolment_date);

-- 8. Calcolare la media dei voti di ogni appello d’esame
SELECT exam_id, AVG(vote) AS average_vote FROM exam_student
GROUP BY exam_id;

-- 9. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT dep.name AS department_name, COUNT(deg.id) AS number_of_degrees FROM departments dep
INNER JOIN `degrees` deg ON dep.id = deg.department_id 
GROUP BY dep.name;

-- 10. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT *
FROM students s
INNER JOIN `degrees` d
ON d.id = s.degree_id
WHERE d.name = 'Corso di laurea in economia';

-- 11. Selezionare tutti i corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT *
FROM `degrees` deg
INNER JOIN departments dep
ON dep.id = deg.department_id
WHERE dep.name = 'Dipartimento di Neuroscienze' AND `level` = 'magistrale';

-- 12. Selezionare tutti i corsi in cui insegna Fulvio Amato
SELECT c.name AS course_name
FROM course_teacher ct 
INNER JOIN teachers t 
ON ct.teacher_id = t.id
INNER JOIN courses c
ON ct.course_id = c.id
WHERE t.name = 'Fulvio' AND t.surname = 'Amato';

-- 13. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome

-- BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami