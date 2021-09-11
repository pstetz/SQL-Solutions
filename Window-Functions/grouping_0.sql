SELECT name, weight,
  NTILE(4) OVER (ORDER BY weight)
FROM cats
ORDER BY weight;
