/* datos de clientes que hayan comprado articulos de sanitarios y electricidad */
select * 
from ejercicio6.clientes cli
where cli.cod_cli in (select cli1.cod_cli
                      from ejercicio6.clientes cli1, ejercicio6.facturas fa1, 
                      ejercicio6.detalles de1,ejercicio6.articulos ar1, ejercicio6.rubros ru1
                      where cli1.cod_cli = fa1.cliente
                      and fa1.nrofactura = de1.nrofactura
                      and de1.cod_art = ar1.cod_art
                      and ar1.cod_rubro = ru1.cod_rubro
                      and ru1.nombre_del_rubro = 'Sanitarios'
                      intersect
                      select cli2.cod_cli
                      from ejercicio6.clientes cli2, ejercicio6.facturas fa2, 
                      ejercicio6.detalles de2,ejercicio6.articulos ar2, ejercicio6.rubros ru2
                      where cli2.cod_cli = fa2.cliente
                      and fa2.nrofactura = de2.nrofactura
                      and de2.cod_art = ar2.cod_art
                      and ar2.cod_rubro = ru2.cod_rubro
                      and ru2.nombre_del_rubro = 'Electricidad');
                      
/* listar codigos de rubros, nombree_del_rubro y el total facturado por rubro, para aquellos rubros que hayan 
facturado mas de $9000 durante el mes de enero de 2015 */

select ru.cod_rubro,ru.nombre_del_rubro, ar.cod_art, ar.precio, sum(de.cantidad)
from ejercicio6.rubros ru, ejercicio6.facturas fa, ejercicio6.detalles de, ejercicio6.articulos ar
where fa.nrofactura = de.nrofactura
and de.cod_art = ar.cod_art
and ar.cod_rubro = ru.cod_rubro
and fa.fecha >= '20150101'
and fa.fecha <= '20150131'
group by ru.cod_rubro,ru.nombre_del_rubro, ar.cod_art, ar.precio
having (ar.precio * sum(de.cantidad)) > 9000;


