SELECT DISTINCT a.num as ConsecutiveNums
FROM logs a, logs b, logs c
WHERE (a.num = b.num AND b.num = c.num) AND
      (a.id + 1 = b.id AND b.id + 1 = c.id);
