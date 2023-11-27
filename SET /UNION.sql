--table 1 
-- +----+----------+-----+-----------+----------+
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
-- 7 rows in set (0.000 sec)


--table 2 
-- +-----+---------------------+-------------+--------+
-- | OID | DATE                | CUSTOMER_ID | AMOUNT |
-- +-----+---------------------+-------------+--------+
-- | 100 | 2009-10-08 00:00:00 |           3 |   1500 |
-- | 101 | 2009-11-20 00:00:00 |           2 |   1560 |
-- | 102 | 2009-10-08 00:00:00 |           3 |   3000 |
-- | 103 | 2008-05-20 00:00:00 |           4 |   2060 |
-- +-----+---------------------+-------------+--------+
-- 4 rows in set (0.000 sec)

--COMBINE THE SALARY AND AMOUNT COLUMNS 
SELECT SALARY FROM CUSTOMERS 
UNION SELECT AMOUNT FROM ORDERS;

-- +----------+
-- | SALARY   |
-- +----------+
-- |  2000.00 |
-- |  1500.00 |
-- |  6500.00 |
-- |  8500.00 |
-- |  4500.00 |
-- | 10000.00 |
-- |  1560.00 |
-- |  3000.00 |
-- |  2060.00 |
-- +----------+
-- 9 rows in set (0.001 sec)


SELECT AMOUNT FROM ORDERS UNION  
SELECT SALARY FROM CUSTOMERS ;
-- +----------+
-- | AMOUNT   |
-- +----------+
-- |  1500.00 |
-- |  1560.00 |
-- |  3000.00 |
-- |  2060.00 |
-- |  2000.00 |
-- |  6500.00 |
-- |  8500.00 |
-- |  4500.00 |
-- | 10000.00 |
-- +----------+
-- 9 rows in set (0.000 sec)

 SELECT  ID, NAME, AMOUNT, DATE FROM CUSTOMERS
    -> LEFT JOIN ORDERS ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID
    -> UNION
    -> SELECT  ID, NAME, AMOUNT, DATE FROM CUSTOMERS
    -> RIGHT JOIN ORDERS ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID;
-- +------+----------+--------+---------------------+
-- | ID   | NAME     | AMOUNT | DATE                |
-- +------+----------+--------+---------------------+
-- |    3 | Kaushik  |   1500 | 2009-10-08 00:00:00 |
-- |    2 | Khilan   |   1560 | 2009-11-20 00:00:00 |
-- |    3 | Kaushik  |   3000 | 2009-10-08 00:00:00 |
-- |    4 | Chaitali |   2060 | 2008-05-20 00:00:00 |
-- |    1 | Ramesh   |   NULL | NULL                |
-- |    5 | Hardik   |   NULL | NULL                |
-- |    6 | Komal    |   NULL | NULL                |
-- |    7 | Muffy    |   NULL | NULL                |
-- +------+----------+--------+---------------------+

-- n the following query, we are retrieving the id's of the customers where id is greater than 5 and 2 from the 'CUSTOMERS' and 'ORDERS' tables respectively −

SELECT ID FROM CUSTOMERS WHERE ID>5 
UNION 
SELECT CUSTOMER_ID FROM ORDERS WHERE CUSTOMER_ID >2;

SELECT ID, SALARY FROM CUSTOMERS WHERE ID > 5
UNION
SELECT CUSTOMER_ID, AMOUNT FROM ORDERS WHERE CUSTOMER_ID > 2;
