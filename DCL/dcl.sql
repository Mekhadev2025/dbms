-- grant 
GRANT SELECT, INSERT
ON product_details
TO Icona;  

GRANT ALL PRIVILEGES 
ON product_stock    
TO Ancy;    

-- //Gives all privilege access to anybody working with the database
GRANT ALL
ON product_stock
TO PUBLIC;


-- //Retains access from Icona to SELECT and INSERT
REVOKE SELECT, INSERT
ON product_details
FROM Icona; 


-- // Retains access from anybody using the database
REVOKE ALL
ON product_stock
FROM PUBLIC;