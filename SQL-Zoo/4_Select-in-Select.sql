-- Problem 1

SELECT name FROM world
WHERE population > (
  SELECT population FROM world
  WHERE name='Russia'
);

-- Problem 2

SELECT name
FROM world
WHERE gdp / population > (
  SELECT gdp / population
  FROM world
  WHERE name = 'United Kingdom'
) AND
continent = 'Europe';

-- Problem 3

SELECT name, continent
FROM world
WHERE continent in (
  SELECT continent
  FROM world
  WHERE name in ('Argentina', 'Australia')
)
ORDER BY name;

-- Problem 4

SELECT name, population
FROM world
WHERE population > (
  SELECT population
  FROM world
  WHERE name = 'Canada'
)
AND population < (
  SELECT population
  FROM world
  WHERE name = 'Poland'
);

-- Problem 5

SELECT name, 
       CONCAT(ROUND(100 * population / (
         SELECT population
         FROM world
         WHERE name = 'Germany'
       )), '%')
FROM world
WHERE continent = 'Europe';

-- Problem 6

SELECT name
FROM world
WHERE gdp > ALL(SELECT gdp
                 FROM world
                 WHERE continent='Europe' AND gdp > 0);

-- Problem 7

SELECT continent, name, area
FROM world x
WHERE area >= ALL(
  SELECT area
  FROM world y
  WHERE y.continent = x.continent AND
        area > 0
);

-- Problem 8

SELECT continent, name
FROM world x
WHERE name = (SELECT name
              FROM world y
              WHERE y.continent=x.continent
              LIMIT 1);
              
SELECT continent, MIN(name)
FROM world
GROUP BY continent
ORDER BY continent

-- Problem 9

SELECT name, continent, population
FROM world
WHERE continent in (
  SELECT continent
  FROM world
  GROUP BY continent
  HAVING MAX(population) <= 25000000);

-- Problem 10

SELECT name, continent
FROM world x
WHERE population > ALL(
  SELECT 3 * population
  FROM world y
  WHERE y.continent = x.continent AND
        y.name != x.name
);
