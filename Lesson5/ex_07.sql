select city, avg(G.`value`) from grade G 
join student S
using (student_id)
group by (city)
;