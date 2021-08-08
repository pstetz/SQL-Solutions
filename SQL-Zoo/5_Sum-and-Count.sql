-- Problem 1

SELECT SUM(population)
FROM world;

-- Problem 2

SELECT DISTINCT continent
FROM world;

-- Problem 3

SELECT SUM(gdp)
FROM world
WHERE continent='Africa';

-- Problem 4

SELECT COUNT(*)
FROM world
WHERE area > 1000000;

-- Problem 5

SELECT SUM(population)
FROM world
WHERE name in ('Estonia', 'Latvia', 'Lithuania');

-- Problem 6

SELECT continent, COUNT(*)
FROM world
GROUP BY continent;

-- Problem 7

SELECT a.continent, COUNT(a.name)
FROM (
  SELECT continent, name
  FROM world
  WHERE population >= 10000000
) a
GROUP BY a.continent;

SELECT continent, COUNT(name)
FROM world
WHERE population > 10000000
GROUP BY continent

-- Problem 8

SELECT continent
FROM world
GROUP BY continent
HAVING SUM(population) >= 100000000;
