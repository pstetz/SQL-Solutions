SELECT
  name, weight,
  100 * PERCENT_RANK() OVER (ORDER BY weight) AS percent
FROM cats
ORDER BY weight
