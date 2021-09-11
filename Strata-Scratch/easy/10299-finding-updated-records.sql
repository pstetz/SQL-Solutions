SELECT id, first_name, last_name, MAX(salary) AS current_salary, department_id
FROM ms_employee_salary
GROUP BY id, first_name, last_name, department_id
ORDER BY id ASC;
