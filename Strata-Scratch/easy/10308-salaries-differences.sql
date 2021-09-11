WITH max_salaries AS (
  SELECT department, MAX(salary) AS max_salary
  FROM db_employee e JOIN db_dept d ON e.department_id = d.id
  GROUP BY d.department
)

SELECT
  (SELECT max_salary
     FROM max_salaries
     WHERE department = 'marketing'
  ) -
  (SELECT max_salary
     FROM max_salaries
     WHERE department = 'engineering'
  ) AS salary_difference;
