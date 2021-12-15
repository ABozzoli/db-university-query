-- 1. Selezionare tutti gli studenti nati nel 1990
SELECT * FROM students WHERE YEAR(date_of_birth) = 1990;

-- 2. Selezionare tutti i corsi che valgono più di 10 crediti
SELECT * FROM courses WHERE cfu > 10;

-- 3. Selezionare tutti gli studenti che hanno più di 30 anni
SELECT * FROM students WHERE TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) > 30; 

-- 4. Selezionare tutti i corsi di laurea magistrale
-- 5. Da quanti dipartimenti è composta l’università?
-- 6. Quanti sono gli insegnanti che non hanno un numero di telefono?
-- 7. Contare quanti iscritti ci sono stati ogni anno
-- 8. Calcolare la media dei voti di ogni appello d’esame
-- 9. Contare quanti corsi di laurea ci sono per ogni dipartimento
-- 10. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
-- 11. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
-- 12. Selezionare tutti i corsi in cui insegna Fulvio Amato
-- 13. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
-- BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami