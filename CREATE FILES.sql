USE master
GO

CREATE DATABASE Bd1_ProyectoFinal

ON PRIMARY
(
NAME = 'Bd1_ProyectoFinal'
,FILENAME = 'Z:\FileGroupPrimary\Bd1_ProyectoFinal_Data.mdf'
,SIZE = 500MB
,MAXSIZE = 1024MB
,FILEGROWTH = 250MB
)


LOG ON
(
NAME = 'ProyectoFinal1_log'
,FILENAME = 'Y:\LogsDefault\Bd1_ProyectoFinal_log.ldf'
,SIZE = 250MB
,MAXSIZE = 500MB
,FILEGROWTH = 125MB
)

