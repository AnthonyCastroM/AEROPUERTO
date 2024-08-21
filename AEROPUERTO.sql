--EXAMEN FINAL DEL CURSO PROGRAMACION II
-- ANTHONY CASTRO MU�OZ (INGENIERIA EN INFORMATICA)

CREATE DATABASE AEROPUERTO

USE AEROPUERTO

--TABLA USUARIO (USUARIOS)
CREATE TABLE USUARIO(
	ID INT IDENTITY PRIMARY KEY,			--ID
	NOMBRE VARCHAR(50) NOT NULL,			--NOMBRE DE USUARIO
	APELLIDO1 VARCHAR(50) NOT NULL,			--APELLIDO1 DE USUARIO
	APELLIDO2 VARCHAR(50) NOT NULL,			--APELLIDO2 DE USUARIO
	CORREO VARCHAR(30) NOT NULL,			--CORREO ELECTRONICO
	CONTRASENA VARCHAR(30) NOT NULL			--CONTRASENA DE USUARIO
)

--TABLA VIAJERO (VIAJEROS)
CREATE TABLE VIAJERO(
	ID INT IDENTITY PRIMARY KEY,			--ID
	ID_USUARIO INT,							--USUARIO CREADOR 
	NOMBRE VARCHAR(50) NOT NULL,			--NOMBRE DE USUARIO
	APELLIDO1 VARCHAR(50) NOT NULL,			--APELLIDO1 DE USUARIO
	APELLIDO2 VARCHAR(50) NOT NULL,			--APELLIDO2 DE USUARIO
	CORREO VARCHAR(30) NOT NULL,			--CORREO ELECTRONICO

	CONSTRAINT FKIDUSUARIO FOREIGN KEY(ID_USUARIO) REFERENCES USUARIO(ID)
)



--TABLA MEDICAMENTO Y SUCURSAL (UBICACION)
CREATE TABLE ENTRADAS_VIAJEROS(
	ID_USUARIO INT,							--USUARIO QUE REGISTRA
	ID_VIAJERO INT,							--VIAJERO QUE ENTRA
	FECHA DATETIME NOT NULL,				--FECHA DE ENTRADA
	LUGAR VARCHAR(50) NOT NULL				--LUGAR AL QUE ENTRA
	
	CONSTRAINT FKIDUSUARIOEN FOREIGN KEY(ID_USUARIO) REFERENCES USUARIO(ID),
	CONSTRAINT FKIDVIAJEROEN FOREIGN KEY(ID_VIAJERO) REFERENCES VIAJERO(ID)
)

-- TABLA ENTRADAS (REGISTRO DE SALIDAS)
CREATE TABLE SALIDAS_VIAJEROS(
	ID_USUARIO INT,							--USUARIO QUE REGISTRA
	ID_VIAJERO INT,							--VIAJERO QUE SALE
	FECHA DATETIME NOT NULL,				--FECHA DE SALIDA
	LUGAR VARCHAR(50) NOT NULL				--LUGAR AL QUE ENTRA

	CONSTRAINT FKIDUSUARIOSAL FOREIGN KEY(ID_USUARIO) REFERENCES USUARIO(ID),
	CONSTRAINT FKIDVIAJEROSAL FOREIGN KEY(ID_VIAJERO) REFERENCES VIAJERO(ID)
)

-- TABLA INGRESOS (REGISTRA EL INGRESO DE LOS USUARIOS AL SISTEMA)
CREATE TABLE INGRESOS(
	ID_USUARIO INT,							--USUARIO QUE INGRESA AL SISTEMA
	FECHA DATETIME NULL						--FECHA DE INGRESO AL SISTEMA

	CONSTRAINT FKIDUSUARIOIN FOREIGN KEY(ID_USUARIO) REFERENCES USUARIO(ID),
)


--INGRESAR LA HORA EN LA QUE SE HIZO EL INGRESO

CREATE TRIGGER FECHAINGRESO
ON INGRESOS
AFTER INSERT

AS
DECLARE @IDUSUARIO INT = (SELECT ID_USUARIO FROM inserted)
DECLARE @FECHA DATETIME = GETDATE();

		BEGIN
			UPDATE INGRESOS SET FECHA = @FECHA
		END

INSERT USUARIO VALUES ('ANTHONY', 'CASTRO', 'MUNOZ', 'a@a.a','123')
SELECT * FROM USUARIO

INSERT INGRESOS (ID_USUARIO) VALUES(1)
SELECT * FROM INGRESOS

SELECT * FROM VIAJERO