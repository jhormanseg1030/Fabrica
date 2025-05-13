DROP DATABASE IF EXISTS Fabrica;
CREATE DATABASE Fabrica;
USE Fabrica;

CREATE TABLE Fabricante(
	codigo INT (10) PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR (100)
);
CREATE TABLE Productos(
	 codigo INT (10) PRIMARY KEY AUTO_INCREMENT,
     nombre VARCHAR (100),
     precio DOUBLE,
     codigo_fabricante INT (10)
);

ALTER TABLE Productos
ADD FOREIGN KEY (codigo_fabricante) REFERENCES Fabricante (codigo);