SELECT Services.id, Services.Name, Services.id_Category, SUM(OrderServices.Count) AS sumResult FROM Services
INNER JOIN OrderServices ON OrderServices.id_Service = Services.id
INNER JOIN Orders ON Orders.id = OrderServices.id_Order AND Orders.DateStart >= '2021/08/01 00:00:00' AND Orders.DateFinished < '2021/09/01 00:00:00'
GROUP BY Services.id, Services.Name,  Services.id_Category
ORDER BY sumResult DESC
LIMIT 1