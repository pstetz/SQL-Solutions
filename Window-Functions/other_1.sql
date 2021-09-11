SELECT
  color, ARRAY_AGG(name)
FROM cats
GROUP BY color
ORDER BY color DESC;
