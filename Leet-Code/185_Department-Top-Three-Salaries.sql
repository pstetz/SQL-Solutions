SELECT d.name AS Department, e1.name AS Employee, e1.salary AS Salary
FROM employee AS e1, employee AS e2, department AS d
WHERE e1.salary <= e2.salary AND e1.departmentid = d.id AND e2.departmentid = d.id
GROUP BY d.id, e1.name
HAVING COUNT(DISTINCT e2.salary) <= 3
ORDER BY Department, Salary DESC;
