Dado los siguientes esquemas de relaciones, se pide: <br />

*medico(__matricula__,apellido,nombre);* <br />
*medico_especialidad(__nombre_de_especialidad,matricula__);* <br />
*servicio_especialidad(__nombre_de_servicio,nombre_de_especialidad__);* <br />
*medico_servicio(__matricula,nombre_del_servicio__);* <br />

```
a) Obtener los servicios que brinden alguna Especialidad, para la cual, no dispongan de algún médico idóneo.
b) El nombre de los servicios que ofrezcan más de 3 especialidades y sean atendidos por más de dos médicoss.
```