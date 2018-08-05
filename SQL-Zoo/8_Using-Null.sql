-- Problem 1

SELECT name
FROM teacher
WHERE dept IS NULL;

-- Problem 2

SELECT teacher.name, dept.name
FROM teacher INNER JOIN dept ON (teacher.dept=dept.id);

-- Problem 3

SELECT teacher.name, dept.name
FROM teacher LEFT JOIN dept ON (teacher.dept=dept.id);

-- Problem 4

SELECT teacher.name, dept.name
FROM teacher RIGHT JOIN dept ON (teacher.dept=dept.id);

-- Problem 5

SELECT name, COALESCE(mobile, '07986 444 2266')
FROM teacher;

-- Problem 6

SELECT teacher.name, COALESCE(dept.name, 'None')
FROM teacher LEFT JOIN dept ON (teacher.dept=dept.id);

-- Problem 7

SELECT COUNT(name), COUNT(mobile)
FROM teacher;

-- Problem 8

SELECT dept.name, COUNT(teacher.name)
FROM teacher RIGHT JOIN dept ON (teacher.dept=dept.id)
GROUP BY dept.name;

-- Problem 9

SELECT teacher.name, CASE WHEN dept.id in (1, 2) THEN 'Sci'
                          ELSE 'Art'
                     END
FROM teacher LEFT JOIN dept ON (teacher.dept=dept.id);

-- Problem 10

SELECT teacher.name, CASE WHEN dept.id in (1, 2) THEN 'Sci'
                          WHEN dept.id in (3) THEN 'Art'
                          ELSE 'None'
                     END
FROM teacher LEFT JOIN dept ON (teacher.dept=dept.id);
