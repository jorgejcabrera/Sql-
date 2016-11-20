Dado los siguientes esquemas de relaciones, se pide <br />

*clientes(__cod_cli__,nomb_y_apellido,domicilio,localidad,saldo);* <br />
*facturas(__nrofactura__,cliente,fecha);* <br />
*detalles(__nrofactura,cod_art__,cantidad);* <br />
*articulos(__cod_art__,descripcion,cod_rubro,stock,pto_reposicion,precio);* <br />
*rubros(__cod_rubro__,nombre_del_rubro);* <br />

```
a) listar datos de los clientes que hayan que hayan comprado articulos de los rubros 'Sanitarios' y 'Electricidad'
b) listar codigos de rubros, nomrbe_del_rubro y el total facturado por rubro, para aquellos rubros que hayan facturado mas de $9000 durante el mes de enero de 2015.
```