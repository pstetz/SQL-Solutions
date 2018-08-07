SELECT DISTINCT a.id, a.date, a.people
FROM stadium a, stadium b, stadium c
WHERE (a.people >= 100 AND b.people >= 100 AND c.people >= 100) AND
      ((a.id - b.id = 1 AND b.id - c.id = 1) OR
       (b.id - c.id = 1 AND c.id - a.id = 1) OR
       (c.id - a.id = 1 AND a.id - b.id = 1))
ORDER BY date;
