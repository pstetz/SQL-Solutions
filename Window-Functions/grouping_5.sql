SELECT
  name, weight,
  COALESCE(
    NTH_VALUE(weight, 4) OVER (ORDER BY weight),
    99.9) AS imagined_weight
FROM cats
ORDER BY weight;
