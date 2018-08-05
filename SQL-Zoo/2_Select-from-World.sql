-- Problem 1

SELECT name, continent, population
FROM world;

-- Problem 2

SELECT name
FROM world
WHERE population >= 200000000;

-- Problem 3

SELECT name, gdp / population
FROM world
WHERE population >= 200000000;

-- Problem 4

SELECT name, population / 1000000
FROM world
WHERE continent = 'South America';

-- Problem 5

SELECT name, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy');

-- Problem 6

SELECT name
FROM world
WHERE name LIKE 'United%';

-- Problem 7

SELECT  name, population, area
FROM world
WHERE population > 250000000 OR
      area > 3000000;

-- Problem 8

SELECT name, population, area
FROM world
WHERE (population > 250000000 AND area < 3000000) OR
      (population < 250000000 AND area > 3000000);

-- Problem 9

SELECT name, ROUND(population / 1000000, 2), ROUND(gdp / 1000000000, 2)
FROM world
WHERE  continent = 'South America';

-- Problem 10

SELECT name, ROUND(gdp / (population * 1000)) * 1000
FROM world
WHERE gdp >= 1000000000000;

-- Problem 11

SELECT name, capital
FROM world
WHERE LENGTH(name) = LENGTH(capital);

-- Problem 12

SELECT name, capital
FROM world
WHERE name != capital AND
      LEFT(name, 1) = LEFT(capital, 1);

-- Problem 13

SELECT name
FROM world
WHERE name LIKE '%a%' AND
      name LIKE '%e%' AND
      name LIKE '%i%' AND
      name LIKE '%o%' AND
      name LIKE '%u%' AND
      name NOT LIKE '% %';
