SELECT
  RANK() OVER (ORDER BY weight DESC) AS ranking,
  weight, name
FROM cats
ORDER BY ranking, name
