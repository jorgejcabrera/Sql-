CREATE TABLE ejercicio1.Alumnos (
    matricula integer NOT NULL,
    apellido varchar(255) NOT NULL,
    nombre_al varchar(255) NOT NULL,
    nacionalidad varchar(255),
	PRIMARY KEY (matricula)
);

CREATE TABLE ejercicio1.Materias(
	codigo_de_materia integer NOT NULL,
    nombre_mat varchar(255) NOT NULL,
    anio integer,
    cant_de_horas integer,
    PRIMARY KEY (codigo_de_materia)
);	

CREATE TABLE ejercicio1.Examenes(
	codigo_materia integer NOT NULL,
    matricula integer NOT NULL,
    fecha date,
    nota integer NOT NULL,
    PRIMARY KEY (codigo_materia,matricula,fecha)
);

INSERT INTO ejercicio1.Alumnos (matricula,apellido,nombre_al,nacionalidad) VALUES
(1,'Cabrera','Jorge','Argentino'),
(2,'Vera','Javier','Argentino'),
(3,'Mengano','Nahuel','Brasilero');

INSERT INTO ejercicio1.Materias (codigo_de_materia,nombre_mat,anio,cant_de_horas) VALUES
(1,'Organizacion de datos',2016,8),
(2,'Fisica II',2016,8),
(3,'Analisis matematico',2016,8);

INSERT INTO ejercicio1.Examenes (codigo_materia,matricula,fecha,nota) VALUES
(1,1,'20120618 10:34:09 AM',4),
(1,2,'20120618 10:34:09 AM',1),
(3,1,'20120618 10:34:09 AM',7);