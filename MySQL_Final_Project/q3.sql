SELECT  * /*count(A.pet_id) as pets*/ FROM adoption
WHERE (adoption_date BETWEEN '2016-01-01' AND '2018-01-01')
;