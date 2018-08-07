SELECT IF(id = (SELECT COUNT(*) FROM seat) AND id % 2 = 1,
          id,
          IF(id % 2 = 0, id - 1, id + 1)) AS id, student
FROM seat          
ORDER BY id;
