

CREATE TABLE pais (
  idPais int NOT NULL AUTO_INCREMENT,
  nombrePis varchar(50) NOT NULL,
  CONSTRAINT pk_pais PRIMARY KEY (idPais)
  
 );
 

CREATE TABLE departamento (
  idDep int NOT NULL AUTO_INCREMENT,
  nombreDep varchar(50) NOT NULL,
  idPais int(11),
    CONSTRAINT pk_departamento PRIMARY KEY (idDep),
      CONSTRAINT fk_paisDep FOREIGN KEY (idPais) REFERENCES pais (idPais)
        
 );
 
 
 CREATE TABLE municipio (
    idMun int  NOT NULL  AUTO_INCREMENT,
    nombreMun varchar(50) NOT NULL,
    idDep int(11),
         CONSTRAINT pk_municipio PRIMARY KEY (idMun),
            CONSTRAINT fk_DepMunicipio FOREIGN KEY (idDep) REFERENCES departamento(idDep)
 
  );
 


 CREATE TABLE cliente (
    idCliente  varchar(15),
    primerNombre varchar(25),
    segundoNombre varchar(25),
    primerApellido varchar(25),
    segundoApellido varchar(25),
    idMun int,
        CONSTRAINT pk_cliente PRIMARY KEY (idCliente),
            CONSTRAINT fk_municipioCliente FOREIGN KEY (idMun) REFERENCES municipio(idMun)
 );
 