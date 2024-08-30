delimiter $$

create trigger trigger_on_update_price_negative_error
before update
on product
for each row
begin
	
    if NEW.price < 0
    then 
		signal sqlstate
			value '40000'
            -- value '10000' <-- for warnings
            set message_text = 'cannot update a negative price';
	end if;
    
end $$

delimiter ;