--TASK 1
select count(*) as orders_in_delivery, c.login as courier from "Orders" o
    left join "Couriers" c on o."courierId" = c.id
    where o."inDelivery" is true group by (c.login);

--TASK 2
SELECT track,
               CASE
                          WHEN finished = true THEN 2
                          WHEN cancelled = true THEN -1
                          WHEN "inDelivery" = true THEN 1
                          ELSE 0
               END AS status
FROM "Orders";

