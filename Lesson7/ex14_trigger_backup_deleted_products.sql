/* create a trigger as follows:
	when a product is deleted
    backup it in discontinued_product
*/

DELIMITER  $$

CREATE TRIGGER trigger_product_on_delete_save_discontinued
after delete
ON product
FOR EACH ROW
BEGIN
	
    INSERT INTO discontinued_product 
    (product_code, product_name, last_price, discontinued_date)
    values
    (OLD.product_code, OLD.product_name, OLD.price, NOW())
    ;
    
END $$

DELIMITER ;