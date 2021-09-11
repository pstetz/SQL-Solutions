SELECT name, breed,
  SUM(weight) OVER (
    PARTITION BY breed ORDER BY name
    ROWS UNBOUNDED PRECEDING
  ) AS running_total_weight
FROM cats
ORDER BY breed, name;
