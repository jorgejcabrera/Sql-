/* jockeys que hayan conseguido llegar a la meta entre las 3 primeras posiciones en mas de 5 oportunidades */
select *
from ejercicio4.jockey jo
where jo.nro_de_lic in (select co.nro_de_lic
						from ejercicio4.corredores co
						where co.posicion <= 3
						group by co.nro_de_lic
						having count(*) > 5);
                        
/* cantidad de veces que en San Isidro compitieron juntos los jockeys con licencias 123 y 456 */
select *
from ejercicio4.encuentros en1
where en1.nro_encuentro in (select en.nro_encuentro
							from ejercicio4.encuentros en, ejercicio4.corredores co
							where en.nro_encuentro = co.nro_encuentro
							and en.nombre_hipo = 'San Isidro'
							and co.nro_de_lic = 123
							intersect
							select en.nro_encuentro
							from ejercicio4.encuentros en, ejercicio4.corredores co
							where en.nro_encuentro = co.nro_encuentro
							and en.nombre_hipo = 'San Isidro'
							and co.nro_de_lic = 456);
