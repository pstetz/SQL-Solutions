SELECT
  ROW_NUMBER() OVER (ORDER BY color, name) AS unique_number,
  name, color
FROM cats
