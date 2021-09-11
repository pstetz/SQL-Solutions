SELECT
  DENSE_RANK() OVER (ORDER BY age DESC) AS r,
  name, age
FROM cats
ORDER BY r, name
