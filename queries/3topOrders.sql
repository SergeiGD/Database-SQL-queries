SELECT Orders.id, Orders.DateStart, Orders.DateFinished, SUM(OrderServices.Count * Services.Price) AS sumResult FROM Orders
INNER JOIN OrderServices ON Orders.id = OrderServices.id_Order
INNER JOIN Services ON Services.id = OrderServices.id_Service
GROUP BY Orders.id, Orders.DateStart, Orders.DateFinished
ORDER BY sumResult DESC
LIMIT 10