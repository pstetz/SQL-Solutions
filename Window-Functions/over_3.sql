SELECT name,
  SUM(weight) OVER (
    ORDER BY weight DESC ROWS UNBOUNDED PRECEDING
  ) AS running_total_weight
FROM cats
ORDER BY weight DESC;
