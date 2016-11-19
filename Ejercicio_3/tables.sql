create table ejercicio3.medico(
    matricula integer NOT NULL,
    apellido varchar(255),
    nombre varchar(255),
    ciudad varchar(255),
    PRIMARY KEY (matricula)
);

create table ejercicio3.medico_especialidad(
    nombre_de_especialidad varchar(255) NOT NULL,
    matricula integer NOT NULL,
    PRIMARY KEY (nombre_de_especialidad,matricula)
);

create table ejercicio3.servicio_especialidad(
    nombre_del_servicio varchar(255) NOT NULL,
    nombre_de_especialidad varchar(255) NOT NULL,
    PRIMARY KEY (nombre_del_servicio,nombre_de_especialidad)
);

create table ejercicio3.medico_servicio(
    matricula integer NOT NULL,
    nombre_del_servicio varchar(255) NOT NULL,
    PRIMARY KEY (matricula,nombre_del_servicio)
);

insert into ejercicio3.medico (matricula,apellido,nombre,ciudad) values
    (1,'Cabrera','Jorge','BsAs'),
    (2,'Federico','Barrios','Cordoba'),
    (3,'Claudia','Guarula','Mar del Plata');

insert into ejercicio3.medico_especialidad (nombre_de_especialidad,matricula) values
    ('Clinico',1),
    ('Anestesista',1),
    ('Cirujano',2),
    ('Oftalmologo',3);
    
insert into ejercicio3.servicio_especialidad (nombre_del_servicio,nombre_de_especialidad) values
    ('Guardia','Traumatologo'),
    ('Guardia','Cirujano'),
    ('Guardia','Oftalmologo'),
    ('Consultorio','Kinesiologo');
    
insert into ejercicio3.medico_servicio (matricula,nombre_del_servicio) values
    (1,'Guardia'),
    (2,'Guardia'),
    (3,'Guardia'),
    (1,'Consultorio');