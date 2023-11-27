SELECT ADDRESS,AGE FROM CUSTOMERS GROUP BY ADDRESS,AGE HAVING AGE >25;
-- +-----------+-----+
-- | ADDRESS   | AGE |
-- +-----------+-----+
-- | Ahmedabad |  32 |
-- | Bhopal    |  27 |
-- +-----------+-----+
-- 2 rows in set (0.001 sec)


 SELECT ADDRESS, AGE, MIN(SALARY) AS MIN_SUM  FROM CUSTOMERS GROUP BY ADDRESS, AGE HAVING AGE > 25;

-- +-----------+-----+---------+
-- | ADDRESS   | AGE | MIN_SUM |
-- +-----------+-----+---------+
-- | Ahmedabad |  32 | 2000.00 |
-- | Bhopal    |  27 | 8500.00 |
-- +-----------+-----+---------+
-- 2 rows in set (0.001 sec)


SELECT ADDRESS, AGE, SUM(SALARY) AS TOTAL_SALARY  FROM CUSTOMERS  GROUP BY ADDRESS, AGE HAVING TOTAL_SALARY >=5000  ORDER BY TOTAL_SALARY DESC;
-- +---------+-----+--------------+
-- | ADDRESS | AGE | TOTAL_SALARY |
-- +---------+-----+--------------+
-- | Indore  |  24 |     10000.00 |
-- | Bhopal  |  27 |      8500.00 |
-- | Mumbai  |  25 |      6500.00 |
-- +---------+-----+--------------+
-- 3 rows in set (0.001 sec)

SELECT AGE,COUNT(AGE) FROM CUSTOMERS GROUP BY AGE HAVING COUNT(AGE)>2;
-- Empty set (0.001 sec)

SELECT ADDRESS,AVG(SALARY) AS AVG_SAL FROM CUSTOMERS GROUP BY ADDRESS HAVING  AVG_SAL>5240;


-- +---------+--------------+
-- | ADDRESS | AVG_SAL      |
-- +---------+--------------+
-- | Bhopal  |  8500.000000 |
-- | Indore  | 10000.000000 |
-- | Mumbai  |  6500.000000 |
-- +---------+--------------+
-- 3 rows in set (0.001 sec)


SELECT ADDRESS,MAX(SALARY) AS MAX FROM CUSTOMERS GROUP BY ADDRESS HAVING MAX >5240;

-- 
