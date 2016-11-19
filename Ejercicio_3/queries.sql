/* servicios que no dispongan de traumatologos */
select ms1.nombre_del_servicio
from ejercicio3.medico_servicio ms1
group by ms1.nombre_del_servicio
having ms1.nombre_del_servicio not in (select ms.nombre_del_servicio
									from ejercicio3.medico_servicio ms, ejercicio3.medico_especialidad me
									where me.matricula = ms.matricula
									and me.nombre_de_especialidad = 'Traumatologo');
                                    
/* medicos que tenga mas especialidades */
select me.matricula
from ejercicio3.medico_especialidad me
group by me.matricula
having count(*) >= ALL (select count(*)
                       from ejercicio3.medico_especialidad me1
                       group by me1.matricula);