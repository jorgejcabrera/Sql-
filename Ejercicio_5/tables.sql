create table ejercicio5.encuentros(
	nro_encuentro integer NOT NULL,
    fecha date,
    nombre_hipo varchar(255) NOT NULL,
    PRIMARY KEY (nro_encuentro)
);

create table ejercicio5.carreras(
	nro_encuentro integer NOT NULL,
    nro_de_carrera integer NOT NULL,
    tipo_de_pista varchar(255),
    estado_de_pista varchar(255),
    FOREIGN KEY (nro_encuentro) REFERENCES ejercicio5.encuentros,
    PRIMARY KEY (nro_encuentro,nro_de_carrera)
);

create table ejercicio5.jockey(
	nro_de_lic integer NOT NULL,
    nombre varchar(255),
    categoria varchar(255),
    PRIMARY KEY (nro_de_lic)
);

create table ejercicio5.corredores(
	nro_encuentro integer NOT NULL,
    nro_de_carrera integer NOT NULL,
    andarivel integer NOT NULL,
    nombre_caballo varchar(255),
    nro_de_lic integer,
    posicion integer NOT NULL,
    FOREIGN KEY (nro_encuentro,nro_de_carrera) REFERENCES ejercicio5.carreras,
    FOREIGN KEY (nro_encuentro) REFERENCES ejercicio5.encuentros,
    FOREIGN KEY (nro_de_lic) REFERENCES ejercicio5.jockey ,
    PRIMARY KEY (nro_encuentro,nro_de_carrera,andarivel)
);


insert into ejercicio5.jockey (nro_de_lic,nombre,categoria) values
	(1,'George','L1'),
    (2,'Javier','L1'),
    (3,'Nahuel','L2'),
    (123,'Agarrala','L1'),
    (456,'Mano','L1');

insert into ejercicio5.encuentros (nro_encuentro,fecha,nombre_hipo) values
	(1,null,'San Isidro'),
    (2,null,'San Isidro'),
    (3,null,'San Isidro'),
    (4,null,'San Isidro'),
    (5,null,'San Isidro'),
    (6,null,'San Isidro');
 
insert into ejercicio5.carreras (nro_encuentro,nro_de_carrera,tipo_de_pista,estado_de_pista) values
	(1,1,'Pasto','Bueno'),
    (2,1,'Pasto','Bueno'),
    (3,1,'Pasto','Bueno'),
    (4,1,'Pasto','Bueno'),
    (5,1,'Pasto','Bueno'),
    (6,1,'Pasto','Bueno'),
    (6,2,'Pasto','Bueno'),
    (6,3,'Pasto','Bueno'),
    (6,4,'Pasto','Bueno'),
    (6,5,'Pasto','Bueno');

insert into ejercicio5.corredores (nro_encuentro,nro_de_carrera,andarivel,nombre_caballo,nro_de_lic,posicion) values
	(1,1,10,'Rosinante',1,1),
    (2,1,21,'Rosinante',1,1),
    (3,1,32,'Rosinante',1,1),
    (4,1,1,'Rosinante',1,1),
    (5,1,4,'Rosinante',1,2),
    (6,1,23,'Rosinante',1,3),
    (6,1,2,'Relampago',123,5),
    (6,1,5,'Tornado',456,6),
    (6,2,2,'Relampago',123,1),
    (6,3,2,'Relampago',123,1),
    (6,4,2,'Relampago',123,1),
    (6,5,2,'Relampago',123,1);
