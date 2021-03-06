USE [master]
GO
/****** Object:  Database [ProyectoFinal]    Script Date: 26/10/2020 14:08:56 ******/
CREATE DATABASE [ProyectoFinal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProyectoFinal_Data', FILENAME = N'C:\ArchivosBaseDeDatos\Data\ProyectoFinal_Data.mdf' , SIZE = 512000KB , MAXSIZE = 1048576KB , FILEGROWTH = 256000KB )
 LOG ON 
( NAME = N'ProyectoFinal_Log', FILENAME = N'C:\ArchivosBaseDeDatos\Data\ProyectoFinal_Log.ldf' , SIZE = 256000KB , MAXSIZE = 512000KB , FILEGROWTH = 128000KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ProyectoFinal] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProyectoFinal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProyectoFinal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProyectoFinal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProyectoFinal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProyectoFinal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProyectoFinal] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProyectoFinal] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ProyectoFinal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProyectoFinal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProyectoFinal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProyectoFinal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProyectoFinal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProyectoFinal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProyectoFinal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProyectoFinal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProyectoFinal] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProyectoFinal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProyectoFinal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProyectoFinal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProyectoFinal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProyectoFinal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProyectoFinal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProyectoFinal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProyectoFinal] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProyectoFinal] SET  MULTI_USER 
GO
ALTER DATABASE [ProyectoFinal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProyectoFinal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProyectoFinal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProyectoFinal] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProyectoFinal] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProyectoFinal] SET QUERY_STORE = OFF
GO
USE [ProyectoFinal]
GO
/****** Object:  Schema [SoporteTecnico]    Script Date: 26/10/2020 14:08:56 ******/
CREATE SCHEMA [SoporteTecnico]
GO
/****** Object:  Table [SoporteTecnico].[Tb_CubiculosEmpresa]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_CubiculosEmpresa](
	[Cubic_Id] [int] IDENTITY(1,1) NOT NULL,
	[Cubic_Nombre] [nvarchar](25) NULL,
	[Cubic_EdifId] [int] NOT NULL,
	[Cubic_SecId] [int] NOT NULL,
 CONSTRAINT [Pk_CubiculosEmpresa] PRIMARY KEY CLUSTERED 
(
	[Cubic_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Uq_Cubic_Nombre] UNIQUE NONCLUSTERED 
(
	[Cubic_Nombre] ASC,
	[Cubic_EdifId] ASC,
	[Cubic_SecId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_DepartamentosDirecciones]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_DepartamentosDirecciones](
	[DepDir_Id] [int] IDENTITY(1,1) NOT NULL,
	[DepDir_Nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [Pk_DepartamentosDirecciones] PRIMARY KEY CLUSTERED 
(
	[DepDir_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Uq_DepDir_Nombre] UNIQUE NONCLUSTERED 
(
	[DepDir_Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_DepartamentosEmpresa]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_DepartamentosEmpresa](
	[DepEmp_Id] [int] IDENTITY(1,1) NOT NULL,
	[DepEmp_Nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [Pk_DepartamentosEmpresa] PRIMARY KEY CLUSTERED 
(
	[DepEmp_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Uq_DepartamentosEmpresa_Nombre] UNIQUE NONCLUSTERED 
(
	[DepEmp_Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_Desarrolladoras]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_Desarrolladoras](
	[Desa_Id] [int] IDENTITY(1,1) NOT NULL,
	[Desa_Nombre] [nvarchar](25) NOT NULL,
 CONSTRAINT [Pk_Desarrolladorsasft] PRIMARY KEY CLUSTERED 
(
	[Desa_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Uq_DesaSoft_Nombre] UNIQUE NONCLUSTERED 
(
	[Desa_Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_Direcciones]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_Direcciones](
	[Direc_Id] [int] IDENTITY(1,1) NOT NULL,
	[Direc_Referencia] [nvarchar](100) NOT NULL,
	[Direc_MunDirId] [int] NULL,
	[Direc_DepDirId] [int] NULL,
 CONSTRAINT [Pk_Direcciones] PRIMARY KEY CLUSTERED 
(
	[Direc_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Uq_Direc_Referencia] UNIQUE NONCLUSTERED 
(
	[Direc_Referencia] ASC,
	[Direc_MunDirId] ASC,
	[Direc_DepDirId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_Edificios]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_Edificios](
	[Edif_Id] [int] IDENTITY(1,1) NOT NULL,
	[Edif_Nombre] [nvarchar](25) NOT NULL,
	[Edif_NumPisos] [int] NOT NULL,
	[Edif_DirecId] [int] NULL,
 CONSTRAINT [Pk_Edificios] PRIMARY KEY CLUSTERED 
(
	[Edif_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Uq_Edificio_Nombre] UNIQUE NONCLUSTERED 
(
	[Edif_Nombre] ASC,
	[Edif_NumPisos] ASC,
	[Edif_DirecId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_Emails]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_Emails](
	[Email_Id] [int] IDENTITY(1,1) NOT NULL,
	[Email_Direccion] [nvarchar](25) NOT NULL,
	[Email_TipEmailId] [int] NULL,
	[Email_DepEmpId] [int] NULL,
	[Email_PuestoId] [int] NULL,
	[Email_EmpleaId] [int] NULL,
 CONSTRAINT [Pk_Emails] PRIMARY KEY CLUSTERED 
(
	[Email_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Uq_Email_Direccion] UNIQUE NONCLUSTERED 
(
	[Email_Direccion] ASC,
	[Email_TipEmailId] ASC,
	[Email_DepEmpId] ASC,
	[Email_PuestoId] ASC,
	[Email_EmpleaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_EmailsTipos]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_EmailsTipos](
	[TipEmail_Id] [int] IDENTITY(1,1) NOT NULL,
	[TipEmail_Nombre] [nvarchar](10) NOT NULL,
 CONSTRAINT [Pk_EmailsTipos] PRIMARY KEY CLUSTERED 
(
	[TipEmail_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Uq_TipEmail_Nombre] UNIQUE NONCLUSTERED 
(
	[TipEmail_Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_Empleados]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_Empleados](
	[Emplea_DepEmpId] [int] NOT NULL,
	[Emplea_PuestoId] [int] NOT NULL,
	[Emplea_Id] [int] IDENTITY(1,1) NOT NULL,
	[Emplea_Nombre] [nvarchar](50) NOT NULL,
	[Emplea_Apellido] [nvarchar](50) NOT NULL,
	[Emplea_DPI] [nvarchar](13) NULL,
	[Emplea_DirecId] [int] NULL,
	[Emplea_FechaNacimiento] [date] NULL,
	[Emplead_Edad] [int] NULL,
	[Emplea_GeneroId] [int] NULL,
	[Emplea_FechaIngreso] [date] NULL,
 CONSTRAINT [Pk_Empleados] PRIMARY KEY CLUSTERED 
(
	[Emplea_DepEmpId] ASC,
	[Emplea_PuestoId] ASC,
	[Emplea_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Uq_Empleados] UNIQUE NONCLUSTERED 
(
	[Emplea_Nombre] ASC,
	[Emplea_Apellido] ASC,
	[Emplea_DPI] ASC,
	[Emplea_FechaNacimiento] ASC,
	[Emplead_Edad] ASC,
	[Emplea_FechaIngreso] ASC,
	[Emplea_GeneroId] ASC,
	[Emplea_DirecId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_EncuestasRespuestas]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_EncuestasRespuestas](
	[EnResp_Id] [int] IDENTITY(1,1) NOT NULL,
	[EnResp_EncuId] [int] NULL,
	[EnResp_RespId] [int] NULL,
 CONSTRAINT [Pk_EncuestasRespuestas] PRIMARY KEY CLUSTERED 
(
	[EnResp_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_EncuestasUsuarios]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_EncuestasUsuarios](
	[Encu_Id] [int] IDENTITY(1,1) NOT NULL,
	[Encu_UsuId] [int] NULL,
	[Encu_ProbId] [int] NULL,
	[Encu_TicketId] [int] NULL,
	[Encu_Observaciones] [nvarchar](100) NULL,
 CONSTRAINT [Pk_EncuestasUsuarios] PRIMARY KEY CLUSTERED 
(
	[Encu_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_Equipos]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_Equipos](
	[Equipo_Id] [int] IDENTITY(1,1) NOT NULL,
	[Equipo_Nombre] [nvarchar](30) NOT NULL,
	[Equipo_Modelo] [nvarchar](30) NOT NULL,
	[Equipo_FechaCompra] [date] NULL,
 CONSTRAINT [Pk_Equipos] PRIMARY KEY CLUSTERED 
(
	[Equipo_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Uq_Equipo_Nombre] UNIQUE NONCLUSTERED 
(
	[Equipo_Nombre] ASC,
	[Equipo_Modelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_EquiposHardwares]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_EquiposHardwares](
	[EqHard_Id] [int] IDENTITY(1,1) NOT NULL,
	[EqHard_HardId] [int] NULL,
	[EqHard_EquipoId] [int] NULL,
 CONSTRAINT [Pk_EquiposHardwares] PRIMARY KEY CLUSTERED 
(
	[EqHard_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_EquiposSoftwares]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_EquiposSoftwares](
	[EqSoft_Id] [int] IDENTITY(1,1) NOT NULL,
	[EqSoft_SoftId] [int] NULL,
	[EqSoft_EquipoId] [int] NULL,
 CONSTRAINT [Pk_EquiposSoftwares] PRIMARY KEY CLUSTERED 
(
	[EqSoft_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_EstadosTickets]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_EstadosTickets](
	[Estado_Id] [int] IDENTITY(1,1) NOT NULL,
	[Estado_Nombre] [nvarchar](10) NOT NULL,
 CONSTRAINT [Pk_EstadosTickets] PRIMARY KEY CLUSTERED 
(
	[Estado_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Uq_Estado_Nombre] UNIQUE NONCLUSTERED 
(
	[Estado_Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_GenerosPersonas]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_GenerosPersonas](
	[Genero_Id] [int] IDENTITY(1,1) NOT NULL,
	[Genero_Nombre] [nvarchar](9) NOT NULL,
 CONSTRAINT [Pk_GenerosPersonas] PRIMARY KEY CLUSTERED 
(
	[Genero_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Uq_Genero_Nombre] UNIQUE NONCLUSTERED 
(
	[Genero_Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_Hardwares]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_Hardwares](
	[Hard_Id] [int] IDENTITY(1,1) NOT NULL,
	[Hard_Nombre] [nvarchar](50) NOT NULL,
	[Hard_Modelo] [nvarchar](25) NOT NULL,
	[Hard_MarHarId] [int] NULL,
	[Hard_TipoHardId] [int] NULL,
	[Hard_Caracteristicas] [nvarchar](200) NULL,
 CONSTRAINT [Pk_Hardwares] PRIMARY KEY CLUSTERED 
(
	[Hard_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Uq_Hard_Nombre] UNIQUE NONCLUSTERED 
(
	[Hard_Nombre] ASC,
	[Hard_Modelo] ASC,
	[Hard_MarHarId] ASC,
	[Hard_TipoHardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_Marcas]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_Marcas](
	[MarHar_Id] [int] IDENTITY(1,1) NOT NULL,
	[MarHar_Nombre] [nvarchar](25) NOT NULL,
 CONSTRAINT [Pk_MarcasHard] PRIMARY KEY CLUSTERED 
(
	[MarHar_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Uq_MarHar_Nombre] UNIQUE NONCLUSTERED 
(
	[MarHar_Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_MunicipiosDirecciones]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_MunicipiosDirecciones](
	[MunDir_DepDirId] [int] NOT NULL,
	[MundDir_Id] [int] IDENTITY(1,1) NOT NULL,
	[MunDir_Nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [Pk_MunicipiosDirecciones] PRIMARY KEY CLUSTERED 
(
	[MunDir_DepDirId] ASC,
	[MundDir_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Uq_MunDir_Nombre] UNIQUE NONCLUSTERED 
(
	[MunDir_Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_PerfilesTecnicos]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_PerfilesTecnicos](
	[PefTec_Id] [int] IDENTITY(1,1) NOT NULL,
	[PefTec_UsuId] [int] NULL,
	[PefTec_TipTecId] [int] NULL,
 CONSTRAINT [Pk_Tb_PerfilesTecnicos] PRIMARY KEY CLUSTERED 
(
	[PefTec_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_PrioridadesTickets]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_PrioridadesTickets](
	[Priord_Id] [int] IDENTITY(1,1) NOT NULL,
	[Priord_Nombre] [nvarchar](10) NOT NULL,
 CONSTRAINT [Pk_PrioridadesTickets] PRIMARY KEY CLUSTERED 
(
	[Priord_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Uq_Priord_Nombre] UNIQUE NONCLUSTERED 
(
	[Priord_Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_ProblemasTecnicos]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_ProblemasTecnicos](
	[Prob_Id] [int] IDENTITY(1,1) NOT NULL,
	[Prob_TipProbId] [int] NULL,
	[Prob_DetalleProblema] [nvarchar](100) NULL,
	[Prob_ImagenProblema] [image] NULL,
	[Prob_FechaReporte] [datetime] NOT NULL,
	[Prob_UsuId] [int] NOT NULL,
 CONSTRAINT [Pk_ProblemasTecnicos] PRIMARY KEY CLUSTERED 
(
	[Prob_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_ProblemasTecTipos]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_ProblemasTecTipos](
	[TipoProb_Id] [int] IDENTITY(1,1) NOT NULL,
	[TipProb_Nombre] [nvarchar](10) NOT NULL,
 CONSTRAINT [Pk_ProblemasTecTipos] PRIMARY KEY CLUSTERED 
(
	[TipoProb_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Uq_TipProb_Nombre] UNIQUE NONCLUSTERED 
(
	[TipProb_Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_Puestos]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_Puestos](
	[Puesto_DepEmpId] [int] NOT NULL,
	[Puesto_Id] [int] IDENTITY(1,1) NOT NULL,
	[Puesto_Nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [Pk_Puestos] PRIMARY KEY CLUSTERED 
(
	[Puesto_DepEmpId] ASC,
	[Puesto_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Uq_Puesto_Nombre] UNIQUE NONCLUSTERED 
(
	[Puesto_Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_PuntuacionesTecnicos]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_PuntuacionesTecnicos](
	[Punt_Id] [int] IDENTITY(1,1) NOT NULL,
	[Punt_EnRespId] [int] NULL,
	[Punt_PefTecId] [int] NULL,
 CONSTRAINT [Pk_PuntuacionesTecnicos] PRIMARY KEY CLUSTERED 
(
	[Punt_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_RespuestasEncuestas]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_RespuestasEncuestas](
	[Resp_Id] [int] IDENTITY(1,1) NOT NULL,
	[Resp_Nombre] [nvarchar](15) NOT NULL,
	[Resp_PorcentajeAprobacion] [int] NOT NULL,
 CONSTRAINT [Pk_RespuestasEncuestas] PRIMARY KEY CLUSTERED 
(
	[Resp_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Uq_Calif_Nombre] UNIQUE NONCLUSTERED 
(
	[Resp_Nombre] ASC,
	[Resp_PorcentajeAprobacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_Secciones]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_Secciones](
	[Sec_EdifId] [int] NOT NULL,
	[Sec_Id] [int] IDENTITY(1,1) NOT NULL,
	[Sec_Nombre] [nvarchar](50) NOT NULL,
	[Sec_NivelEdificioUbic] [int] NOT NULL,
	[Sec_DepEmpId] [int] NULL,
 CONSTRAINT [Pk_Secciones] PRIMARY KEY CLUSTERED 
(
	[Sec_EdifId] ASC,
	[Sec_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Uq_Sec_Nombre] UNIQUE NONCLUSTERED 
(
	[Sec_Nombre] ASC,
	[Sec_NivelEdificioUbic] ASC,
	[Sec_DepEmpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_Softwares]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_Softwares](
	[Soft_Id] [int] IDENTITY(1,1) NOT NULL,
	[Soft_Nombre] [nvarchar](25) NOT NULL,
	[Soft_Version] [nvarchar](15) NOT NULL,
	[Soft_TipSoftId] [int] NULL,
	[Soft_DesaId] [int] NULL,
	[Soft_Caracteristicas] [nvarchar](200) NULL,
 CONSTRAINT [Pk_Softwares] PRIMARY KEY CLUSTERED 
(
	[Soft_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Uq_Software_Nombre] UNIQUE NONCLUSTERED 
(
	[Soft_Nombre] ASC,
	[Soft_Version] ASC,
	[Soft_TipSoftId] ASC,
	[Soft_DesaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_Telefonos]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_Telefonos](
	[Tel_Id] [int] IDENTITY(1,1) NOT NULL,
	[Tel_Numero] [nvarchar](12) NOT NULL,
	[Tel_TipTelId] [int] NULL,
 CONSTRAINT [Pk_Telefonos] PRIMARY KEY CLUSTERED 
(
	[Tel_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Uq_Tel_Numero] UNIQUE NONCLUSTERED 
(
	[Tel_Numero] ASC,
	[Tel_TipTelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_TelefonosEmpleados]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_TelefonosEmpleados](
	[TelEmp_Id] [int] IDENTITY(1,1) NOT NULL,
	[TelEmp_TelId] [int] NULL,
	[TelEmp_DepEmpId] [int] NULL,
	[TelEmp_PuestoId] [int] NULL,
	[TelEmp_EmpleaId] [int] NULL,
 CONSTRAINT [Pk_TelefonosEmpleado] PRIMARY KEY CLUSTERED 
(
	[TelEmp_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_TelefonosTipos]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_TelefonosTipos](
	[TipTel_Id] [int] IDENTITY(1,1) NOT NULL,
	[TipTel_Nombre] [nvarchar](7) NOT NULL,
 CONSTRAINT [Pk_TelefonosTipos] PRIMARY KEY CLUSTERED 
(
	[TipTel_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Uq_TipTel_Nombre] UNIQUE NONCLUSTERED 
(
	[TipTel_Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_TicketsReporte]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_TicketsReporte](
	[Ticket_ProbId] [int] NOT NULL,
	[Ticket_Id] [int] IDENTITY(1,1) NOT NULL,
	[Ticket_EstadoId] [int] NULL,
	[Ticket_PriordId] [int] NULL,
	[Ticket_PefTecId] [int] NOT NULL,
	[Ticket_FechaCreacion] [datetime] NULL,
	[Ticket_FechaLimite] [datetime] NULL,
 CONSTRAINT [Pk_TicketsReporte] PRIMARY KEY CLUSTERED 
(
	[Ticket_ProbId] ASC,
	[Ticket_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_TicketsResueltos]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_TicketsResueltos](
	[TicRes_Id] [int] IDENTITY(1,1) NOT NULL,
	[TicRes_ProbId] [int] NULL,
	[TicRes_TicketId] [int] NULL,
	[TicRes_PefTecId] [int] NULL,
	[TicRes_Observaciones] [nvarchar](100) NOT NULL,
	[TicRes_FechaFinalizado] [date] NOT NULL,
 CONSTRAINT [Pk_TicketsResueltos] PRIMARY KEY CLUSTERED 
(
	[TicRes_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_TiposHardwares]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_TiposHardwares](
	[TipHar_Id] [int] IDENTITY(1,1) NOT NULL,
	[TipHar_Nombre] [nvarchar](25) NOT NULL,
 CONSTRAINT [Pk_TiposHard] PRIMARY KEY CLUSTERED 
(
	[TipHar_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Uq_TipHar_Nombre] UNIQUE NONCLUSTERED 
(
	[TipHar_Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_TiposSoftware]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_TiposSoftware](
	[TipSof_Id] [int] IDENTITY(1,1) NOT NULL,
	[TipSof_Nombre] [nvarchar](25) NOT NULL,
 CONSTRAINT [Pk_TiposSoftware] PRIMARY KEY CLUSTERED 
(
	[TipSof_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Uq_TiposSoftware_Nombre] UNIQUE NONCLUSTERED 
(
	[TipSof_Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_TiposTecnicos]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_TiposTecnicos](
	[TipTec_Id] [int] IDENTITY(1,1) NOT NULL,
	[TipTec_Nombre] [nvarchar](20) NOT NULL,
	[TipTec_Funcion] [nvarchar](100) NULL,
 CONSTRAINT [Pk_TiposTecnicos] PRIMARY KEY CLUSTERED 
(
	[TipTec_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Uq_TipTec_Nombre] UNIQUE NONCLUSTERED 
(
	[TipTec_Nombre] ASC,
	[TipTec_Funcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_UbicacionesEmpresa]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_UbicacionesEmpresa](
	[Ubic_Id] [int] IDENTITY(1,1) NOT NULL,
	[Ubic_CubicId] [int] NOT NULL,
	[Ubic_DepEmpId] [int] NULL,
	[Ubic_PuestoId] [int] NULL,
	[Ubic_EmpleaId] [int] NULL,
 CONSTRAINT [Pk_UbiacionesEmpresa] PRIMARY KEY CLUSTERED 
(
	[Ubic_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SoporteTecnico].[Tb_Usuarios]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SoporteTecnico].[Tb_Usuarios](
	[Usu_Id] [int] IDENTITY(1,1) NOT NULL,
	[Usu_UserName] [nvarchar](10) NOT NULL,
	[Usu_Password] [nvarchar](10) NOT NULL,
	[Usu_DepEmpId] [int] NULL,
	[Usu_PuestoId] [int] NULL,
	[Usu_EmpleadoId] [int] NULL,
	[Usu_UbicId] [int] NULL,
	[Usu_EquipoId] [int] NULL,
 CONSTRAINT [Pk_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Usu_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Uq_Usuarios] UNIQUE NONCLUSTERED 
(
	[Usu_UserName] ASC,
	[Usu_Password] ASC,
	[Usu_DepEmpId] ASC,
	[Usu_PuestoId] ASC,
	[Usu_EmpleadoId] ASC,
	[Usu_UbicId] ASC,
	[Usu_EquipoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [SoporteTecnico].[Tb_CubiculosEmpresa] ADD  CONSTRAINT [Df_Cubic_Nombre]  DEFAULT ('SIN NOMBRE') FOR [Cubic_Nombre]
GO
ALTER TABLE [SoporteTecnico].[Tb_Edificios] ADD  CONSTRAINT [Df_Edif_NumPisos]  DEFAULT ((0)) FOR [Edif_NumPisos]
GO
ALTER TABLE [SoporteTecnico].[Tb_Empleados] ADD  CONSTRAINT [Df_Emplea_FechaIngreso]  DEFAULT (getdate()) FOR [Emplea_FechaIngreso]
GO
ALTER TABLE [SoporteTecnico].[Tb_Equipos] ADD  CONSTRAINT [Df_Equipo_FechaCompra]  DEFAULT (getdate()) FOR [Equipo_FechaCompra]
GO
ALTER TABLE [SoporteTecnico].[Tb_Hardwares] ADD  CONSTRAINT [Df_Hard_Caracteristicas]  DEFAULT ('SIN INFORMACION') FOR [Hard_Caracteristicas]
GO
ALTER TABLE [SoporteTecnico].[Tb_ProblemasTecnicos] ADD  CONSTRAINT [Df_Prob_FechaReporte]  DEFAULT (getdate()) FOR [Prob_FechaReporte]
GO
ALTER TABLE [SoporteTecnico].[Tb_Secciones] ADD  CONSTRAINT [Df_Sec_Nombre]  DEFAULT ('SIN NOMBRE') FOR [Sec_Nombre]
GO
ALTER TABLE [SoporteTecnico].[Tb_Softwares] ADD  CONSTRAINT [Df_Soft_Caracteristicas]  DEFAULT ('SIN INFORMACION') FOR [Soft_Caracteristicas]
GO
ALTER TABLE [SoporteTecnico].[Tb_Telefonos] ADD  CONSTRAINT [Df_Tel_Numero]  DEFAULT ('SIN TELEFONO') FOR [Tel_Numero]
GO
ALTER TABLE [SoporteTecnico].[Tb_TicketsReporte] ADD  CONSTRAINT [Df_Ticket_FechaCreacion]  DEFAULT (getdate()) FOR [Ticket_FechaCreacion]
GO
ALTER TABLE [SoporteTecnico].[Tb_TicketsResueltos] ADD  CONSTRAINT [Df_TicRes_Observaciones]  DEFAULT ('SIN INFORMACION') FOR [TicRes_Observaciones]
GO
ALTER TABLE [SoporteTecnico].[Tb_TicketsResueltos] ADD  CONSTRAINT [Df_FechaFinalizado]  DEFAULT (getdate()) FOR [TicRes_FechaFinalizado]
GO
ALTER TABLE [SoporteTecnico].[Tb_TiposTecnicos] ADD  CONSTRAINT [Df_TipTec_Funcion]  DEFAULT ('SIN INFORMACION') FOR [TipTec_Funcion]
GO
ALTER TABLE [SoporteTecnico].[Tb_Usuarios] ADD  CONSTRAINT [Df_Usu_UserName]  DEFAULT ('SIN USUARIO') FOR [Usu_UserName]
GO
ALTER TABLE [SoporteTecnico].[Tb_Usuarios] ADD  CONSTRAINT [Df_Usu_Password]  DEFAULT ('SIN PASSWORD') FOR [Usu_Password]
GO
ALTER TABLE [SoporteTecnico].[Tb_CubiculosEmpresa]  WITH CHECK ADD  CONSTRAINT [Fk_Secciones_Cubiculo] FOREIGN KEY([Cubic_EdifId], [Cubic_SecId])
REFERENCES [SoporteTecnico].[Tb_Secciones] ([Sec_EdifId], [Sec_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_CubiculosEmpresa] CHECK CONSTRAINT [Fk_Secciones_Cubiculo]
GO
ALTER TABLE [SoporteTecnico].[Tb_Edificios]  WITH CHECK ADD  CONSTRAINT [Fk_Direcciones_Edificios] FOREIGN KEY([Edif_DirecId])
REFERENCES [SoporteTecnico].[Tb_Direcciones] ([Direc_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_Edificios] CHECK CONSTRAINT [Fk_Direcciones_Edificios]
GO
ALTER TABLE [SoporteTecnico].[Tb_Emails]  WITH CHECK ADD  CONSTRAINT [Fk_EmailsTipos_Emails] FOREIGN KEY([Email_TipEmailId])
REFERENCES [SoporteTecnico].[Tb_EmailsTipos] ([TipEmail_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_Emails] CHECK CONSTRAINT [Fk_EmailsTipos_Emails]
GO
ALTER TABLE [SoporteTecnico].[Tb_Emails]  WITH CHECK ADD  CONSTRAINT [Fk_Empleados_Emails] FOREIGN KEY([Email_DepEmpId], [Email_PuestoId], [Email_EmpleaId])
REFERENCES [SoporteTecnico].[Tb_Empleados] ([Emplea_DepEmpId], [Emplea_PuestoId], [Emplea_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_Emails] CHECK CONSTRAINT [Fk_Empleados_Emails]
GO
ALTER TABLE [SoporteTecnico].[Tb_Empleados]  WITH CHECK ADD  CONSTRAINT [DepartamentosEmpresa_Empleados] FOREIGN KEY([Emplea_DepEmpId], [Emplea_PuestoId])
REFERENCES [SoporteTecnico].[Tb_Puestos] ([Puesto_DepEmpId], [Puesto_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_Empleados] CHECK CONSTRAINT [DepartamentosEmpresa_Empleados]
GO
ALTER TABLE [SoporteTecnico].[Tb_Empleados]  WITH CHECK ADD  CONSTRAINT [Fk_Direcciones_Empleados] FOREIGN KEY([Emplea_DirecId])
REFERENCES [SoporteTecnico].[Tb_Direcciones] ([Direc_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_Empleados] CHECK CONSTRAINT [Fk_Direcciones_Empleados]
GO
ALTER TABLE [SoporteTecnico].[Tb_Empleados]  WITH CHECK ADD  CONSTRAINT [Fk_Generos_Empleados] FOREIGN KEY([Emplea_GeneroId])
REFERENCES [SoporteTecnico].[Tb_GenerosPersonas] ([Genero_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_Empleados] CHECK CONSTRAINT [Fk_Generos_Empleados]
GO
ALTER TABLE [SoporteTecnico].[Tb_EncuestasRespuestas]  WITH CHECK ADD  CONSTRAINT [Fk_EncuestasUsuarios_EncuestasRespuestas] FOREIGN KEY([EnResp_EncuId])
REFERENCES [SoporteTecnico].[Tb_EncuestasUsuarios] ([Encu_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_EncuestasRespuestas] CHECK CONSTRAINT [Fk_EncuestasUsuarios_EncuestasRespuestas]
GO
ALTER TABLE [SoporteTecnico].[Tb_EncuestasRespuestas]  WITH CHECK ADD  CONSTRAINT [Fk_Respuestas_EncuestasRespuestas] FOREIGN KEY([EnResp_RespId])
REFERENCES [SoporteTecnico].[Tb_RespuestasEncuestas] ([Resp_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_EncuestasRespuestas] CHECK CONSTRAINT [Fk_Respuestas_EncuestasRespuestas]
GO
ALTER TABLE [SoporteTecnico].[Tb_EncuestasUsuarios]  WITH CHECK ADD  CONSTRAINT [Fk_TicketsReportes_EncuestasUsuarios] FOREIGN KEY([Encu_ProbId], [Encu_TicketId])
REFERENCES [SoporteTecnico].[Tb_TicketsReporte] ([Ticket_ProbId], [Ticket_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_EncuestasUsuarios] CHECK CONSTRAINT [Fk_TicketsReportes_EncuestasUsuarios]
GO
ALTER TABLE [SoporteTecnico].[Tb_EncuestasUsuarios]  WITH CHECK ADD  CONSTRAINT [Fk_Usuarios_Encuestas] FOREIGN KEY([Encu_UsuId])
REFERENCES [SoporteTecnico].[Tb_Usuarios] ([Usu_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_EncuestasUsuarios] CHECK CONSTRAINT [Fk_Usuarios_Encuestas]
GO
ALTER TABLE [SoporteTecnico].[Tb_EquiposHardwares]  WITH CHECK ADD  CONSTRAINT [Fk_Equipos_EquiposHardwares] FOREIGN KEY([EqHard_EquipoId])
REFERENCES [SoporteTecnico].[Tb_Equipos] ([Equipo_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_EquiposHardwares] CHECK CONSTRAINT [Fk_Equipos_EquiposHardwares]
GO
ALTER TABLE [SoporteTecnico].[Tb_EquiposHardwares]  WITH CHECK ADD  CONSTRAINT [Fk_Hardwares_EquiposHardwares] FOREIGN KEY([EqHard_HardId])
REFERENCES [SoporteTecnico].[Tb_Hardwares] ([Hard_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_EquiposHardwares] CHECK CONSTRAINT [Fk_Hardwares_EquiposHardwares]
GO
ALTER TABLE [SoporteTecnico].[Tb_EquiposSoftwares]  WITH CHECK ADD  CONSTRAINT [Fk_Equipos_EquiposSoftwares] FOREIGN KEY([EqSoft_EquipoId])
REFERENCES [SoporteTecnico].[Tb_Equipos] ([Equipo_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_EquiposSoftwares] CHECK CONSTRAINT [Fk_Equipos_EquiposSoftwares]
GO
ALTER TABLE [SoporteTecnico].[Tb_EquiposSoftwares]  WITH CHECK ADD  CONSTRAINT [Fk_Softwares_EquiposSoftwares] FOREIGN KEY([EqSoft_SoftId])
REFERENCES [SoporteTecnico].[Tb_Softwares] ([Soft_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_EquiposSoftwares] CHECK CONSTRAINT [Fk_Softwares_EquiposSoftwares]
GO
ALTER TABLE [SoporteTecnico].[Tb_Hardwares]  WITH CHECK ADD  CONSTRAINT [Fk_Marcas_Hardware] FOREIGN KEY([Hard_MarHarId])
REFERENCES [SoporteTecnico].[Tb_Marcas] ([MarHar_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_Hardwares] CHECK CONSTRAINT [Fk_Marcas_Hardware]
GO
ALTER TABLE [SoporteTecnico].[Tb_Hardwares]  WITH CHECK ADD  CONSTRAINT [Fk_TiposHardwares_Hardwares] FOREIGN KEY([Hard_TipoHardId])
REFERENCES [SoporteTecnico].[Tb_TiposHardwares] ([TipHar_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_Hardwares] CHECK CONSTRAINT [Fk_TiposHardwares_Hardwares]
GO
ALTER TABLE [SoporteTecnico].[Tb_MunicipiosDirecciones]  WITH CHECK ADD  CONSTRAINT [Fk_DepartamentosDirecciones_MunicipiosDirecciones] FOREIGN KEY([MunDir_DepDirId])
REFERENCES [SoporteTecnico].[Tb_DepartamentosDirecciones] ([DepDir_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_MunicipiosDirecciones] CHECK CONSTRAINT [Fk_DepartamentosDirecciones_MunicipiosDirecciones]
GO
ALTER TABLE [SoporteTecnico].[Tb_PerfilesTecnicos]  WITH CHECK ADD  CONSTRAINT [Fk_TiposTecnicos_PerfilesTecnicos] FOREIGN KEY([PefTec_TipTecId])
REFERENCES [SoporteTecnico].[Tb_TiposTecnicos] ([TipTec_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_PerfilesTecnicos] CHECK CONSTRAINT [Fk_TiposTecnicos_PerfilesTecnicos]
GO
ALTER TABLE [SoporteTecnico].[Tb_PerfilesTecnicos]  WITH CHECK ADD  CONSTRAINT [Fk_Usuarios_PerfilesTecnicos] FOREIGN KEY([PefTec_UsuId])
REFERENCES [SoporteTecnico].[Tb_Usuarios] ([Usu_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_PerfilesTecnicos] CHECK CONSTRAINT [Fk_Usuarios_PerfilesTecnicos]
GO
ALTER TABLE [SoporteTecnico].[Tb_ProblemasTecnicos]  WITH CHECK ADD  CONSTRAINT [Fk_ProblemasTecTipos_ProblemasTecnicos] FOREIGN KEY([Prob_TipProbId])
REFERENCES [SoporteTecnico].[Tb_ProblemasTecTipos] ([TipoProb_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_ProblemasTecnicos] CHECK CONSTRAINT [Fk_ProblemasTecTipos_ProblemasTecnicos]
GO
ALTER TABLE [SoporteTecnico].[Tb_ProblemasTecnicos]  WITH CHECK ADD  CONSTRAINT [Fk_Usuarios_ProblemasTecnicos] FOREIGN KEY([Prob_UsuId])
REFERENCES [SoporteTecnico].[Tb_Usuarios] ([Usu_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_ProblemasTecnicos] CHECK CONSTRAINT [Fk_Usuarios_ProblemasTecnicos]
GO
ALTER TABLE [SoporteTecnico].[Tb_Puestos]  WITH CHECK ADD  CONSTRAINT [Fk_DepartamentosEmpresas_Puestos] FOREIGN KEY([Puesto_DepEmpId])
REFERENCES [SoporteTecnico].[Tb_DepartamentosEmpresa] ([DepEmp_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_Puestos] CHECK CONSTRAINT [Fk_DepartamentosEmpresas_Puestos]
GO
ALTER TABLE [SoporteTecnico].[Tb_PuntuacionesTecnicos]  WITH CHECK ADD  CONSTRAINT [Fk_EncuestasRespuestas_PuntuacionesTecnicos] FOREIGN KEY([Punt_EnRespId])
REFERENCES [SoporteTecnico].[Tb_EncuestasRespuestas] ([EnResp_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_PuntuacionesTecnicos] CHECK CONSTRAINT [Fk_EncuestasRespuestas_PuntuacionesTecnicos]
GO
ALTER TABLE [SoporteTecnico].[Tb_PuntuacionesTecnicos]  WITH CHECK ADD  CONSTRAINT [Fk_PerfilesTecnicos_PuntuacionesTecnicos] FOREIGN KEY([Punt_PefTecId])
REFERENCES [SoporteTecnico].[Tb_PerfilesTecnicos] ([PefTec_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_PuntuacionesTecnicos] CHECK CONSTRAINT [Fk_PerfilesTecnicos_PuntuacionesTecnicos]
GO
ALTER TABLE [SoporteTecnico].[Tb_Secciones]  WITH CHECK ADD  CONSTRAINT [Fk_DepartamentosEmpresa_Secciones] FOREIGN KEY([Sec_DepEmpId])
REFERENCES [SoporteTecnico].[Tb_DepartamentosEmpresa] ([DepEmp_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_Secciones] CHECK CONSTRAINT [Fk_DepartamentosEmpresa_Secciones]
GO
ALTER TABLE [SoporteTecnico].[Tb_Secciones]  WITH CHECK ADD  CONSTRAINT [Fk_Edificio_Secciones] FOREIGN KEY([Sec_EdifId])
REFERENCES [SoporteTecnico].[Tb_Edificios] ([Edif_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_Secciones] CHECK CONSTRAINT [Fk_Edificio_Secciones]
GO
ALTER TABLE [SoporteTecnico].[Tb_Softwares]  WITH CHECK ADD  CONSTRAINT [Fk_Desarrolladoras_Software] FOREIGN KEY([Soft_DesaId])
REFERENCES [SoporteTecnico].[Tb_Desarrolladoras] ([Desa_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_Softwares] CHECK CONSTRAINT [Fk_Desarrolladoras_Software]
GO
ALTER TABLE [SoporteTecnico].[Tb_Softwares]  WITH CHECK ADD  CONSTRAINT [Fk_TiposSoftware_Software] FOREIGN KEY([Soft_TipSoftId])
REFERENCES [SoporteTecnico].[Tb_TiposSoftware] ([TipSof_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_Softwares] CHECK CONSTRAINT [Fk_TiposSoftware_Software]
GO
ALTER TABLE [SoporteTecnico].[Tb_Telefonos]  WITH CHECK ADD  CONSTRAINT [Fk_TelefonosTipos_Telefonos] FOREIGN KEY([Tel_TipTelId])
REFERENCES [SoporteTecnico].[Tb_TelefonosTipos] ([TipTel_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_Telefonos] CHECK CONSTRAINT [Fk_TelefonosTipos_Telefonos]
GO
ALTER TABLE [SoporteTecnico].[Tb_TelefonosEmpleados]  WITH CHECK ADD  CONSTRAINT [Fk_Empleados_Telefonos] FOREIGN KEY([TelEmp_DepEmpId], [TelEmp_PuestoId], [TelEmp_EmpleaId])
REFERENCES [SoporteTecnico].[Tb_Empleados] ([Emplea_DepEmpId], [Emplea_PuestoId], [Emplea_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_TelefonosEmpleados] CHECK CONSTRAINT [Fk_Empleados_Telefonos]
GO
ALTER TABLE [SoporteTecnico].[Tb_TelefonosEmpleados]  WITH CHECK ADD  CONSTRAINT [Fk_Telefonos_Empleados] FOREIGN KEY([TelEmp_TelId])
REFERENCES [SoporteTecnico].[Tb_Telefonos] ([Tel_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_TelefonosEmpleados] CHECK CONSTRAINT [Fk_Telefonos_Empleados]
GO
ALTER TABLE [SoporteTecnico].[Tb_TicketsReporte]  WITH CHECK ADD  CONSTRAINT [Fk_EstadosTickets_TicketsReportes] FOREIGN KEY([Ticket_EstadoId])
REFERENCES [SoporteTecnico].[Tb_EstadosTickets] ([Estado_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_TicketsReporte] CHECK CONSTRAINT [Fk_EstadosTickets_TicketsReportes]
GO
ALTER TABLE [SoporteTecnico].[Tb_TicketsReporte]  WITH CHECK ADD  CONSTRAINT [Fk_PerfilesTecnicos_TicketsReportes] FOREIGN KEY([Ticket_PefTecId])
REFERENCES [SoporteTecnico].[Tb_PerfilesTecnicos] ([PefTec_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_TicketsReporte] CHECK CONSTRAINT [Fk_PerfilesTecnicos_TicketsReportes]
GO
ALTER TABLE [SoporteTecnico].[Tb_TicketsReporte]  WITH CHECK ADD  CONSTRAINT [Fk_PrioridadesTickets_TicketsReportes] FOREIGN KEY([Ticket_PriordId])
REFERENCES [SoporteTecnico].[Tb_PrioridadesTickets] ([Priord_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_TicketsReporte] CHECK CONSTRAINT [Fk_PrioridadesTickets_TicketsReportes]
GO
ALTER TABLE [SoporteTecnico].[Tb_TicketsReporte]  WITH CHECK ADD  CONSTRAINT [Fk_Ticket_ProbId] FOREIGN KEY([Ticket_ProbId])
REFERENCES [SoporteTecnico].[Tb_ProblemasTecnicos] ([Prob_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_TicketsReporte] CHECK CONSTRAINT [Fk_Ticket_ProbId]
GO
ALTER TABLE [SoporteTecnico].[Tb_TicketsResueltos]  WITH CHECK ADD  CONSTRAINT [Fk_PerfilesTecnicos_TicketsResueltos] FOREIGN KEY([TicRes_PefTecId])
REFERENCES [SoporteTecnico].[Tb_PerfilesTecnicos] ([PefTec_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_TicketsResueltos] CHECK CONSTRAINT [Fk_PerfilesTecnicos_TicketsResueltos]
GO
ALTER TABLE [SoporteTecnico].[Tb_TicketsResueltos]  WITH CHECK ADD  CONSTRAINT [Fk_TicketsReporte_TicketsResueltos] FOREIGN KEY([TicRes_ProbId], [TicRes_TicketId])
REFERENCES [SoporteTecnico].[Tb_TicketsReporte] ([Ticket_ProbId], [Ticket_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_TicketsResueltos] CHECK CONSTRAINT [Fk_TicketsReporte_TicketsResueltos]
GO
ALTER TABLE [SoporteTecnico].[Tb_UbicacionesEmpresa]  WITH CHECK ADD  CONSTRAINT [Fk_CubiculosEmpresa_UbicacionesEmpresa] FOREIGN KEY([Ubic_CubicId])
REFERENCES [SoporteTecnico].[Tb_CubiculosEmpresa] ([Cubic_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_UbicacionesEmpresa] CHECK CONSTRAINT [Fk_CubiculosEmpresa_UbicacionesEmpresa]
GO
ALTER TABLE [SoporteTecnico].[Tb_UbicacionesEmpresa]  WITH CHECK ADD  CONSTRAINT [Fk_Empleados_UbicacionesEmpresa] FOREIGN KEY([Ubic_DepEmpId], [Ubic_PuestoId], [Ubic_EmpleaId])
REFERENCES [SoporteTecnico].[Tb_Empleados] ([Emplea_DepEmpId], [Emplea_PuestoId], [Emplea_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_UbicacionesEmpresa] CHECK CONSTRAINT [Fk_Empleados_UbicacionesEmpresa]
GO
ALTER TABLE [SoporteTecnico].[Tb_Usuarios]  WITH CHECK ADD  CONSTRAINT [Fk_Empleados_Usuarios] FOREIGN KEY([Usu_DepEmpId], [Usu_PuestoId], [Usu_EmpleadoId])
REFERENCES [SoporteTecnico].[Tb_Empleados] ([Emplea_DepEmpId], [Emplea_PuestoId], [Emplea_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_Usuarios] CHECK CONSTRAINT [Fk_Empleados_Usuarios]
GO
ALTER TABLE [SoporteTecnico].[Tb_Usuarios]  WITH CHECK ADD  CONSTRAINT [Fk_Equipos_Usuarios] FOREIGN KEY([Usu_EquipoId])
REFERENCES [SoporteTecnico].[Tb_Equipos] ([Equipo_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_Usuarios] CHECK CONSTRAINT [Fk_Equipos_Usuarios]
GO
ALTER TABLE [SoporteTecnico].[Tb_Usuarios]  WITH CHECK ADD  CONSTRAINT [Fk_UbicacionEmpresa_Usuarios] FOREIGN KEY([Usu_UbicId])
REFERENCES [SoporteTecnico].[Tb_UbicacionesEmpresa] ([Ubic_Id])
GO
ALTER TABLE [SoporteTecnico].[Tb_Usuarios] CHECK CONSTRAINT [Fk_UbicacionEmpresa_Usuarios]
GO
ALTER TABLE [SoporteTecnico].[Tb_Emails]  WITH CHECK ADD  CONSTRAINT [Chk_Email_TipEmailId] CHECK  (([Email_TipEmailId]=(2) OR [Email_TipEmailId]=(1)))
GO
ALTER TABLE [SoporteTecnico].[Tb_Emails] CHECK CONSTRAINT [Chk_Email_TipEmailId]
GO
ALTER TABLE [SoporteTecnico].[Tb_Empleados]  WITH CHECK ADD  CONSTRAINT [Chk_Emplead_DPI] CHECK  ((len([Emplea_DPI])=(13)))
GO
ALTER TABLE [SoporteTecnico].[Tb_Empleados] CHECK CONSTRAINT [Chk_Emplead_DPI]
GO
ALTER TABLE [SoporteTecnico].[Tb_Empleados]  WITH CHECK ADD  CONSTRAINT [Chk_GeneroId] CHECK  (([Emplea_GeneroId]=(2) OR [Emplea_GeneroId]=(1)))
GO
ALTER TABLE [SoporteTecnico].[Tb_Empleados] CHECK CONSTRAINT [Chk_GeneroId]
GO
ALTER TABLE [SoporteTecnico].[Tb_EncuestasRespuestas]  WITH CHECK ADD  CONSTRAINT [Chk_Enres_REspId] CHECK  (([EnResp_REspId]=(7) OR [EnResp_REspId]=(6) OR [EnResp_REspId]=(5) OR [EnResp_REspId]=(4) OR [EnResp_REspId]=(3) OR [EnResp_REspId]=(2) OR [EnResp_REspId]=(1)))
GO
ALTER TABLE [SoporteTecnico].[Tb_EncuestasRespuestas] CHECK CONSTRAINT [Chk_Enres_REspId]
GO
ALTER TABLE [SoporteTecnico].[Tb_Hardwares]  WITH CHECK ADD  CONSTRAINT [Chk_Hard_TipoHardId] CHECK  (([Hard_TipoHardId]=(8) OR [Hard_TipoHardId]=(7) OR [Hard_TipoHardId]=(6) OR [Hard_TipoHardId]=(5) OR [Hard_TipoHardId]=(4) OR [Hard_TipoHardId]=(3) OR [Hard_TipoHardId]=(2) OR [Hard_TipoHardId]=(1)))
GO
ALTER TABLE [SoporteTecnico].[Tb_Hardwares] CHECK CONSTRAINT [Chk_Hard_TipoHardId]
GO
ALTER TABLE [SoporteTecnico].[Tb_Softwares]  WITH CHECK ADD  CONSTRAINT [Chk_Soft_TipSoftId] CHECK  (([Soft_TipSoftId]=(10) OR [Soft_TipSoftId]=(9) OR [Soft_TipSoftId]=(8) OR [Soft_TipSoftId]=(7) OR [Soft_TipSoftId]=(6) OR [Soft_TipSoftId]=(5) OR [Soft_TipSoftId]=(4) OR [Soft_TipSoftId]=(3) OR [Soft_TipSoftId]=(2) OR [Soft_TipSoftId]=(1)))
GO
ALTER TABLE [SoporteTecnico].[Tb_Softwares] CHECK CONSTRAINT [Chk_Soft_TipSoftId]
GO
ALTER TABLE [SoporteTecnico].[Tb_Telefonos]  WITH CHECK ADD  CONSTRAINT [Chk_Tel_TipTelId] CHECK  (([Tel_TipTelId]=(3) OR [Tel_TipTelId]=(2) OR [Tel_TipTelId]=(1)))
GO
ALTER TABLE [SoporteTecnico].[Tb_Telefonos] CHECK CONSTRAINT [Chk_Tel_TipTelId]
GO
/****** Object:  StoredProcedure [dbo].[asociar_equipo]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[asociar_equipo]
@Equipo_Id int,
@Soft_Id int

as
if exists(select * from SoporteTecnico.Tb_EquiposSoftwares where EqSoft_SoftId = @Soft_Id and EqSoft_EquipoId = @Equipo_Id)
Update SoporteTecnico.Tb_EquiposSoftwares
set EqSoft_SoftId = @Soft_Id, EqSoft_EquipoId = @Equipo_Id
		ELSE
		   INSERT INTO  SoporteTecnico.Tb_EquiposSoftwares(EqSoft_SoftId,EqSoft_EquipoId)
     VALUES
		    (@Soft_Id, @Equipo_Id)
GO
/****** Object:  StoredProcedure [dbo].[asociar_software]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[asociar_software]
@Software_Id int,
@Equipo_Id int
as
if exists(select * from SoporteTecnico.Tb_EquiposSoftwares where EqSoft_SoftId = @Software_Id AND EqSoft_EquipoId = @Equipo_Id)
RAISERROR ('El software ya esta asociado', 16,1)
		ELSE
		   INSERT INTO  SoporteTecnico.Tb_EquiposSoftwares(EqSoft_Id,EqSoft_EquipoId)
     VALUES
		    (@Software_Id,@Equipo_Id)
GO
/****** Object:  StoredProcedure [dbo].[buscar_usuario]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[buscar_usuario]
@Dep_Id int,
@Puesto_Id int,
@Emplea_Id int
as
if exists(select * from SoporteTecnico.Tb_Usuarios where Usu_DepEmpId = @Dep_Id and Usu_EmpleadoId = @Emplea_Id and Usu_PuestoId = @Puesto_Id)
select * from SoporteTecnico.Tb_Usuarios inner join SoporteTecnico.Tb_Equipos on Usu_EquipoId = Equipo_Id where Usu_DepEmpId = @Dep_Id and Usu_EmpleadoId = @Emplea_Id and Usu_PuestoId = @Puesto_Id

else 
raiserror ('Nuevo',16,1)
GO
/****** Object:  StoredProcedure [dbo].[correo_tecnico]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[correo_tecnico]
@Prob_Id int
as
select 
E.Emplea_Nombre, E.Emplea_Apellido,
TR.Ticket_Id, TR.Ticket_FechaCreacion, TR.Ticket_FechaLimite,
Em.Email_Direccion,
Prt.Prob_DetalleProblema, PTT.TipProb_Nombre, Prio.Priord_Nombre
from SoporteTecnico.Tb_PerfilesTecnicos as PT
inner join 
SoporteTecnico.Tb_Usuarios as U
on PT.PefTec_UsuId = U.Usu_Id
inner join SoporteTecnico.Tb_Empleados as E
on U.Usu_EmpleadoId = E.Emplea_Id
inner join SoporteTecnico.Tb_TicketsReporte as TR
on PT.PefTec_Id = TR.Ticket_PefTecId
inner join SoporteTecnico.Tb_Emails as EM
on EM.Email_EmpleaId = E.Emplea_Id
inner join SoporteTecnico.Tb_ProblemasTecnicos as Prt
on TR.Ticket_ProbId = Prt.Prob_Id
inner join SoporteTecnico.Tb_ProblemasTecTipos as PTT
on Prt.Prob_TipProbId = PTT.TipoProb_Id
inner join SoporteTecnico.Tb_PrioridadesTickets as Prio
on TR.Ticket_PriordId = Prio.Priord_Id
where TR.Ticket_ProbId = @Prob_Id and Em.Email_TipEmailId = 2
GO
/****** Object:  StoredProcedure [dbo].[correo_usuario]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[correo_usuario]
@Prob_Id int
as
select EM.Email_Direccion, PT.Prob_FechaReporte, E.Emplea_Nombre, E.Emplea_Apellido, 
TR.Ticket_Id, TR.Ticket_FechaCreacion, TR.Ticket_FechaLimite
from SoporteTecnico.Tb_ProblemasTecnicos as PT
inner join 
SoporteTecnico.Tb_Usuarios as U
on PT.Prob_UsuId = U.Usu_Id
inner join 
SoporteTecnico.Tb_Empleados as E
on U.Usu_EmpleadoId = E.Emplea_Id
inner join SoporteTecnico.Tb_Emails as EM
on EM.Email_EmpleaId = E.Emplea_Id
inner join 
SoporteTecnico.Tb_TicketsReporte as TR
on TR.Ticket_ProbId = PT.Prob_Id
where PT.Prob_Id = @Prob_Id and EM.Email_TipEmailId = 2 and TR.Ticket_ProbId = @Prob_Id
GO
/****** Object:  StoredProcedure [dbo].[detalle_problemas]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[detalle_problemas]
@Usu_Id int
as
select U.Usu_UserName, PT.Prob_Id, PT.Prob_ImagenProblema, PT.Prob_DetalleProblema, 
PT.Prob_FechaReporte, P.Puesto_Nombre, E.Emplea_Nombre, E.Emplea_Apellido, PTT.TipProb_Nombre, 
CE.Cubic_Nombre, S.Sec_Nombre, S.Sec_NivelEdificioUbic
from 
SoporteTecnico.Tb_ProblemasTecnicos as PT
inner join 
SoporteTecnico.Tb_Usuarios as U
on PT.Prob_UsuId = U.Usu_Id
inner join SoporteTecnico.Tb_Puestos as P
on U.Usu_PuestoId = P.Puesto_Id inner join SoporteTecnico.Tb_Empleados as E
on U.Usu_EmpleadoId = E.Emplea_Id inner join SoporteTecnico.Tb_ProblemasTecTipos as PTT
on PT.Prob_TipProbId = PTT.TipoProb_Id inner join SoporteTecnico.Tb_UbicacionesEmpresa as UE
on U.Usu_UbicId = UE.Ubic_Id inner join SoporteTecnico.Tb_CubiculosEmpresa CE
on UE.Ubic_CubicId = CE.Cubic_Id inner join SoporteTecnico.Tb_Secciones S
on CE.Cubic_SecId = S.Sec_Id
where PT.Prob_Id = @Usu_Id
GO
/****** Object:  StoredProcedure [dbo].[ingresar_equipos]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ingresar_equipos]
@equipo nvarchar(25),
@modelo nvarchar(10),
@fecha datetime,
@Equipo_Id int
as
if exists(select Equipo_Nombre, Equipo_Id from SoporteTecnico.Tb_Equipos where Equipo_Nombre = @equipo)
Update SoporteTecnico.Tb_Equipos
set Equipo_Nombre = @equipo, Equipo_Modelo = @modelo, Equipo_FechaCompra = @fecha
where Equipo_Id = @Equipo_Id
		ELSE
		   INSERT INTO  SoporteTecnico.Tb_Equipos
     VALUES
		    (@equipo,@modelo,@fecha)
GO
/****** Object:  StoredProcedure [dbo].[ingresar_problema]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ingresar_problema]
@Usu_Id int,
@fecha datetime,
@detalle nvarchar(100),
@tipo_Id int,
@imagen image
as
if exists(select * from SoporteTecnico.Tb_ProblemasTecnicos where Prob_UsuId = @Usu_Id and Prob_FechaReporte = @fecha and Prob_TipProbId =@tipo_Id)
raiserror('El problema ya ha sido registrado',16,1)
else
insert into SoporteTecnico.Tb_ProblemasTecnicos
values(@tipo_Id, @detalle,@imagen,@fecha, @Usu_Id)
GO
/****** Object:  StoredProcedure [dbo].[nuevo_ticket]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[nuevo_ticket]
@Prob_Id int,
@Estado int,
@Prioridad int,
@Tecnico int,
@FechaI datetime,
@FechaLI datetime
as
if exists(select * from SoporteTecnico.Tb_TicketsReporte where Ticket_ProbId = @Prob_Id)
update SoporteTecnico.Tb_TicketsReporte
set Ticket_EstadoId = @Estado, Ticket_PriordId = @Prioridad, Ticket_PefTecId = @Tecnico, Ticket_FechaCreacion = @FechaI, Ticket_FechaLimite=@FechaLI
else
insert into SoporteTecnico.Tb_TicketsReporte
values(@Prob_Id, @Estado, @Prioridad, @Tecnico, @FechaI, @FechaLI)
GO
/****** Object:  StoredProcedure [dbo].[nuevo_usuario]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[nuevo_usuario]
@Dep_Id int,
@Puesto_Id int,
@Emplea_Id int,
@Emplea_Pass nvarchar(10),
@Emplea_User nvarchar(10),
@Ubic int,
@Equipo int
as


if exists(select * from SoporteTecnico.Tb_Usuarios where Usu_DepEmpId = @Dep_Id and Usu_EmpleadoId = @Emplea_Id and Usu_PuestoId = @Puesto_Id)
update SoporteTecnico.Tb_Usuarios
set Usu_UserName = @Emplea_User, Usu_Password = @Emplea_Pass, Usu_EquipoId = @Equipo

else 

insert into SoporteTecnico.Tb_Usuarios(Usu_UserName, Usu_Password, Usu_EmpleadoId, Usu_PuestoId, Usu_DepEmpId, Usu_UbicId, Usu_EquipoId)
values(@Emplea_User, @Emplea_Pass, @Emplea_Id, @Puesto_Id, @Dep_Id, @Ubic, @Equipo)
GO
/****** Object:  StoredProcedure [dbo].[obtener_EqSoft]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[obtener_EqSoft]
@Equipo_Id int
as
select * from SoporteTecnico.Tb_EquiposSoftwares as ES 
inner join SoporteTecnico.Tb_Softwares as S 
on ES.EqSoft_SoftId = S.Soft_Id where ES.EqSoft_EquipoId = @Equipo_Id
GO
/****** Object:  StoredProcedure [dbo].[obtener_equipo]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[obtener_equipo]
@Equipo nvarchar(30)
as
select * from SoporteTecnico.Tb_Equipos where Equipo_Nombre = @Equipo
GO
/****** Object:  StoredProcedure [dbo].[obtener_usuario]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[obtener_usuario]
as
select * from SoporteTecnico.Tb_Usuarios inner join SoporteTecnico.Tb_Empleados on 
Usu_EmpleadoId = Emplea_Id inner join SoporteTecnico.Tb_Equipos on Usu_EquipoId = Equipo_Id
GO
/****** Object:  StoredProcedure [dbo].[obtenerEquiposSoftwares]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[obtenerEquiposSoftwares]
as
select * from SoporteTecnico.Tb_EquiposSoftwares as ES 
inner join SoporteTecnico.Tb_Equipos as E 
on ES.EqSoft_EquipoId = E.Equipo_Id inner join SoporteTecnico.Tb_Softwares as S on ES.EqSoft_SoftId = s.Soft_Id
GO
/****** Object:  StoredProcedure [dbo].[problemas]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[problemas]
as
select * from SoporteTecnico.Tb_ProblemasTecnicos as PT
inner join SoporteTecnico.Tb_Usuarios as U
on PT.Prob_UsuId = U.Usu_Id
inner join SoporteTecnico.Tb_Puestos as P
on U.Usu_PuestoId = P.Puesto_Id inner join SoporteTecnico.Tb_Empleados as E
on U.Usu_EmpleadoId = E.Emplea_Id inner join SoporteTecnico.Tb_ProblemasTecTipos as PTT
on PT.Prob_TipProbId = PTT.TipoProb_Id
order by Prob_FechaReporte desc
GO
/****** Object:  StoredProcedure [dbo].[seguimiento_ticket]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[seguimiento_ticket]
as
select * from SoporteTecnico.Tb_TicketsReporte as TR
inner join 
SoporteTecnico.Tb_ProblemasTecnicos as PT
on TR.Ticket_ProbId = PT.Prob_Id
inner join 
SoporteTecnico.Tb_PerfilesTecnicos as per
on TR.Ticket_PefTecId = per.PefTec_Id
inner join 
SoporteTecnico.Tb_Usuarios as U
on per.PefTec_UsuId = U.Usu_Id
inner join SoporteTecnico.Tb_Empleados as E
on U.Usu_EmpleadoId = E.Emplea_Id
inner join 
SoporteTecnico.Tb_EstadosTickets as ET
on TR.Ticket_EstadoId = ET.Estado_Id
GO
/****** Object:  StoredProcedure [dbo].[tecnicos]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[tecnicos]
as
select * from SoporteTecnico.Tb_PerfilesTecnicos inner join SoporteTecnico.Tb_Usuarios on PefTec_UsuId = Usu_Id 
inner join SoporteTecnico.Tb_Empleados on Usu_EmpleadoId = Emplea_Id
GO
/****** Object:  StoredProcedure [dbo].[verificar_empleado]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[verificar_empleado]
@Dep_Id int,
@Puesto_Id int,
@Emplea_Id int 
as
if exists(select * from SoporteTecnico.Tb_Empleados where Emplea_DepEmpId = @Dep_Id and Emplea_PuestoId = @Puesto_Id and Emplea_Id = @Emplea_Id)

Select * From SoporteTecnico.Tb_Empleados inner join SoporteTecnico.Tb_UbicacionesEmpresa on Emplea_Id = Ubic_EmpleaId 
Where Emplea_DepEmpId = @Dep_Id and Emplea_PuestoId = @Puesto_Id and Emplea_Id = @Emplea_Id
else 
RAISERROR ('El empleado no existe, verifique los datos', 16,1)
GO
/****** Object:  StoredProcedure [dbo].[verificar_login]    Script Date: 26/10/2020 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[verificar_login]
@User nvarchar(10),
@Pass nvarchar(10)
as
if exists(select * from SoporteTecnico.Tb_Usuarios where Usu_UserName = @User and Usu_Password COLLATE Latin1_General_CS_AS = @Pass)
select * from SoporteTecnico.Tb_Usuarios inner join SoporteTecnico.Tb_Puestos on Usu_PuestoId = Puesto_Id 
where Usu_UserName = @User and Usu_Password = @Pass
else
raiserror ('Usuario o Password incorrectos, Intente de nuevo',16,1)
GO
USE [master]
GO
ALTER DATABASE [ProyectoFinal] SET  READ_WRITE 
GO
