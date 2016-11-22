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
                     