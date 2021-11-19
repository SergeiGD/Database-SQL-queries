SELECT Orders.id, Orders.DateStart FROM Orders
WHERE Orders.id_Master != @masterID AND Orders.id_Master IS NOT NULL