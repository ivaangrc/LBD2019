USE [practica2]
GO
ALTER TABLE [dbo].[ticket] DROP CONSTRAINT [CK__ticket__estado__37A5467C]
GO
ALTER TABLE [dbo].[organizacion] DROP CONSTRAINT [CK__organizac__estad__3D5E1FD2]
GO
ALTER TABLE [dbo].[contrato] DROP CONSTRAINT [CK__contrato__tipoMo__403A8C7D]
GO
ALTER TABLE [dbo].[contrato] DROP CONSTRAINT [CK__contrato__estado__412EB0B6]
GO
ALTER TABLE [dbo].[contacto] DROP CONSTRAINT [CK__contacto__estado__3A81B327]
GO
/****** Object:  Index [indx_contrato_nombre]    Script Date: 03/12/2019 05:44:26 p. m. ******/
DROP INDEX [indx_contrato_nombre] ON [dbo].[contrato]
GO
/****** Object:  Index [indx_contacto_nombre]    Script Date: 03/12/2019 05:44:26 p. m. ******/
DROP INDEX [indx_contacto_nombre] ON [dbo].[contacto]
GO
/****** Object:  Table [dbo].[ticket]    Script Date: 03/12/2019 05:44:26 p. m. ******/
DROP TABLE [dbo].[ticket]
GO
/****** Object:  Table [dbo].[persona]    Script Date: 03/12/2019 05:44:26 p. m. ******/
DROP TABLE [dbo].[persona]
GO
/****** Object:  Table [dbo].[organizacion]    Script Date: 03/12/2019 05:44:26 p. m. ******/
DROP TABLE [dbo].[organizacion]
GO
/****** Object:  Table [dbo].[contrato]    Script Date: 03/12/2019 05:44:26 p. m. ******/
DROP TABLE [dbo].[contrato]
GO
/****** Object:  Table [dbo].[contacto]    Script Date: 03/12/2019 05:44:26 p. m. ******/
DROP TABLE [dbo].[contacto]
GO
USE [master]
GO
/****** Object:  Database [practica2]    Script Date: 03/12/2019 05:44:26 p. m. ******/
DROP DATABASE [practica2]
GO
/****** Object:  Database [practica2]    Script Date: 03/12/2019 05:44:26 p. m. ******/
CREATE DATABASE [practica2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'practica2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\practica2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'practica2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\practica2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [practica2] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [practica2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [practica2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [practica2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [practica2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [practica2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [practica2] SET ARITHABORT OFF 
GO
ALTER DATABASE [practica2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [practica2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [practica2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [practica2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [practica2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [practica2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [practica2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [practica2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [practica2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [practica2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [practica2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [practica2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [practica2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [practica2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [practica2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [practica2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [practica2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [practica2] SET RECOVERY FULL 
GO
ALTER DATABASE [practica2] SET  MULTI_USER 
GO
ALTER DATABASE [practica2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [practica2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [practica2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [practica2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [practica2] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'practica2', N'ON'
GO
ALTER DATABASE [practica2] SET QUERY_STORE = OFF
GO
USE [practica2]
GO
/****** Object:  Table [dbo].[contacto]    Script Date: 03/12/2019 05:44:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contacto](
	[contacto_id] [int] NOT NULL,
	[nombre] [varchar](255) NULL,
	[ApellidoPaterno] [varchar](255) NULL,
	[ApellidoMaterno] [varchar](255) NULL,
	[NombreCompleto]  AS (((([nombre]+' ')+[ApellidoPaterno])+' ')+[ApellidoMaterno]),
	[estado] [varchar](15) NOT NULL,
	[organizacion_id] [int] NULL,
	[email] [varchar](255) NULL,
	[telefono] [varchar](255) NULL,
	[funcion] [varchar](255) NULL,
	[fecharegistro] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[contacto_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contrato]    Script Date: 03/12/2019 05:44:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contrato](
	[contrato_id] [int] NOT NULL,
	[nombre] [varchar](255) NULL,
	[organizacion_id] [int] NULL,
	[descripcion] [varchar](255) NULL,
	[comienzo] [date] NULL,
	[fin] [date] NULL,
	[costo] [varchar](255) NULL,
	[tipoMoneda] [varchar](15) NOT NULL,
	[tipoDeContrato] [varchar](255) NULL,
	[frecuenciaDeFacturacion] [varchar](255) NULL,
	[provedor_id] [int] NULL,
	[estado] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[contrato_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[organizacion]    Script Date: 03/12/2019 05:44:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[organizacion](
	[organizacion_id] [int] NOT NULL,
	[nombre] [varchar](255) NULL,
	[codigo] [varchar](255) NULL,
	[estado] [varchar](15) NOT NULL,
	[padre] [int] NULL,
	[fecharegistro] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[organizacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[persona]    Script Date: 03/12/2019 05:44:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[persona](
	[persona_id] [int] NOT NULL,
	[nombre] [varchar](255) NULL,
	[numeroEmpleado] [varchar](255) NULL,
	[numeroCelular] [varchar](255) NULL,
	[ubicacion_id] [int] NULL,
	[jefe_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[persona_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ticket]    Script Date: 03/12/2019 05:44:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticket](
	[ticket_id] [int] NOT NULL,
	[estado] [varchar](15) NOT NULL,
	[organizacion_id] [int] NULL,
	[reportadopor_id] [int] NULL,
	[equipo_id] [int] NULL,
	[titulo] [varchar](255) NULL,
	[descripcion] [varchar](255) NULL,
	[inicio] [datetime] NULL,
	[fin] [datetime] NULL,
	[duracion]  AS ((('comienzo en '+[inicio])+'y termino en ')+[fin]),
	[ultima_actualizacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ticket_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [indx_contacto_nombre]    Script Date: 03/12/2019 05:44:27 p. m. ******/
CREATE NONCLUSTERED INDEX [indx_contacto_nombre] ON [dbo].[contacto]
(
	[NombreCompleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indx_contrato_nombre]    Script Date: 03/12/2019 05:44:27 p. m. ******/
CREATE NONCLUSTERED INDEX [indx_contrato_nombre] ON [dbo].[contrato]
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[contacto]  WITH CHECK ADD CHECK  (([estado]='inactivo' OR [estado]='activo'))
GO
ALTER TABLE [dbo].[contrato]  WITH CHECK ADD CHECK  (([estado]='obsoleto' OR [estado]='No productivo' OR [estado]='productivo'))
GO
ALTER TABLE [dbo].[contrato]  WITH CHECK ADD CHECK  (([tipoMoneda]='euro' OR [tipoMoneda]='dollar' OR [tipoMoneda]='peso'))
GO
ALTER TABLE [dbo].[organizacion]  WITH CHECK ADD CHECK  (([estado]='inactivo' OR [estado]='activo'))
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD CHECK  (([estado]='resuelto' OR [estado]='procesando' OR [estado]='cerrado'))
GO
USE [master]
GO
ALTER DATABASE [practica2] SET  READ_WRITE 
GO
