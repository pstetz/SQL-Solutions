SELECT
  name, color,
  MIN(weight) OVER (PARTITION BY color)
FROM cats
ORDER BY color, name;

SELECT
  name, color,
  FIRST_VALUE(weight) OVER (PARTITION BY color ORDER BY weight)
FROM cats
ORDER BY color, name;
