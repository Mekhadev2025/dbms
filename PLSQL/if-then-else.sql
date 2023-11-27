DECLARE
   c_id customers.id%TYPE := 1;
   c_sal customers.salary%TYPE;
BEGIN
   -- Retrieve the salary for the specified id
   SELECT salary
   INTO c_sal
   FROM customers
   WHERE id = c_id;

   -- Check the salary and update accordingly
   IF c_sal <= 2000 THEN
      -- Increase salary by 1000
      UPDATE customers
      SET salary = salary + 1000
      WHERE id = c_id;

      dbms_output.put_line('Salary updated');
   ELSE
      -- Do something else if the salary is greater than 2000
      dbms_output.put_line('Salary is already high');
   END IF;
END;
/