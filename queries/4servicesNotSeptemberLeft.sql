SELECT Services.id, Services.Name, Services.id_Category FROM Services
LEFT JOIN
(
    SELECT Services.id, Services.Name, Services.id_Category FROM Services
    INNER JOIN OrderServices ON OrderServices.id_Service = Services.id
    INNER JOIN Orders ON Orders.id = OrderServices.id_Order AND Orders.DateStart >= '2021/09/01 00:00:00' AND Orders.DateFinished < '2021/10/01 00:00:00'
) as res ON res.id = Services.id
WHERE res.id IS NULL AND Services.DelTime IS NULL
