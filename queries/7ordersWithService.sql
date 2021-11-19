SELECT Orders.id, Orders.ClientComment, Services.Name FROM Orders
INNER JOIN OrderServices ON OrderServices.id_Order = Orders.id
INNER JOIN Services ON Services.id = OrderServices.id_Service AND Services.Name LIKE '%' || @servName || '%'