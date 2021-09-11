SELECT
  breed, AVG(weight) AS average_weight,
  AVG(weight) FILTER (WHERE age > 1) AS average_old_weight
FROM cats
GROUP BY breed
ORDER BY breed;
