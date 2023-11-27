
-- | ID | NAME     | AGE | ADDRESS   | SALARY   |
-- +----+----------+-----+-----------+----------+
-- |  1 | Ramesh   |  32 | Ahmedabad |  2000.00 |
-- |  2 | Khilan   |  25 | Delhi     |  1500.00 |
-- |  3 | Kaushik  |  23 | Kota      |  2000.00 |
-- |  4 | Chaitali |  25 | Mumbai    |  6500.00 |
-- |  5 | Hardik   |  27 | Bhopal    |  8500.00 |
-- |  6 | Komal    |  22 | Hyderabad |  4500.00 |
-- |  7 | Muffy    |  24 | Indore    | 10000.00 |
-- +----+----------+-----+-----------+----------+

-- +-----+---------------------+-------------+--------+
-- | OID | DATE                | CUSTOMER_ID | AMOUNT |
-- +-----+---------------------+-------------+--------+
-- | 100 | 2009-10-08 00:00:00 |           3 |   1500 |
-- | 101 | 2009-11-20 00:00:00 |           2 |   1560 |
-- | 102 | 2009-10-08 00:00:00 |           3 |   3000 |
-- | 103 | 2008-05-20 00:00:00 |           4 |   2060 |
-- +-----+---------------------+-------------+--------+

SELECT ID, NAME, AMOUNT, DATE
FROM CUSTOMERS
INNER JOIN ORDERS
ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID;

-- +----+----------+--------+---------------------+
-- | ID | NAME     | AMOUNT | DATE                |
-- +----+----------+--------+---------------------+
-- |  3 | Kaushik  |   1500 | 2009-10-08 00:00:00 |
-- |  2 | Khilan   |   1560 | 2009-11-20 00:00:00 |
-- |  3 | Kaushik  |   3000 | 2009-10-08 00:00:00 |
-- |  4 | Chaitali |   2060 | 2008-05-20 00:00:00 |


-- Here, we are retrieving the ID and NAME from the
--  CUSTOMERS table and DATE and AMOUNT from the ORDERS table
-- where the amount paid is higher than 2000.

SELECT ID,NAME,DATE,AMOUNT FROM CUSTOMERS INNER JOIN ORDERS ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID WHERE ORDERS.AMOUNT > 2000.00;
-- +----+----------+---------------------+--------+
-- | ID | NAME     | DATE                | AMOUNT |
-- +----+----------+---------------------+--------+
-- |  3 | Kaushik  | 2009-10-08 00:00:00 |   3000 |
-- |  4 | Chaitali | 2008-05-20 00:00:00 |   2060 |
-- +----+----------+-------------