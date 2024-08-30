select S.first_name, S.last_name, avg(G.`value`) from grade G 
join student S
using (student_id)
group by student_id
;