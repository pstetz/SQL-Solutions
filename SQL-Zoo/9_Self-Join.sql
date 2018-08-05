-- Problem 1

SELECT COUNT(DISTINCT id)
FROM stops;

-- Problem 2

SELECT id
FROM stops
WHERE name = 'Craiglockhart';

-- Problem 3

SELECT DISTINCT stops.id, stops.name
FROM stops JOIN route ON stops.id = route.stop
WHERE route.company = 'LRT' AND
      route.num = '4';

-- Problem 4

SELECT company, num, COUNT(*) count
FROM route WHERE stop=149 OR stop=53
GROUP BY company, num
HAVING count = 2;

-- Problem 5

SELECT a.company, a.num, stopa.id, stopb.id
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart' AND
      stopb.name='London Road';

-- Problem 6

SELECT a.company, a.num, stopa.name, stopb.name
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart' AND
      stopb.name='London Road';

-- Problem 7

SELECT DISTINCT a.company, a.num
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.id = 115 AND stopb.id = 137;

-- Problem 8

SELECT DISTINCT a.company, a.num
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name = 'Craiglockhart' AND stopb.name = 'Tollcross';

-- Problem 9

SELECT DISTINCT name, company, num
FROM stops JOIN route ON stops.id = route.stop 
WHERE route.num in (
  SELECT num
  FROM route JOIN stops ON route.stop = stops.id
  WHERE stops.name = 'Craiglockhart'
) AND
route.company = 'LRT';

-- Problem 10

SELECT DISTINCT a.num, a.company, stopb.name, c.num, c.company
FROM route a JOIN route b JOIN route c JOIN route d ON
  (a.company=b.company AND a.num=b.num AND
   c.company=d.company AND c.num=d.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
  JOIN stops stopc ON (d.stop=stopc.id)
WHERE c.stop = stopb.id AND
      stopa.name = 'Craiglockhart' AND
      stopc.name = 'Sighthill'
ORDER BY a.num, c.num, stopb.name DESC;
