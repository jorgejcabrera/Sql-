/* datos de los caballos que hayan ganado mas de 3 carreras */
select co.nombre_caballo 
from ejercicio5.corredores co
where co.posicion = 1
group by co.nombre_caballo
having count(*) > 3;

/* nombre de caballos, datos de encuentro y carrera, donde haya salido en 1ra pos, y solo para aquellos caballos 
que nunca hayan salido detras de la tercera posicion, ni hayan ganado mas de 5 veces */
select co.nro_encuentro, co.nro_de_carrera, co.nombre_caballo
from ejercicio5.corredores co, ejercicio5.carreras ca, ejercicio5.encuentros en
where co.nro_encuentro = ca.nro_encuentro
and co.nro_de_carrera = ca.nro_de_carrera
and co.nro_encuentro = en.nro_encuentro
and co.posicion = 1
and co.nombre_caballo in (select distinct co1.nombre_caballo
						  from ejercicio5.corredores co1
						  where co1.nombre_caballo not in (select distinct co2.nombre_caballo
						  								from ejercicio5.corredores co2
						 								where co2.posicion > 3)
                          intersect
                          select co3.nombre_caballo
                          from ejercicio5.corredores co3
                          where co3.posicion = 1
                          group by co3.nombre_caballo
                          having count(*) <= 5);
                        

