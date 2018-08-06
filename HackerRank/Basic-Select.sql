-- Revising the Select Query I
-- (Oracle)

SELECT *
FROM city
WHERE countrycode='USA' AND population > 100000;

-- Revising the Select Query I
-- (Oracle)

SELECT name
FROM city
WHERE countrycode = 'USA' AND population > 120000;

-- Select All
-- (Oracle)

SELECT *
FROM city;

-- Select By ID
-- (Oracle)

SELECT *
FROM city
WHERE id = 1661;

-- Japanese Cities' Attributes
-- (Oracle)

SELECT *
FROM city
WHERE countrycode = 'JPN';

-- Japanese Cities' Names
-- (Oracle)

SELECT name
FROM city
WHERE countrycode = 'JPN';

-- Weather Observation Station 1
-- (Oracle)

SELECT city, state
FROM station;

-- Weather Observation Station 3
-- (Oracle)

SELECT DISTINCT city
FROM station
WHERE MOD(id, 2) = 0;

-- Weather Observation Station 4

SELECT COUNT(city) - COUNT(DISTINCT city)
FROM station;

-- Weather Observation Station 5
-- (MySQL)

SELECT city, LENGTH(city)
FROM station
ORDER BY LENGTH(city), city
LIMIT 1;

SELECT city, LENGTH(city)
FROM station
ORDER BY LENGTH(city) DESC, city
LIMIT 1;

-- Weather Observation Station 6
-- (MySQL)

SELECT DISTINCT city
FROM station
WHERE LEFT(city, 1) = 'a' OR
      LEFT(city, 1) = 'e' OR
      LEFT(city, 1) = 'i' OR
      LEFT(city, 1) = 'o' OR
      LEFT(city, 1) = 'u';

-- Weather Observation Station 7
-- (MySQL)

SELECT DISTINCT city
FROM station
WHERE RIGHT(city, 1) = 'a' OR
      RIGHT(city, 1) = 'e' OR
      RIGHT(city, 1) = 'i' OR
      RIGHT(city, 1) = 'o' OR
      RIGHT(city, 1) = 'u';

-- Weather Observation Station 8
-- (MySQL)

SELECT DISTINCT city
FROM station
WHERE RIGHT(city, 1) in ('a', 'e', 'i', 'o', 'u')AND
      LEFT(city, 1) in ('a', 'e', 'i', 'o', 'u');

-- Weather Observation Station 9
-- (MySQL)

SELECT DISTINCT city
FROM station
WHERE LEFT(city, 1) NOT IN ('a', 'e', 'i', 'o', 'u');

-- Weather Observation Station 10
-- (MySQL)

SELECT DISTINCT city
FROM station
WHERE RIGHT(city, 1) NOT IN ('a', 'e', 'i', 'o', 'u');

-- Weather Observation Station 11
-- (MySQL)

SELECT DISTINCT city
FROM station
WHERE RIGHT(city, 1) NOT IN ('a', 'e', 'i', 'o', 'u') OR
      LEFT(city, 1) NOT IN ('a', 'e', 'i', 'o', 'u');

-- Weather Observation Station 12
-- (MySQL)

SELECT DISTINCT city
FROM station
WHERE RIGHT(city, 1) NOT IN ('a', 'e', 'i', 'o', 'u') AND
      LEFT(city, 1) NOT IN ('a', 'e', 'i', 'o', 'u');

-- Higher Than 75 Marks
-- (MySQL)

SELECT name
FROM students
WHERE marks > 75
ORDER BY RIGHT(name, 3), id;

-- Employee Names
-- (MySQL)

SELECT name
FROM employee
ORDER BY name;

-- Employee Salaries
-- (MySQL)

SELECT name
FROM employee
WHERE months < 10 AND
      salary > 2000
ORDER BY employee_id;