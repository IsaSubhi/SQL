set @M_AVG = (select avg(G.`value`) from grade G 
join student S
using (student_id)
where gender = 'M')
;
set @F_AVG = (select avg(G.`value`) from grade G 
join student S
using (student_id)
where gender = 'F')
;

select if (@F_AVG > @M_AVG, 0,1);
