-- В таблице Orders найти сколько заказов оформлено в каждый из городов

SELECT "ShipCity",COUNT(*) AS order_count
FROM Orders
GROUP BY "ShipCity"
ORDER BY order_count DESC;

-- На основе данных таблицы Customers найти
-- количество клиентов в каждой стране

SELECT "Country",COUNT(*) AS order_count
FROM Customers
GROUP BY "Country"
ORDER BY order_count ASC;

-- На основе данных таблицы заказов (Orders) найдите
-- сколько заказов оформлено каждый год в каждой стране

SELECT EXTRACT(YEAR FROM "OrderDate") AS order_year, "ShipCountry" AS country,COUNT(*) AS order_count
FROM Orders
GROUP BY EXTRACT(YEAR FROM "OrderDate"), "ShipCountry"
ORDER BY order_year, country;