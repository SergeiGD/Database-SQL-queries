SELECT Orders.id, Orders.DateStart, Clients.Name, Clients.PhoneNum FROM Orders
INNER JOIN Products ON Products.id = Orders.id_Product
INNER JOIN Clients ON Clients.id = Products.id_Client AND Clients.PhoneNum LIKE '+7999%'