SELECT Services.id, Services.Name, Categories.Name AS Cat, SUM(OrderServices.Count) AS Count FROM Services
INNER JOIN OrderServices ON OrderServices.id_Service = Services.id
INNER JOIN Orders ON Orders.id = OrderServices.id_Order AND Orders.DateStart >= '2021/08/01 00:00:00' AND Orders.DateFinished < '2021/09/01 00:00:00'
INNER JOIN Categories ON Categories.id = Services.id_Category
GROUP BY Services.id, Services.Name,  Categories.Name
ORDER BY SUM(OrderServices.Count) DESC
LIMIT 1