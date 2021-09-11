SELECT name,
  SUM(weight) OVER (
    ORDER BY name ROWS UNBOUNDED PRECEDING
  ) AS running_total_weight
FROM cats;
