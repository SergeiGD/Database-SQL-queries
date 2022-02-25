SELECT Services.id, Services.Name, Services.id_Category FROM Services
WHERE Services.DelTime IS NULL
EXCEPT SELECT Services.id, Services.Name, Services.id_Category FROM Services
INNER JOIN OrderServices ON OrderServices.id_Service = Services.id
INNER JOIN Orders ON Orders.id = OrderServices.id_Order AND Orders.DateStart >= '2021/09/01 00:00:00' AND Orders.DateFinished < '2021/10/01 00:00:00'