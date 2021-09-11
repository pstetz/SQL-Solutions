select name, weight,
  AVG(weight) OVER (
    ORDER BY weight ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING
  ) AS average_weight
FROM cats
ORDER BY weight;
