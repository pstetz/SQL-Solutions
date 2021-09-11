SELECT
  name, weight, breed,
  COALESCE(
    CAST(LEAD(weight, 1) OVER (PARTITION BY breed ORDER BY weight) AS VARCHAR),
  'fattest cat') AS next_heaviest
FROM cats
ORDER BY weight;
