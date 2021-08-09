-- Problem 1

SELECT id, title
FROM movie
WHERE yr=1962;

-- Problem 2

SELECT yr
FROM movie
WHERE title = 'Citizen Kane';

-- Problem 3

SELECT id, title, yr
FROM movie
WHERE title LIKE '%Star Trek%';

-- Problem 4

SELECT id
FROM actor
WHERE name = 'Glenn Close';

-- Problem 5

SELECT id
FROM movie
WHERE title = 'Casablanca';

-- Problem 6

SELECT name
FROM actor JOIN casting ON id = actorid
WHERE casting.movieid = (
  SELECT id 
  FROM movie
  WHERE title = 'Casablanca'
)

SELECT name
FROM movie JOIN (
  SELECT *
  FROM actor JOIN casting ON actor.id = casting.actorid 
) x ON x.movieid = movie.id
WHERE movie.id = 11768;

-- Problem 7

SELECT name
FROM movie JOIN (
  SELECT *
  FROM actor JOIN casting ON actor.id = casting.actorid 
) x ON x.movieid = movie.id
WHERE movie.title = 'Alien';

-- Problem 8

SELECT movie.title
FROM movie RIGHT JOIN (
  SELECT *
  FROM actor JOIN casting ON actor.id = casting.actorid 
) x ON x.movieid = movie.id
WHERE x.name = 'Harrison Ford';

-- Problem 9

SELECT movie.title
FROM movie RIGHT JOIN (
  SELECT *
  FROM actor JOIN casting ON actor.id = casting.actorid 
) x ON x.movieid = movie.id
WHERE x.name = 'Harrison Ford' AND x.ord != 1;

-- Problem 10

SELECT movie.title, x.name
FROM movie RIGHT JOIN (
  SELECT *
  FROM actor JOIN casting ON actor.id = casting.actorid 
) x ON x.movieid = movie.id
WHERE x.ord = 1 AND movie.yr = 1962;

-- Problem 11

SELECT yr,COUNT(title)
FROM movie JOIN casting ON movie.id=movieid
           JOIN actor   ON actorid=actor.id
WHERE name = 'John Travolta'
GROUP BY yr
HAVING COUNT(title) = (
  SELECT MAX(title_count)
  FROM (
    SELECT yr, COUNT(title) AS title_count
    FROM movie JOIN casting ON movie.id=movieid
               JOIN actor   ON actorid=actor.id
    WHERE name='John Travolta'
    GROUP BY yr
  ) AS t
)

-- Problem 12

SELECT title, name
FROM movie JOIN casting ON movie.id=movieid
           JOIN actor   ON actorid=actor.id
WHERE movie.id IN (
  SELECT movieid
  FROM actor JOIN casting ON actor.id = casting.actorid 
  WHERE name = 'Julie Andrews'
) AND
casting.ord = 1;

-- Problem 13

SELECT name
FROM (
  SELECT actor.name name, movie.id id
  FROM movie JOIN casting ON movie.id=movieid
             JOIN actor   ON actorid=actor.id
  WHERE casting.ord = 1
) x
GROUP BY name
HAVING COUNT(id) > 29;

-- Problem 14

SELECT title, COUNT(actorid) Actors
FROM movie JOIN casting ON movie.id=movieid
           JOIN actor   ON actorid=actor.id
GROUP BY title, yr
HAVING yr = 1978
ORDER BY Actors DESC, title;

-- Problem 15

SELECT name
FROM actor JOIN casting ON actorid=actor.id
WHERE movieid in (
  SELECT movieid
  FROM movie JOIN casting ON movie.id=movieid
             JOIN actor   ON actorid=actor.id
  WHERE name = 'Art Garfunkel'
) AND
name != 'Art Garfunkel';
