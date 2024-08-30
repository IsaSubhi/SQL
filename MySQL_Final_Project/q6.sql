SELECT P.kind, count(P.kind) kind_count FROM pet P
JOIN adoption A
	on P.id = A.pet_id
GROUP BY P.kind
ORDER BY kind_count DESC
;