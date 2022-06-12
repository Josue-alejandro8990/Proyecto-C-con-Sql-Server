USE MASTER
GO
DROP DATABASE  IF EXISTS ProyectoFinal
CREATE DATABASE ProyectoFinal
ON PRIMARY
(
NAME = 'ProyectoFinal_Data',
FILENAME = 'C:\ArchivosBaseDeDatos\Data\ProyectoFinal_Data.mdf',
SIZE = 500MB,
MAXSIZE = 1024MB,
FILEGROWTH = 250MB
)
LOG ON
(
NAME = 'ProyectoFinal_Log',
FILENAME = 'C:\ArchivosBaseDeDatos\Data\ProyectoFinal_Log.ldf',
SIZE = 250MB,
MAXSIZE = 500MB,
FILEGROWTH = 125MB
)

USE ProyectoFinal
GO
CREATE SCHEMA SoporteTecnico