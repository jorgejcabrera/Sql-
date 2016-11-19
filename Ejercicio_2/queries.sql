
/* servicios que brinden especialidades sin personal idoneo */
select se1.nombre_del_servicio
from ejercicio2.servicio_especialidad se1, ejercicio2.medico_servicio ms1
where se1.nombre_del_servicio = ms1.nombre_del_servicio
group by se1.nombre_del_servicio,ms1.matricula
having ms1.matricula not in (select me.matricula
							from ejercicio2.servicio_especialidad se, ejercicio2.medico_servicio ms, ejercicio2.medico_especialidad me
							where me.nombre_de_especialidad = se.nombre_de_especialidad
							and me.matricula = ms.matricula
							and se.nombre_del_servicio = ms.nombre_del_servicio);
                                 
/* servicios que ofrezcan mas de 3 especialidades y sean atendidos por mas de dos medicos */
select se1.nombre_del_servicio
from ejercicio2.servicio_especialidad se1
group by se1.nombre_del_servicio
having count(*) > 3

intersect

select se2.nombre_del_servicio
from ejercicio2.servicio_especialidad se2, ejercicio2.medico_servicio ms
where se2.nombre_del_servicio = ms.nombre_del_servicio
group by se2.nombre_del_servicio, ms.matricula
having count(*)>2;                                 