/* los nombres y sueldos de los empleados que no son pilotos pero que 
su sueldo es superior al promedio de los pilotos */
select ce.eid, ce.aid, em.sueldo
from ejercicio7.empleado em, ejercicio7.certificado ce, ejercicio7.aeronave ae
where em.eid = ce.eid
and ce.aid = ae.aid
and ae.rango not in ('Piloto')
group by ce.eid, ce.aid, em.sueldo
having em.sueldo >=ALL (select avg(em1.sueldo)
						from ejercicio7.empleado em1, ejercicio7.certificado ce1, ejercicio7.aeronave ae1
						where em1.eid = ce1.eid
						and ce1.aid = ae1.aid
						and ae1.rango = 'Piloto');

/* los nombres de los empleados que son certificados solo en aviones 
con rango de crucero superior a 2000 km. y al menos en un avión Boeing */
select *
from ejercicio7.empleado em
where em.eID in (select em1.eID
				from ejercicio7.empleado em1,ejercicio7.certificado ce1
				where em1.eID = ce1.eID
				and em1.eID not in (select distinct em2.eID
           							from ejercicio7.empleado em2, ejercicio7.certificado ce2, ejercicio7.aeronave ae2
           							where em2.eID = ce2.eID
                					and ce2.aID = ae2.aID
           							and ae2.rango not in ('Crucero'))				
				intersect
				
				select em3.eID
				from ejercicio7.empleado em3, ejercicio7.certificado ce3, ejercicio7.aeronave ae3
				where em3.eID = ce3.eID
				and ce3.aID = ae3.aID
				and ae3.aNombre = 'Boeing');