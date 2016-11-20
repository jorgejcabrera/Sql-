create table ejercicio6.clientes(
	cod_cli integer NOT NULL,
    nomb_y_apellido varchar(255),
    domicilio varchar(255),
    localidad varchar(255),
    saldo integer,
    primary key (cod_cli)
);

create table ejercicio6.facturas(
	nrofactura integer NOT NULL,
    cliente integer,
    fecha date,
    primary key (nrofactura)
);

create table ejercicio6.detalles(
	nrofactura integer NOT NULL,
    cod_art integer NOT NULL,
    cantidad integer,
    primary key (nrofactura,cod_art)
);

create table ejercicio6.articulos(
	cod_art integer NOT NULL,
    descripcion varchar(255),
    cod_rubro integer NOT NULL,
    stock integer,
    pto_reposicion integer,
    precio integer,
    primary key (cod_art)
);

create table ejercicio6.rubros(
	cod_rubro integer NOT NULL,
    nombre_del_rubro varchar(255),
    primary key (cod_rubro)
);

insert into ejercicio6.detalles (nrofactura,cod_art,cantidad) values
	(1,1,2),
    (2,1,42),
    (3,2,5),
    (4,3,5),
    (5,4,7);
    
insert into ejercicio6.facturas (nrofactura,cliente,fecha) values
	(1,1,'20150118 10:34:09 AM'),
    (2,1,'20150118 10:34:09 AM'),
    (3,1,'20150118 10:34:09 AM'),
    (4,2,'20150118 10:34:09 AM'),
    (5,3,'20150118 10:34:09 AM');
    
insert into ejercicio6.clientes (cod_cli,nomb_y_apellido, domicilio, localidad, saldo) values
	(1,'Jorge Cabrera',null,'Bs As',432),
    (2,'Javier Vera',null,'Bs As',34543),
    (3,'Francisco Lapalala',null,'Bs As',654);
    
insert into ejercicio6.articulos (cod_art,descripcion,cod_rubro,stock,pto_reposicion,precio) values
	(1,'vide',1,4,5,123),
    (2,'espejo',1,4,5,4324),
    (3,'toma',2,4,5,5432),
    (4,'ornalla',3,4,5,533);
    
insert into ejercicio6.rubros (cod_rubro,nombre_del_rubro) values
	(1,'Sanitarios'),
    (2,'Electricidad'),
    (3,'Cocina');
