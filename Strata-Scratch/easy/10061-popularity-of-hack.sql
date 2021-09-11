SELECT location, AVG(popularity)
FROM facebook_hack_survey s INNER JOIN
  facebook_employees e ON s.employee_id = e.id
GROUP BY location;
