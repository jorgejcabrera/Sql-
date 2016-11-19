/* jockeys que hayan conseguido llegar a la meta entre las 3 primeras posiciones en mas de 5 oportunidades */
select *
from ejercicio4.jockey jo
where jo.nro_de_lic in (select co.nro_de_lic
						from ejercicio4.corredores co
						where co.posicion <= 3
						group by co.nro_de_lic
						having count(*) > 5);