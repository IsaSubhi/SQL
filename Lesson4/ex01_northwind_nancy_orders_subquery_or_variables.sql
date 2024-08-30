SELECT COUNT(*) AS nancy_order_count
FROM orders
WHERE employee_id = (
	SELECT id FROM employees 
	WHERE first_name = 'Nancy' 
	AND last_name = 'Freehafer'
	);

SET @nancy_id = (
	SELECT id
	FROM employees 
	WHERE first_name = 'Nancy' 
	AND last_name = 'Freehafer'
	);

SELECT @nancy_id := id
FROM employees 
WHERE first_name = 'Nancy' 
AND last_name = 'Freehafer'
;

SELECT COUNT(*) AS nancy_order_count
FROM orders
WHERE employee_id = @nancy_id
;
