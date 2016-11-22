create table ejercicio7.vuelo(
    vuelonro integer NOT NULL,
    desde varchar(255),
    hacia varchar(255),
    distancia integer,
    PRIMARY KEY (vuelonro)
);

create table ejercicio7.aeronave(
    aID integer NOT NULL,
    aNombre varchar(255),
    rango varchar(255) NOT NULL,
    PRIMARY KEY (aID)
);

create table ejercicio7.certificado(
    eID integer NOT NULL,
    aID integer NOT NULL,
    PRIMARY KEY (eID,aID)
);

create table ejercicio7.empleado(
    eID integer NOT NULL,
    eNombre varchar(255),
    sueldo integer,
    PRIMARY KEY (eID)
);

insert into ejercicio7.vuelo (vuelonro,desde,hacia,distancia) values 
    (1401,'BsAs','Istambul',1900),
    (1402,'Istambul','Bcn',800),
    (1403,'Bcn','Prague',740);
    
insert into ejercicio7.aeronave (aID,aNombre,rango) values 
    (1,'Jumbo1','Piloto'),
    (2,'Jumbo2','Piloto'),
    (3,'Jumbo3','Oficial');
    
insert into ejercicio7.certificado (eID,aID) values 
    (10,1),
    (10,2),
    (11,3);
    
insert into ejercicio7.empleado (eID,eNombre,sueldo) values
    (10,'Jorge',123),
    (11,'Javier',153),
    (12,'Cabrera',4500);