SELECT
  name, weight,
  CAST(
    100 * CUME_DIST() OVER (ORDER BY weight) AS INT
  ) AS percent
FROM cats
