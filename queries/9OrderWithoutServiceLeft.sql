SELECT Orders.id, Orders.ClientComment, Orders.DateStart FROM Orders
LEFT JOIN(
    SELECT Orders.id, Orders.ClientComment, Orders.DateStart FROM Orders
    INNER JOIN OrderServices ON OrderServices.id_Order = Orders.id
    INNER JOIN Services ON Services.id = OrderServices.id_Service AND Services.id = @servID
) as res ON res.id = Orders.id
WHERE res.id IS NULL