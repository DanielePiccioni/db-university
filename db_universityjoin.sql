#1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
#students, degrees

/*SELECT students.id, students.name, students.surname, degrees.name AS degree_name
FROM students
JOIN degrees ON students.degree_id = degrees.id
WHERE degrees.name = 'Corso di Laurea in Economia';*/

#2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
# degrees, departments

/*SELECT degrees.id, degrees.name, degrees.level, departments.name AS department_name
FROM degrees
JOIN departments ON degrees.department_id = departments.id
WHERE departments.name = "Dipartimento di Neuroscienze"
AND degrees.level = "Magistrale"*/

#3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
#coursesm course_teacher

SELECT courses.id, courses.name, courses.year, courses.cfu
FROM courses
JOIN course_teacher ON courses.id = course_teacher.course_id
WHERE course_teacher.teacher_id = 44;


