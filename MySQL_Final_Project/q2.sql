SELECT * /*count(P.id) as unadopted_pets*/ FROM pet P
LEFT JOIN adoption A
	on P.id = A.pet_id
WHERE A.owner_id IS NULL
;