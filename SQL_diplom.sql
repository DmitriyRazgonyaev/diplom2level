--TASK 1
SELECT c.login, COUNT(o.id) AS "number_of_orders"
FROM "Couriers" AS c
LEFT JOIN "Orders" AS o ON c.id = o."courierId"
WHERE o."inDelivery" = true
GROUP BY c.login;

--Итоговый запрос для командной строки:
SELECT c.login, COUNT(o.id) AS "number_of_orders" FROM "Couriers" AS c LEFT JOIN "Orders" AS o ON c.id = o."courierId"WHERE o."inDelivery" = true
GROUP BY c.login;

--TASK 2
SELECT track,
               CASE
                          WHEN finished = true THEN 2
                          WHEN cancelled = true THEN -1
                          WHEN "inDelivery" = true THEN 1
                          ELSE 0
               END AS status
FROM "Orders";

--Итоговый запрос для командной строки:
SELECT track, CASE WHEN finished = true THEN 2 WHEN cancelled = true THEN -1 WHEN "inDelivery" = true THEN 1 ELSE 0 END AS status FROM "Orders";