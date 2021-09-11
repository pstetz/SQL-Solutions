SELECT
  name, weight,
  COALESCE(
    weight -
    LAG(weight, 1) OVER (ORDER BY weight), 0
  ) AS weight_to_lose
FROM cats
ORDER BY weight;
