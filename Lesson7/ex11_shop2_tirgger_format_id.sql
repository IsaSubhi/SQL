/* create a trigger for shop2's product
   whenever we insert an id it will be changed
   to the following format:
   'P' followed by '0' many times followed by the ID inserted
   
   for example if we insert '123' it will change to:
   'P000000123'
   
   we can use LPAD and CONCAT functions to achieve this result
*/
   
DELIMITER $$

CREATE TRIGGER trigger_product_format_id
BEFORE INSERT
ON product
FOR EACH ROW
BEGIN 
	SET NEW.product_code = CONCAT('P', LPAD(NEW.product_code, 9, '0'));
END

DELIMITER ;