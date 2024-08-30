SELECT O.id, O.fname, O.lname, count(O.id) AS cats_owned FROM owner O
JOIN adoption A
	on O.id = A.owner_id
JOIN pet P
	on P.id = A.pet_id
WHERE O.gender = 'F' AND P.kind = 'cat'
GROUP BY O.id
ORDER BY cats_owned DESC
;