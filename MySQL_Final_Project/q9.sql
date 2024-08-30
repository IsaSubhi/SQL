SELECT O.* FROM owner O
LEFT JOIN adoption A
	on O.id = A.owner_id
WHERE A.owner_id IS NULL
;