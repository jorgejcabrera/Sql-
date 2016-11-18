Dado los siguientes esquemas de relaciones, se pide obtener una única sentencia SQL para las siguientes consultas:

medico(matricula,apellido,nombre) \\
medico_especialidad(nombre_de_especialidad,matricula) \\
servicio_especialidad(nombre_de_servicio,nombre_de_especialidad) \\
medico_servicio(matricula,nombre_del_servicio) \\

a) Obtener los servicios que brinden alguna Especialidad, para la cual, no dispongan de algún médico idóneo.
b) El nombre de los servicios que ofrezcan más de 3 especialidades y sean atendidos por más de dos médicoss