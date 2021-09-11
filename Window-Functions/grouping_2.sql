SELECT
  name, breed, weight,
  COALESCE(
    weight -
    LAG(weight, 1) OVER (PARTITION BY breed ORDER BY weight), 0
  )
FROM cats
ORDER BY weight;
