SELECT company, continent
FROM forbes_global_2010_2014
WHERE profits = (SELECT MAX(profits) FROM forbes_global_2010_2014);
