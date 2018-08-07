SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary
FROM department d JOIN employee e ON d.id = e.departmentid
WHERE e.salary = (SELECT MAX(x.salary)
                  FROM employee x
                  WHERE x.departmentid = e.departmentid)
ORDER BY Salary;
