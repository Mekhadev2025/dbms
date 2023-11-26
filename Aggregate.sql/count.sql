-- +----+-------+-------------------+----------+------------+--------------+-----------+
-- | Id | Name  | Designation       | Salary   | Experience | Department   | Address   |
-- +----+-------+-------------------+----------+------------+--------------+-----------+
-- |  1 | MEKHA | SNR SOFTWARE ENGG | 5000000  |         10 | DEVELOPMENT  | BANGALORE |
-- |  2 | Medha | DESIGNER          | 60000000 |          5 | SOFTWARE ENG | HYDERABAD |
-- |  3 | JACK  | DESIGNER          | 70000000 |          9 | SOFTWARE ENG | USA       |
-- |  4 | JOHN  | DEVLOPER          | 60000000 |         10 | SOFTWARE ENG | UK        |
-- +----+-------+-------------------+----------+------------+--------------+-----------+
SELECT COUNT(*) FROM EMPLOYEE;
-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        4 |
-- +----------+
-- 1 row in set (0.000 sec)

SELECT COUNT(*) FROM EMPLOYEE WHERE Experience>6;
-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        3 |
-- +----------+
-- 1 row in set (0.000 sec)