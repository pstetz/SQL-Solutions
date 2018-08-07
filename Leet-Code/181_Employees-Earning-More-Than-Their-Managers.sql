SELECT emp.name as Employee
FROM employee emp JOIN employee man ON emp.managerid = man.id
WHERE emp.salary > man.salary;
