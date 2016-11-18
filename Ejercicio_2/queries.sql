
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
                                 