SELECT * FROM pet P
LEFT JOIN adoption A
	on P.id = A.pet_id
WHERE A.owner_id IS NULL
ORDER BY birth_date ASC
;