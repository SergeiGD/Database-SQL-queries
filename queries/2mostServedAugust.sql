SELECT res.id, res.Name, MAX(res.countResult) AS 'Count' FROM
(
SELECT Employees.id, Employees.Name, Count(*) countResult from Employees
INNER JOIN Orders ON Orders.id_Manager = Employees.id AND Orders.DateStart >= '2021/09/01 00:00:00' AND Orders.DateFinished < '2021/10/01 00:00:00'
GROUP BY Employees.id, Employees.Name
) res