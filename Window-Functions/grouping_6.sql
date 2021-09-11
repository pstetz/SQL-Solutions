SELECT
  DISTINCT(breed),
  NTH_VALUE(weight, 2) OVER (
    PARTITION BY breed ORDER BY weight
    ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
  )
FROM cats
ORDER BY breed;
