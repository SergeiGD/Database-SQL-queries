SELECT Orders.id, Orders.DateStart, Orders.DateFinished, SUM(OrderServices.Count * OrderServices.Price) AS sumResult FROM Orders
INNER JOIN OrderServices ON Orders.id = OrderServices.id_Order
GROUP BY Orders.id, Orders.DateStart, Orders.DateFinished
ORDER BY sumResult DESC
LIMIT 10