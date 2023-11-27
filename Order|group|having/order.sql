SELECT * FROM EMPLOYEE
ORDER BY Salary;

-- +----+-------+-------------------+----------+------------+--------------+-----------+
-- | Id | Name  | Designation       | Salary   | Experience | Department   | Address   |
-- +----+-------+-------------------+----------+------------+--------------+-----------+
-- |  1 | MEKHA | SNR SOFTWARE ENGG | 5000000  |         10 | DEVELOPMENT  | BANGALORE |
-- |  2 | Medha | DESIGNER          | 60000000 |          5 | SOFTWARE ENG | HYDERABAD |
-- |  4 | JOHN  | DEVLOPER          | 60000000 |         10 | SOFTWARE ENG | UK        |
-- |  3 | JACK  | DESIGNER          | 70000000 |          9 | SOFTWARE ENG | USA       |
-- +----+-------+-------------------+----------+------------+--------------+-----------+

SELECT * FROM EMPLOYEE
ORDER BY Salary DESC;

-- +----+-------+-------------------+----------+------------+--------------+-----------+
-- | Id | Name  | Designation       | Salary   | Experience | Department   | Address   |
-- +----+-------+-------------------+----------+------------+--------------+-----------+
-- |  3 | JACK  | DESIGNER          | 70000000 |          9 | SOFTWARE ENG | USA       |
-- |  2 | Medha | DESIGNER          | 60000000 |          5 | SOFTWARE ENG | HYDERABAD |
-- |  4 | JOHN  | DEVLOPER          | 60000000 |         10 | SOFTWARE ENG | UK        |
-- |  1 | MEKHA | SNR SOFTWARE ENGG | 5000000  |         10 | DEVELOPMENT  | BANGALORE |
-- +----+-------+-------------------+----------+------------+--------------+-----------+


SELECT * FROM EMPLOYEE
ORDER BY Salary,Experience;


-- +----+-------+-------------------+----------+------------+--------------+-----------+
-- | Id | Name  | Designation       | Salary   | Experience | Department   | Address   |
-- +----+-------+-------------------+----------+------------+--------------+-----------+
-- |  1 | MEKHA | SNR SOFTWARE ENGG | 5000000  |         10 | DEVELOPMENT  | BANGALORE |
-- |  2 | Medha | DESIGNER          | 60000000 |          5 | SOFTWARE ENG | HYDERABAD |
-- |  4 | JOHN  | DEVLOPER          | 60000000 |         10 | SOFTWARE ENG | UK        |
-- |  3 | JACK  | DESIGNER          | 70000000 |          9 | SOFTWARE ENG | USA       |
-- +----+-------+-------------------+----------+------------+--------------+-----------+

SELECT * FROM EMPLOYEE
ORDER BY Salary DESC,Experience;

-- +----+-------+-------------------+----------+------------+--------------+-----------+
-- | Id | Name  | Designation       | Salary   | Experience | Department   | Address   |
-- +----+-------+-------------------+----------+------------+--------------+-----------+
-- |  3 | JACK  | DESIGNER          | 70000000 |          9 | SOFTWARE ENG | USA       |
-- |  2 | Medha | DESIGNER          | 60000000 |          5 | SOFTWARE ENG | HYDERABAD |
-- |  4 | JOHN  | DEVLOPER          | 60000000 |         10 | SOFTWARE ENG | UK        |
-- |  1 | MEKHA | SNR SOFTWARE ENGG | 5000000  |         10 | DEVELOPMENT  | BANGALORE |
+----+-------+-------------------+----------+------------+--------------+-----------+