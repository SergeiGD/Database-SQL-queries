SELECT Employees.id, Employees.Name, count(*) FROM Employees
INNER JOIN Orders ON (Orders.id_Manager = Employees.id OR Orders.id_Master = Employees.id) AND Orders.DateStart >= '2021/09/01 00:00:00' AND Orders.DateFinished < '2021/10/01 00:00:00'
GROUP BY Employees.id, Employees.Name