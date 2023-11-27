 SELECT * FROM STUDENTS;
-- +----+--------+-----------+-----+----------+
-- | ID | NAME   | SUBJECT   | AGE | HOBBY    |
-- +----+--------+-----------+-----+----------+
-- |  1 | Naina  | Maths     |  24 | Cricket  |
-- |  2 | Varun  | Physics   |  26 | Football |
-- |  3 | Dev    | Maths     |  23 | Cricket  |
-- |  4 | Priya  | Physics   |  25 | Cricket  |
-- |  5 | Aditya | Chemistry |  21 | Cricket  |
-- |  6 | Kalyan | Maths     |  30 | Football |
-- |  7 | Aditya | Chemistry |  21 | Cricket  |
-- |  8 | Kalyan | Chemistry |  32 | Cricket  |
-- +----+--------+-----------+-----+----------+

SELECT * FROM STUDENTS_HOBBY;
-- +----+---------+----------+-----+
-- | ID | NAME    | HOBBY    | AGE |
-- +----+---------+----------+-----+
-- |  1 | Vijay   | Cricket  |  18 |
-- |  2 | Varun   | Football |  26 |
-- |  3 | Surya   | Cricket  |  19 |
-- |  4 | Karthik | Cricket  |  25 |
-- |  5 | Sunny   | Football |  26 |
-- |  6 | Dev     | Cricket  |  23 |
-- +----+---------+----------+-----+
-- 6 rows in set (0.000 sec)


SELECT NAME, HOBBY, AGE FROM STUDENTS
    -> EXCEPT 
    -> SELECT NAME, HOBBY, AGE FROM STUDENTS_HOBBY;
-- +--------+----------+-----+
-- | NAME   | HOBBY    | AGE |
-- +--------+----------+-----+
-- | Naina  | Cricket  |  24 |
-- | Priya  | Cricket  |  25 |
-- | Aditya | Cricket  |  21 |
-- | Kalyan | Football |  30 |
-- | Kalyan | Cricket  |  32 |
-- +--------+----------+-----+
-- 5 rows in set (0.001 sec)

