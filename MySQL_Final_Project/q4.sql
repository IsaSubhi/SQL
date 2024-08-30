SELECT A.pet_id, datediff(A.adoption_date, P.birth_date) AS waiting_days FROM pet P
JOIN adoption A
	on P.id = A.pet_id
ORDER BY waiting_days ASC
;