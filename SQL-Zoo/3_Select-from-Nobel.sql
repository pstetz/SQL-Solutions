-- Problem 1

SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950;

-- Problem 2

SELECT winner
FROM nobel
WHERE yr = 1962 AND
      subject = 'Literature';

-- Problem 3

SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein';

-- Problem 4

SELECT winner
FROM nobel
WHERE yr >= 2000 AND subject = 'Peace';

-- Problem 5

SELECT yr, subject, winner
FROM nobel
WHERE yr >= 1980 and yr < 1990 AND
      subject = 'Literature';

-- Problem 6

SELECT *
FROM nobel
WHERE winner in ('Theodore Roosevelt',
                 'Woodrow Wilson',
                 'Jimmy Carter',
                 'Barack Obama');

-- Problem 7

SELECT winner
FROM nobel
WHERE winner LIKE 'John%';

-- Problem 8

SELECT yr, subject, winner
FROM nobel
WHERE (subject = 'Physics' AND yr = 1980)
   OR (subject = 'Chemistry' AND yr = 1984);

-- Problem 9

SELECT yr, subject, winner
FROM nobel
WHERE yr = 1980 AND
      NOT subject in ('Chemistry', 'Medicine');

-- Problem 10

SELECT yr, subject, winner
FROM nobel
WHERE (yr < 1910 AND subject = 'Medicine') OR
      (yr >= 2004 AND subject = 'Literature');

-- Problem 11

SELECT *
FROM nobel
WHERE winner = 'Peter Grünberg';

-- Problem 12

SELECT *
FROM nobel
WHERE winner = 'EUGENE O\'NEILL';

-- Problem 13

SELECT winner, yr, subject
FROM nobel
WHERE winner LIKE 'Sir%';

-- Problem 14

SELECT winner, subject
FROM nobel
WHERE yr = 1984
ORDER BY subject IN ('Chemistry', 'Physics'), subject, winner;
