
-- to rename column name
 ALTER TABLE EMPLOYEE CHANGE SALARY Salary INT;

--  TO Change datatype and other attributes of a column
 ALTER TABLE EMPLOYEE MODIFY Salary varchar(50) NOT NULL;
 --multiple columns
  ALTER TABLE EMPLOYEE  MODIFY Salary varchar(50) NOT NULL,Modify Department varchar(50) NOT NULL;

  --drop a column 
  ALTER TABLE EMPLOYEE DROP COLUMN Age;

  --RENAME COLUMN 
  ALTER TABLE EMPLOYEE RENAME COLUMN SALary TO Salary; -- salary is the new name

  --RENAME TABLE 
  ALTER TABLE OLDNAME RENAME NEWNAME;