select avg(G.`value`) from grade G 
join student S
using (student_id)
where gender = 'M'
;