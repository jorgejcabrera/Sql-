
/* servicios que brinden especialidades sin personal idoneo */
select * 
from ejercicio2.servicio_especialidad se1
where se1.nombre_del_servicio in (select se2.nombre_del_servicio
                                 from ejercicio2.servicio_especialidad se2, ejercicio2.medico_servicio ms, ejercicio2.medico_especialidad me
                                 where se2.nombre_del_servicio = ms.nombre_del_servicio
                                 and ms.matricula = me.matricula
                                 and se2.nombre_de_especialidad = me.nombre_de_especialidad);
                                 