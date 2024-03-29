USE [practica2]
GO
/****** Object:  Trigger [tr_insContrato]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP TRIGGER [dbo].[tr_insContrato]
GO
/****** Object:  StoredProcedure [dbo].[sp_VerPersona]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP PROCEDURE [dbo].[sp_VerPersona]
GO
/****** Object:  StoredProcedure [dbo].[sp_VerIncidente]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP PROCEDURE [dbo].[sp_VerIncidente]
GO
/****** Object:  StoredProcedure [dbo].[sp_VerDispositivo]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP PROCEDURE [dbo].[sp_VerDispositivo]
GO
/****** Object:  StoredProcedure [dbo].[sp_VerContrato]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP PROCEDURE [dbo].[sp_VerContrato]
GO
/****** Object:  StoredProcedure [dbo].[sp_VerContacto]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP PROCEDURE [dbo].[sp_VerContacto]
GO
ALTER TABLE [dbo].[ubicacion] DROP CONSTRAINT [CK__ubicacion__estad__6383C8BA]
GO
ALTER TABLE [dbo].[ticket] DROP CONSTRAINT [CK__ticket__estado__37A5467C]
GO
ALTER TABLE [dbo].[solucion_aplicativa] DROP CONSTRAINT [CK__solucion___estad__0B91BA14]
GO
ALTER TABLE [dbo].[servicio] DROP CONSTRAINT [CK__servicio__tipo_r__07C12930]
GO
ALTER TABLE [dbo].[servicio] DROP CONSTRAINT [CK__servicio__estado__08B54D69]
GO
ALTER TABLE [dbo].[requerimiento] DROP CONSTRAINT [CK__requerimi__urgen__3A4CA8FD]
GO
ALTER TABLE [dbo].[requerimiento] DROP CONSTRAINT [CK__requerimi__satis__3F115E1A]
GO
ALTER TABLE [dbo].[requerimiento] DROP CONSTRAINT [CK__requerimi__orige__3B40CD36]
GO
ALTER TABLE [dbo].[requerimiento] DROP CONSTRAINT [CK__requerimi__impac__395884C4]
GO
ALTER TABLE [dbo].[requerimiento] DROP CONSTRAINT [CK__requerimi__estad__3864608B]
GO
ALTER TABLE [dbo].[problema] DROP CONSTRAINT [CK__problema__urgenc__29221CFB]
GO
ALTER TABLE [dbo].[problema] DROP CONSTRAINT [CK__problema__satisf__2CF2ADDF]
GO
ALTER TABLE [dbo].[problema] DROP CONSTRAINT [CK__problema__impact__282DF8C2]
GO
ALTER TABLE [dbo].[problema] DROP CONSTRAINT [CK__problema__estado__2739D489]
GO
ALTER TABLE [dbo].[organizacion] DROP CONSTRAINT [CK__organizac__estad__3D5E1FD2]
GO
ALTER TABLE [dbo].[ordentrabajo] DROP CONSTRAINT [CK__ordentrab__estad__6EF57B66]
GO
ALTER TABLE [dbo].[incidente] DROP CONSTRAINT [CK__incidente__urgen__14270015]
GO
ALTER TABLE [dbo].[incidente] DROP CONSTRAINT [CK__incidente__satis__18EBB532]
GO
ALTER TABLE [dbo].[incidente] DROP CONSTRAINT [CK__incidente__orige__151B244E]
GO
ALTER TABLE [dbo].[incidente] DROP CONSTRAINT [CK__incidente__impac__1332DBDC]
GO
ALTER TABLE [dbo].[incidente] DROP CONSTRAINT [CK__incidente__estad__123EB7A3]
GO
ALTER TABLE [dbo].[grupo] DROP CONSTRAINT [CK__grupo__estado__5CD6CB2B]
GO
ALTER TABLE [dbo].[contrato] DROP CONSTRAINT [CK__contrato__tipoMo__403A8C7D]
GO
ALTER TABLE [dbo].[contrato] DROP CONSTRAINT [CK__contrato__estado__412EB0B6]
GO
ALTER TABLE [dbo].[contacto] DROP CONSTRAINT [CK__contacto__estado__3A81B327]
GO
ALTER TABLE [dbo].[cambio] DROP CONSTRAINT [CK__cambio__tipo_cam__7B5B524B]
GO
ALTER TABLE [dbo].[cambio] DROP CONSTRAINT [CK__cambio__estado__7A672E12]
GO
ALTER TABLE [dbo].[ubicacion] DROP CONSTRAINT [FK_orgid_ubi]
GO
ALTER TABLE [dbo].[ticket] DROP CONSTRAINT [FK_reportadopor]
GO
ALTER TABLE [dbo].[ticket] DROP CONSTRAINT [FK_orgaID]
GO
ALTER TABLE [dbo].[ticket] DROP CONSTRAINT [FK_grupo]
GO
ALTER TABLE [dbo].[ticket] DROP CONSTRAINT [FK_analista]
GO
ALTER TABLE [dbo].[servicio] DROP CONSTRAINT [FK_orgid_serv]
GO
ALTER TABLE [dbo].[requerimiento] DROP CONSTRAINT [FK_ticket_req]
GO
ALTER TABLE [dbo].[requerimiento] DROP CONSTRAINT [FK_servie_req]
GO
ALTER TABLE [dbo].[requerimiento] DROP CONSTRAINT [FK_orden_req]
GO
ALTER TABLE [dbo].[requerimiento] DROP CONSTRAINT [FK_dispositivo_req]
GO
ALTER TABLE [dbo].[problema] DROP CONSTRAINT [FK_ticket_prom]
GO
ALTER TABLE [dbo].[problema] DROP CONSTRAINT [FK_servicio_prom]
GO
ALTER TABLE [dbo].[problema] DROP CONSTRAINT [FK_orden_prom]
GO
ALTER TABLE [dbo].[problema] DROP CONSTRAINT [FK_error_prom]
GO
ALTER TABLE [dbo].[problema] DROP CONSTRAINT [FK_dispositivo_prom]
GO
ALTER TABLE [dbo].[persona] DROP CONSTRAINT [FK_ubii]
GO
ALTER TABLE [dbo].[persona] DROP CONSTRAINT [FK_persona_contacto]
GO
ALTER TABLE [dbo].[persona] DROP CONSTRAINT [FK_jefe]
GO
ALTER TABLE [dbo].[organizacion] DROP CONSTRAINT [FK_padre_org]
GO
ALTER TABLE [dbo].[ordentrabajo] DROP CONSTRAINT [FK_trabajador]
GO
ALTER TABLE [dbo].[ordentrabajo] DROP CONSTRAINT [FK_ticket_orden]
GO
ALTER TABLE [dbo].[ordentrabajo] DROP CONSTRAINT [FK_grupo_orden]
GO
ALTER TABLE [dbo].[incidente] DROP CONSTRAINT [FK_ticket_inc]
GO
ALTER TABLE [dbo].[incidente] DROP CONSTRAINT [FK_servie_inc]
GO
ALTER TABLE [dbo].[incidente] DROP CONSTRAINT [FK_orden_inc]
GO
ALTER TABLE [dbo].[incidente] DROP CONSTRAINT [FK_dispositivo_inc]
GO
ALTER TABLE [dbo].[grupo] DROP CONSTRAINT [FK_orgid_grupo]
GO
ALTER TABLE [dbo].[grupo] DROP CONSTRAINT [FK_contacto_grupo]
GO
ALTER TABLE [dbo].[error] DROP CONSTRAINT [FK_solucion_erro]
GO
ALTER TABLE [dbo].[dispositivo] DROP CONSTRAINT [FK_org_disp]
GO
ALTER TABLE [dbo].[contrato] DROP CONSTRAINT [FK_provedor_contrato]
GO
ALTER TABLE [dbo].[contrato] DROP CONSTRAINT [FK_orgaIDcontrato]
GO
ALTER TABLE [dbo].[contrato] DROP CONSTRAINT [FK_contacto_contrato]
GO
ALTER TABLE [dbo].[contacto] DROP CONSTRAINT [FK_orgaIDcontacto]
GO
ALTER TABLE [dbo].[cambio] DROP CONSTRAINT [FK_ticket_cambio]
GO
ALTER TABLE [dbo].[cambio] DROP CONSTRAINT [FK_supervisor]
GO
ALTER TABLE [dbo].[cambio] DROP CONSTRAINT [FK_requeripo]
GO
ALTER TABLE [dbo].[cambio] DROP CONSTRAINT [FK_orgid_cambio]
GO
ALTER TABLE [dbo].[cambio] DROP CONSTRAINT [FK_orden_cambio]
GO
ALTER TABLE [dbo].[cambio] DROP CONSTRAINT [FK_grupo_supervisor]
GO
ALTER TABLE [dbo].[cambio] DROP CONSTRAINT [FK_disp_cambio]
GO
/****** Object:  Index [UQ__persona__49C3142C3E93C7DD]    Script Date: 05/12/2019 10:19:17 p. m. ******/
ALTER TABLE [dbo].[persona] DROP CONSTRAINT [UQ__persona__49C3142C3E93C7DD]
GO
/****** Object:  Index [UQ__organiza__40F9A206DD01EB6C]    Script Date: 05/12/2019 10:19:17 p. m. ******/
ALTER TABLE [dbo].[organizacion] DROP CONSTRAINT [UQ__organiza__40F9A206DD01EB6C]
GO
/****** Object:  Index [UQ__error__018D5111DE2AA9F8]    Script Date: 05/12/2019 10:19:17 p. m. ******/
ALTER TABLE [dbo].[error] DROP CONSTRAINT [UQ__error__018D5111DE2AA9F8]
GO
/****** Object:  Index [indx_contrato_nombre]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP INDEX [indx_contrato_nombre] ON [dbo].[contrato]
GO
/****** Object:  Index [indx_contacto_nombre]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP INDEX [indx_contacto_nombre] ON [dbo].[contacto]
GO
/****** Object:  Table [dbo].[trigContr]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP TABLE [dbo].[trigContr]
GO
/****** Object:  Table [dbo].[ticket]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP TABLE [dbo].[ticket]
GO
/****** Object:  Table [dbo].[solucion_aplicativa]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP TABLE [dbo].[solucion_aplicativa]
GO
/****** Object:  Table [dbo].[servicio]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP TABLE [dbo].[servicio]
GO
/****** Object:  Table [dbo].[requerimiento]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP TABLE [dbo].[requerimiento]
GO
/****** Object:  Table [dbo].[problema]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP TABLE [dbo].[problema]
GO
/****** Object:  Table [dbo].[persona]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP TABLE [dbo].[persona]
GO
/****** Object:  Table [dbo].[ordentrabajo]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP TABLE [dbo].[ordentrabajo]
GO
/****** Object:  Table [dbo].[Nuevo_contacto]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP TABLE [dbo].[Nuevo_contacto]
GO
/****** Object:  Table [dbo].[incidente]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP TABLE [dbo].[incidente]
GO
/****** Object:  Table [dbo].[grupo]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP TABLE [dbo].[grupo]
GO
/****** Object:  Table [dbo].[error]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP TABLE [dbo].[error]
GO
/****** Object:  Table [dbo].[dispositivo]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP TABLE [dbo].[dispositivo]
GO
/****** Object:  Table [dbo].[contrato]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP TABLE [dbo].[contrato]
GO
/****** Object:  Table [dbo].[cambio]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP TABLE [dbo].[cambio]
GO
/****** Object:  View [dbo].[Numpersonas_puesto]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP VIEW [dbo].[Numpersonas_puesto]
GO
/****** Object:  View [dbo].[NUMempleados_empresa]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP VIEW [dbo].[NUMempleados_empresa]
GO
/****** Object:  View [dbo].[vista_per_empre]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP VIEW [dbo].[vista_per_empre]
GO
/****** Object:  Table [dbo].[organizacion]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP TABLE [dbo].[organizacion]
GO
/****** Object:  View [dbo].[ciudades_empresas]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP VIEW [dbo].[ciudades_empresas]
GO
/****** Object:  Table [dbo].[ubicacion]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP TABLE [dbo].[ubicacion]
GO
/****** Object:  View [dbo].[contactos_vista]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP VIEW [dbo].[contactos_vista]
GO
/****** Object:  Table [dbo].[contacto]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP TABLE [dbo].[contacto]
GO
USE [master]
GO
/****** Object:  Database [practica2]    Script Date: 05/12/2019 10:19:17 p. m. ******/
DROP DATABASE [practica2]
GO
/****** Object:  Database [practica2]    Script Date: 05/12/2019 10:19:17 p. m. ******/
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
/****** Object:  Table [dbo].[contacto]    Script Date: 05/12/2019 10:19:18 p. m. ******/
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
/****** Object:  View [dbo].[contactos_vista]    Script Date: 05/12/2019 10:19:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[contactos_vista] as
select * from contacto
where organizacion_id = '6' or organizacion_id = '7'
GO
/****** Object:  Table [dbo].[ubicacion]    Script Date: 05/12/2019 10:19:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ubicacion](
	[ubicacion_id] [int] NOT NULL,
	[nombre] [varchar](255) NULL,
	[estado] [varchar](15) NOT NULL,
	[organizacion_id] [int] NULL,
	[direccion] [text] NULL,
	[codigo_postal] [varchar](255) NULL,
	[ciudad] [varchar](255) NULL,
	[pais] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ubicacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[ciudades_empresas]    Script Date: 05/12/2019 10:19:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ciudades_empresas] as
select count(nombre) as 'numero de empresas', ciudad as 'ciudad' from ubicacion 
group by ciudad 
GO
/****** Object:  Table [dbo].[organizacion]    Script Date: 05/12/2019 10:19:18 p. m. ******/
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
/****** Object:  View [dbo].[vista_per_empre]    Script Date: 05/12/2019 10:19:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vista_per_empre] as
select contacto.nombre as 'nombre empleado', organizacion.nombre as 'nombre empresa' from contacto
inner join organizacion on contacto.organizacion_id = organizacion.organizacion_id
GO
/****** Object:  View [dbo].[NUMempleados_empresa]    Script Date: 05/12/2019 10:19:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[NUMempleados_empresa] as
select count(nombre) as 'numero de empleados por organizacion',organizacion_id from contacto
group by organizacion_id
GO
/****** Object:  View [dbo].[Numpersonas_puesto]    Script Date: 05/12/2019 10:19:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Numpersonas_puesto] as
select count(nombre) as 'numero de contactos', funcion from contacto
group by funcion
GO
/****** Object:  Table [dbo].[cambio]    Script Date: 05/12/2019 10:19:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cambio](
	[cambio_id] [int] NOT NULL,
	[estado] [varchar](15) NOT NULL,
	[tipo_cambio] [varchar](15) NOT NULL,
	[razon] [varchar](255) NULL,
	[requerido_por] [int] NULL,
	[fecha_creacion] [date] NULL,
	[impacto] [varchar](255) NULL,
	[supervisor] [int] NULL,
	[grupo_supervisor] [int] NULL,
	[descripcion] [text] NULL,
	[ticket_id] [int] NULL,
	[organizacion_id] [int] NULL,
	[dispositivo_id] [int] NULL,
	[orden_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cambio_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contrato]    Script Date: 05/12/2019 10:19:18 p. m. ******/
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
	[contacto_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[contrato_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dispositivo]    Script Date: 05/12/2019 10:19:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dispositivo](
	[dispositivo_id] [int] NOT NULL,
	[nombre] [varchar](255) NULL,
	[tipo_dispositivo] [varchar](255) NULL,
	[descripcion] [text] NULL,
	[organizacion_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[dispositivo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[error]    Script Date: 05/12/2019 10:19:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[error](
	[error_id] [int] NOT NULL,
	[nombre] [varchar](255) NULL,
	[descripcion] [text] NULL,
	[error_code] [varchar](255) NULL,
	[solucion_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[error_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[grupo]    Script Date: 05/12/2019 10:19:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grupo](
	[grupo_id] [int] NOT NULL,
	[nombre] [varchar](255) NULL,
	[estado] [varchar](15) NOT NULL,
	[organizacion_id] [int] NULL,
	[contacto_id] [int] NULL,
	[descripcion] [text] NULL,
	[tipodegrupo] [varchar](255) NULL,
	[fechafingrupo] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[grupo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[incidente]    Script Date: 05/12/2019 10:19:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[incidente](
	[incidente_id] [int] NOT NULL,
	[estado] [varchar](15) NOT NULL,
	[impacto] [varchar](15) NOT NULL,
	[urgencia] [varchar](15) NOT NULL,
	[origen] [varchar](15) NOT NULL,
	[servicio_id] [int] NULL,
	[razon] [varchar](255) NULL,
	[fecha_asignacion] [date] NULL,
	[fecha_resolucion] [date] NULL,
	[solucion] [text] NULL,
	[ticket_id] [int] NULL,
	[orden_id] [int] NULL,
	[satisfaccion_usuario] [varchar](15) NOT NULL,
	[comentarios] [text] NULL,
	[dispositivo_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[incidente_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nuevo_contacto]    Script Date: 05/12/2019 10:19:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nuevo_contacto](
	[contacto_id] [int] NOT NULL,
	[nombre] [varchar](255) NULL,
	[ApellidoPaterno] [varchar](255) NULL,
	[ApellidoMaterno] [varchar](255) NULL,
	[NombreCompleto] [varchar](767) NULL,
	[estado] [varchar](15) NOT NULL,
	[organizacion_id] [int] NULL,
	[email] [varchar](255) NULL,
	[telefono] [varchar](255) NULL,
	[funcion] [varchar](255) NULL,
	[fecharegistro] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ordentrabajo]    Script Date: 05/12/2019 10:19:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ordentrabajo](
	[ordentrabajo_id] [int] NOT NULL,
	[nombre] [varchar](255) NULL,
	[estado] [varchar](15) NOT NULL,
	[descripcion] [text] NULL,
	[ticket_id] [int] NULL,
	[grupo_id] [int] NULL,
	[trabajador] [int] NULL,
	[fecha_comienzo] [date] NULL,
	[fecha_termino] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ordentrabajo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[persona]    Script Date: 05/12/2019 10:19:18 p. m. ******/
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
	[contacto_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[persona_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[problema]    Script Date: 05/12/2019 10:19:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[problema](
	[problema_id] [int] NOT NULL,
	[estado] [varchar](15) NOT NULL,
	[impacto] [varchar](15) NOT NULL,
	[urgencia] [varchar](15) NOT NULL,
	[servicio_id] [int] NULL,
	[fecha_asignacion] [date] NULL,
	[fecha_resolucion] [date] NULL,
	[solucion] [text] NULL,
	[ticket_id] [int] NULL,
	[orden_id] [int] NULL,
	[satisfaccion_usuario] [varchar](15) NOT NULL,
	[comentarios] [text] NULL,
	[error_id] [int] NULL,
	[dispositivo_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[problema_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[requerimiento]    Script Date: 05/12/2019 10:19:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[requerimiento](
	[requerimiento_id] [int] NOT NULL,
	[estado] [varchar](15) NOT NULL,
	[impacto] [varchar](15) NOT NULL,
	[urgencia] [varchar](15) NOT NULL,
	[origen] [varchar](15) NOT NULL,
	[servicio_id] [int] NULL,
	[razon] [varchar](255) NULL,
	[fecha_asignacion] [date] NULL,
	[fecha_resolucion] [date] NULL,
	[solucion] [text] NULL,
	[ticket_id] [int] NULL,
	[orden_id] [int] NULL,
	[satisfaccion_usuario] [varchar](15) NOT NULL,
	[comentarios] [text] NULL,
	[dispositivo_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[requerimiento_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[servicio]    Script Date: 05/12/2019 10:19:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[servicio](
	[servicio_id] [int] NOT NULL,
	[nombre] [varchar](255) NULL,
	[organizacion_id] [int] NULL,
	[descripcion] [text] NULL,
	[tipo_requerimiento] [varchar](15) NOT NULL,
	[estado] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[servicio_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[solucion_aplicativa]    Script Date: 05/12/2019 10:19:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[solucion_aplicativa](
	[solucion_id] [int] NOT NULL,
	[estado] [varchar](15) NOT NULL,
	[descripcion] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[solucion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ticket]    Script Date: 05/12/2019 10:19:18 p. m. ******/
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
	[analista_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ticket_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trigContr]    Script Date: 05/12/2019 10:19:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trigContr](
	[idcontr] [int] NOT NULL,
	[contr] [varchar](50) NULL,
	[tbl_affect] [varchar](50) NULL,
	[fecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idcontr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (1, N'ivan del Angel', N'Garcia', N'Perez', N'activo', 2, N'ivan_grc@ivanexpress.com', N'8123980197', N'Dueño', CAST(N'1999-09-14' AS Date))
INSERT [dbo].[contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (2, N'Deyna Jaqueline', N'Vazquez', N'Rubio', N'activo', 2, N'deyna_exp@ivanexpress.com', N'8123676510', N'Director', CAST(N'2002-08-26' AS Date))
INSERT [dbo].[contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (3, N'Brayan', N'Escareño', N'Lopez', N'activo', 1, N'brayan_esc@empresa1.com', N'8111093475', N'Dueño', CAST(N'2019-12-04' AS Date))
INSERT [dbo].[contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (4, N'Juan', N'Rodriguez', N'Velazquez', N'activo', 1, N'richi_rod@empresa1.com', N'8111193475', N'Administrador de TI', CAST(N'2019-12-05' AS Date))
INSERT [dbo].[contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (5, N'Osvaldo', N'Martinez', N'Perez', N'activo', 1, N'osvaldo_rap@empresa1.com', N'8111296675', N'Atencion a clientes', CAST(N'2019-12-05' AS Date))
INSERT [dbo].[contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (6, N'Dorlan', N'Pabon', N'Rios', N'activo', 3, N'dorlan_pab@rayados.com', N'8129093475', N'Capitan', CAST(N'2010-01-12' AS Date))
INSERT [dbo].[contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (7, N'Rogelio', N'Funes', N'Mori', N'activo', 3, N'rogelio_funes@rayados.com', N'8128793475', N'Ayudante general', CAST(N'2010-01-12' AS Date))
INSERT [dbo].[contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (8, N'Vincent', N'Janssen', N'Suazo', N'activo', 3, N'Holanda_VJ@rayados.com', N'8129393475', N'Respuesta a incidentes', CAST(N'2018-06-29' AS Date))
INSERT [dbo].[contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (9, N'Aldo', N'Denigris', N'Hollister', N'inactivo', 3, N'Aldo_camp@rayados.com', N'8121193475', N'Atencion a clientes', CAST(N'2003-01-08' AS Date))
INSERT [dbo].[contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (10, N'fernando', N'Gomez', N'Bazaldua', N'inactivo', 5, N'fher_A@gigante.com', N'8129994378', N'Dueño', CAST(N'1962-09-26' AS Date))
INSERT [dbo].[contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (11, N'Jose', N'Perez', N'Hernandez', N'activo', 6, N'Guadalupe_S@soriana.com', N'8135874378', N'Dueño', CAST(N'2010-09-26' AS Date))
INSERT [dbo].[contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (12, N'Oscar', N'Garcia', N'Jimenez', N'activo', 6, N'Oscar_J@soriana.com', N'8135548978', N'Seguridad TI', CAST(N'2012-08-12' AS Date))
INSERT [dbo].[contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (13, N'Eva', N'Perez', N'Sandoval', N'activo', 6, N'Evalety_S@soriana.com', N'8135898765', N'Mercadotecnia', CAST(N'2011-02-21' AS Date))
INSERT [dbo].[contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (14, N'Yahaira', N'Garcia', N'Perez', N'activo', 6, N'Nena_Yah@soriana.com', N'8137444578', N'Administracion TI', CAST(N'2015-04-28' AS Date))
INSERT [dbo].[contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (15, N'Daniela', N'Bustamante', N'Lazcano', N'inactivo', 6, N'Danis_SBL@soriana.com', N'8135180008', N'ayudante general', CAST(N'2015-04-28' AS Date))
INSERT [dbo].[contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (16, N'Jonatan', N'Ramirez', N'Ramirez', N'activo', 7, N'jona_rmz@TecnologiaIYD.com', N'8145874378', N'Director', CAST(N'2019-11-05' AS Date))
INSERT [dbo].[contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (17, N'kevin', N'Castellano', N'Martinez', N'activo', 7, N'kevin_mtz@TecnologiaIYD.com', N'8145871238', N'Recursos humanos', CAST(N'2019-11-05' AS Date))
INSERT [dbo].[contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (18, N'Suni', N'Garcia', N'Lopez', N'activo', 7, N'Suni_lop@TecnologiaIYD.com', N'8145812389', N'Administrador de TI', CAST(N'2019-11-08' AS Date))
INSERT [dbo].[contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (19, N'Angel', N'Limon', N'Guerrero', N'activo', 7, N'Chapiz_li@TecnologiaIYD.com', N'8148884378', N'Atencion a clientes', CAST(N'2019-11-08' AS Date))
INSERT [dbo].[contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (20, N'Robin', N'garza', N'magaña', N'activo', 7, N'robin_gar@TecnologiaIYD.com', N'8143344378', N'ayudante general', CAST(N'2019-11-20' AS Date))
INSERT [dbo].[contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (101, NULL, NULL, NULL, N'activo', 3, N'Grupo_rayado@rayados.com', N'8124449996', N'administracion TI', CAST(N'2018-09-14' AS Date))
INSERT [dbo].[contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (102, NULL, NULL, NULL, N'activo', 6, N'Grupo_sor@soriana.com', N'8124448885', N'administracion TI', CAST(N'2015-07-10' AS Date))
INSERT [dbo].[contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (103, NULL, NULL, NULL, N'activo', 7, N'Grupo_rayado@TecnologiaIYD.com', N'8124447774', N'administracion TI', CAST(N'2019-12-02' AS Date))
INSERT [dbo].[contrato] ([contrato_id], [nombre], [organizacion_id], [descripcion], [comienzo], [fin], [costo], [tipoMoneda], [tipoDeContrato], [frecuenciaDeFacturacion], [provedor_id], [estado], [contacto_id]) VALUES (1, N'primer contrato', 3, N'Contrato que establece la asistencia en el area de TI por parte del provedor', CAST(N'2019-01-01' AS Date), CAST(N'2024-01-01' AS Date), N'4000', N'dollar', N'servicio', NULL, 7, N'productivo', 19)
INSERT [dbo].[contrato] ([contrato_id], [nombre], [organizacion_id], [descripcion], [comienzo], [fin], [costo], [tipoMoneda], [tipoDeContrato], [frecuenciaDeFacturacion], [provedor_id], [estado], [contacto_id]) VALUES (2, N'segundo contrato', 5, N'Contrato que establece la asistencia en el area de TI por parte del provedor', CAST(N'1999-01-01' AS Date), CAST(N'2002-01-01' AS Date), N'500', N'dollar', N'servicio', NULL, NULL, N'obsoleto', NULL)
INSERT [dbo].[contrato] ([contrato_id], [nombre], [organizacion_id], [descripcion], [comienzo], [fin], [costo], [tipoMoneda], [tipoDeContrato], [frecuenciaDeFacturacion], [provedor_id], [estado], [contacto_id]) VALUES (3, N'tercer contrato', 6, N'Contrato que establece la asistencia en el area de TI por parte del provedor', CAST(N'2020-04-01' AS Date), CAST(N'2024-04-01' AS Date), N'3500', N'dollar', N'servicio', NULL, 7, N'no productivo', 19)
INSERT [dbo].[contrato] ([contrato_id], [nombre], [organizacion_id], [descripcion], [comienzo], [fin], [costo], [tipoMoneda], [tipoDeContrato], [frecuenciaDeFacturacion], [provedor_id], [estado], [contacto_id]) VALUES (4, N'cuarto contrato', 1, N'Contrato que establece la asistencia en el area de TI por parte del provedor', CAST(N'2020-01-01' AS Date), CAST(N'2025-01-01' AS Date), N'3000', N'dollar', N'servicio', NULL, 7, N'no productivo', 19)
INSERT [dbo].[dispositivo] ([dispositivo_id], [nombre], [tipo_dispositivo], [descripcion], [organizacion_id]) VALUES (1, N'computadora ray', N'Dispositivo de usuario final', N'Computadora de escritorio, windows,4 RAM, 1 GB, core i5', 3)
INSERT [dbo].[dispositivo] ([dispositivo_id], [nombre], [tipo_dispositivo], [descripcion], [organizacion_id]) VALUES (2, N'computadora soriana', N'Dispositivo de usuario final', N'Computadora de escritorio, windows,8 RAM, 2 GB, core i7', 6)
INSERT [dbo].[dispositivo] ([dispositivo_id], [nombre], [tipo_dispositivo], [descripcion], [organizacion_id]) VALUES (3, N'computadora 1', N'Dispositivo de usuario final', N'Laptop, windows,4 RAM, 500 GB, core i3', 1)
INSERT [dbo].[dispositivo] ([dispositivo_id], [nombre], [tipo_dispositivo], [descripcion], [organizacion_id]) VALUES (4, N'computadora Deyna', N'Dispositivo de usuario final', N'Computadora de escritorio, windows,8 RAM, 1 TB, core i8', 2)
INSERT [dbo].[dispositivo] ([dispositivo_id], [nombre], [tipo_dispositivo], [descripcion], [organizacion_id]) VALUES (5, N'computadora ivan', N'Dispositivo de usuario final', N'Computadora de escritorio, windows,8 RAM, 1 TB, core i8', 2)
INSERT [dbo].[error] ([error_id], [nombre], [descripcion], [error_code], [solucion_id]) VALUES (1, N'Archivos error', N'Los archivos se borran a causa de un virus', N'1', 1)
INSERT [dbo].[grupo] ([grupo_id], [nombre], [estado], [organizacion_id], [contacto_id], [descripcion], [tipodegrupo], [fechafingrupo]) VALUES (101, N'Grupo rayado', N'trabajando', 3, 101, N'Grupo de la empresa rayados, Enfocado en la administracion de TI', N'grupo de trabajo', NULL)
INSERT [dbo].[grupo] ([grupo_id], [nombre], [estado], [organizacion_id], [contacto_id], [descripcion], [tipodegrupo], [fechafingrupo]) VALUES (102, N'Grupo soriana', N'trabajando', 6, 102, N'Grupo de la empresa soriana, Enfocado en la administracion de TI', N'grupo de trabajo', NULL)
INSERT [dbo].[grupo] ([grupo_id], [nombre], [estado], [organizacion_id], [contacto_id], [descripcion], [tipodegrupo], [fechafingrupo]) VALUES (103, N'Grupo TecnologiaIYD', N'implementando', 7, 103, N'Grupo de la empresa tecnologiaIYD, Enfocado en la administracion de TI', N'grupo de trabajo', NULL)
INSERT [dbo].[Nuevo_contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [NombreCompleto], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (1, N'ivan del Angel', N'Garcia', N'Perez', N'ivan del Angel Garcia Perez', N'activo', 2, N'ivan_grc@ivanexpress.com', N'8123980197', N'Dueño', CAST(N'1999-09-14' AS Date))
INSERT [dbo].[Nuevo_contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [NombreCompleto], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (2, N'Deyna Jaqueline', N'Vazquez', N'Rubio', N'Deyna Jaqueline Vazquez Rubio', N'activo', 2, N'deyna_exp@ivanexpress.com', N'8123676510', N'Director', CAST(N'2002-08-26' AS Date))
INSERT [dbo].[Nuevo_contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [NombreCompleto], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (3, N'Brayan', N'Escareño', N'Lopez', N'Brayan Escareño Lopez', N'activo', 1, N'brayan_esc@empresa1.com', N'8111093475', N'Dueño', CAST(N'2019-12-04' AS Date))
INSERT [dbo].[Nuevo_contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [NombreCompleto], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (4, N'Juan', N'Rodriguez', N'Velazquez', N'Juan Rodriguez Velazquez', N'activo', 1, N'richi_rod@empresa1.com', N'8111193475', N'Administrador de TI', CAST(N'2019-12-05' AS Date))
INSERT [dbo].[Nuevo_contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [NombreCompleto], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (5, N'Osvaldo', N'Martinez', N'Perez', N'Osvaldo Martinez Perez', N'activo', 1, N'osvaldo_rap@empresa1.com', N'8111296675', N'Atencion a clientes', CAST(N'2019-12-05' AS Date))
INSERT [dbo].[Nuevo_contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [NombreCompleto], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (6, N'Dorlan', N'Pabon', N'Rios', N'Dorlan Pabon Rios', N'activo', 3, N'dorlan_pab@rayados.com', N'8129093475', N'Capitan', CAST(N'2010-01-12' AS Date))
INSERT [dbo].[Nuevo_contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [NombreCompleto], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (7, N'Rogelio', N'Funes', N'Mori', N'Rogelio Funes Mori', N'activo', 3, N'rogelio_funes@rayados.com', N'8128793475', N'Ayudante general', CAST(N'2010-01-12' AS Date))
INSERT [dbo].[Nuevo_contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [NombreCompleto], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (8, N'Vincent', N'Janssen', N'Suazo', N'Vincent Janssen Suazo', N'activo', 3, N'Holanda_VJ@rayados.com', N'8129393475', N'Respuesta a incidentes', CAST(N'2018-06-29' AS Date))
INSERT [dbo].[Nuevo_contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [NombreCompleto], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (9, N'Aldo', N'Denigris', N'Hollister', N'Aldo Denigris Hollister', N'inactivo', 3, N'Aldo_camp@rayados.com', N'8121193475', N'Atencion a clientes', CAST(N'2003-01-08' AS Date))
INSERT [dbo].[Nuevo_contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [NombreCompleto], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (10, N'fernando', N'Gomez', N'Bazaldua', N'fernando Gomez Bazaldua', N'inactivo', 5, N'fher_A@gigante.com', N'8129994378', N'Dueño', CAST(N'1962-09-26' AS Date))
INSERT [dbo].[Nuevo_contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [NombreCompleto], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (11, N'Jose', N'Perez', N'Hernandez', N'Jose Perez Hernandez', N'activo', 6, N'Guadalupe_S@soriana.com', N'8135874378', N'Dueño', CAST(N'2010-09-26' AS Date))
INSERT [dbo].[Nuevo_contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [NombreCompleto], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (12, N'Oscar', N'Garcia', N'Jimenez', N'Oscar Garcia Jimenez', N'activo', 6, N'Oscar_J@soriana.com', N'8135548978', N'Seguridad TI', CAST(N'2012-08-12' AS Date))
INSERT [dbo].[Nuevo_contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [NombreCompleto], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (13, N'Eva', N'Perez', N'Sandoval', N'Eva Perez Sandoval', N'activo', 6, N'Evalety_S@soriana.com', N'8135898765', N'Mercadotecnia', CAST(N'2011-02-21' AS Date))
INSERT [dbo].[Nuevo_contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [NombreCompleto], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (14, N'Yahaira', N'Garcia', N'Perez', N'Yahaira Garcia Perez', N'activo', 6, N'Nena_Yah@soriana.com', N'8137444578', N'Administracion TI', CAST(N'2015-04-28' AS Date))
INSERT [dbo].[Nuevo_contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [NombreCompleto], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (15, N'Daniela', N'Bustamante', N'Lazcano', N'Daniela Bustamante Lazcano', N'inactivo', 6, N'Danis_SBL@soriana.com', N'8135180008', N'ayudante general', CAST(N'2015-04-28' AS Date))
INSERT [dbo].[Nuevo_contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [NombreCompleto], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (16, N'Jonatan', N'Ramirez', N'Ramirez', N'Jonatan Ramirez Ramirez', N'activo', 7, N'jona_rmz@TecnologiaIYD.com', N'8145874378', N'Director', CAST(N'2019-11-05' AS Date))
INSERT [dbo].[Nuevo_contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [NombreCompleto], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (17, N'kevin', N'Castellano', N'Martinez', N'kevin Castellano Martinez', N'activo', 7, N'kevin_mtz@TecnologiaIYD.com', N'8145871238', N'Recursos humanos', CAST(N'2019-11-05' AS Date))
INSERT [dbo].[Nuevo_contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [NombreCompleto], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (18, N'Suni', N'Garcia', N'Lopez', N'Suni Garcia Lopez', N'activo', 7, N'Suni_lop@TecnologiaIYD.com', N'8145812389', N'Administrador de TI', CAST(N'2019-11-08' AS Date))
INSERT [dbo].[Nuevo_contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [NombreCompleto], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (19, N'Angel', N'Limon', N'Guerrero', N'Angel Limon Guerrero', N'activo', 7, N'Chapiz_li@TecnologiaIYD.com', N'8148884378', N'Atencion a clientes', CAST(N'2019-11-08' AS Date))
INSERT [dbo].[Nuevo_contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [NombreCompleto], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (20, N'Robin', N'garza', N'magaña', N'Robin garza magaña', N'activo', 7, N'robin_gar@TecnologiaIYD.com', N'8143344378', N'ayudante general', CAST(N'2019-11-20' AS Date))
INSERT [dbo].[Nuevo_contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [NombreCompleto], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (101, NULL, NULL, NULL, NULL, N'activo', 3, N'Grupo_rayado@rayados.com', N'8124449996', N'administracion TI', CAST(N'2018-09-14' AS Date))
INSERT [dbo].[Nuevo_contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [NombreCompleto], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (102, NULL, NULL, NULL, NULL, N'activo', 6, N'Grupo_sor@soriana.com', N'8124448885', N'administracion TI', CAST(N'2015-07-10' AS Date))
INSERT [dbo].[Nuevo_contacto] ([contacto_id], [nombre], [ApellidoPaterno], [ApellidoMaterno], [NombreCompleto], [estado], [organizacion_id], [email], [telefono], [funcion], [fecharegistro]) VALUES (103, NULL, NULL, NULL, NULL, N'activo', 7, N'Grupo_rayado@TecnologiaIYD.com', N'8124447774', N'administracion TI', CAST(N'2019-12-02' AS Date))
INSERT [dbo].[ordentrabajo] ([ordentrabajo_id], [nombre], [estado], [descripcion], [ticket_id], [grupo_id], [trabajador], [fecha_comienzo], [fecha_termino]) VALUES (1, N'Asistencia office word', N'abierto', N'Asistencia para el uso de office word', 1, NULL, 18, CAST(N'2019-05-24' AS Date), CAST(N'2019-05-25' AS Date))
INSERT [dbo].[ordentrabajo] ([ordentrabajo_id], [nombre], [estado], [descripcion], [ticket_id], [grupo_id], [trabajador], [fecha_comienzo], [fecha_termino]) VALUES (2, N'instalacion office', N'abierto', N'instalacion de software office', 2, NULL, 18, CAST(N'2019-05-23' AS Date), CAST(N'2019-05-23' AS Date))
INSERT [dbo].[ordentrabajo] ([ordentrabajo_id], [nombre], [estado], [descripcion], [ticket_id], [grupo_id], [trabajador], [fecha_comienzo], [fecha_termino]) VALUES (3, N'instalacion de antivirus', N'abierto', N'instalacion de software de antivirus', 3, NULL, 18, CAST(N'2019-05-29' AS Date), CAST(N'2019-05-30' AS Date))
INSERT [dbo].[ordentrabajo] ([ordentrabajo_id], [nombre], [estado], [descripcion], [ticket_id], [grupo_id], [trabajador], [fecha_comienzo], [fecha_termino]) VALUES (4, N'Asistencia sql server', N'abierto', N'Asistencia para el uso de sql server', 4, NULL, 18, CAST(N'2019-11-24' AS Date), CAST(N'2019-12-23' AS Date))
INSERT [dbo].[ordentrabajo] ([ordentrabajo_id], [nombre], [estado], [descripcion], [ticket_id], [grupo_id], [trabajador], [fecha_comienzo], [fecha_termino]) VALUES (5, N'instalacion de sql server', N'abierto', N'instalacion de sql server', 5, NULL, 18, CAST(N'2019-11-23' AS Date), CAST(N'2019-11-24' AS Date))
INSERT [dbo].[ordentrabajo] ([ordentrabajo_id], [nombre], [estado], [descripcion], [ticket_id], [grupo_id], [trabajador], [fecha_comienzo], [fecha_termino]) VALUES (6, N'Asistencia', N'abierto', N'Asistencia con problemas en software, con virus', 6, NULL, 18, CAST(N'2019-12-03' AS Date), CAST(N'2019-12-04' AS Date))
INSERT [dbo].[ordentrabajo] ([ordentrabajo_id], [nombre], [estado], [descripcion], [ticket_id], [grupo_id], [trabajador], [fecha_comienzo], [fecha_termino]) VALUES (7, N'instalacion de antivirus', N'abierto', N'instalacion de software de antivirus', 7, NULL, 18, CAST(N'2019-12-04' AS Date), CAST(N'2019-12-05' AS Date))
INSERT [dbo].[organizacion] ([organizacion_id], [nombre], [codigo], [estado], [padre], [fecharegistro]) VALUES (1, N'Empresa1', N'A12345', N'activo', NULL, CAST(N'2019-12-04' AS Date))
INSERT [dbo].[organizacion] ([organizacion_id], [nombre], [codigo], [estado], [padre], [fecharegistro]) VALUES (2, N'ivanExpress', N'B12345', N'activo', NULL, CAST(N'1999-09-14' AS Date))
INSERT [dbo].[organizacion] ([organizacion_id], [nombre], [codigo], [estado], [padre], [fecharegistro]) VALUES (3, N'Rayados', N'C12345', N'activo', NULL, CAST(N'1945-06-28' AS Date))
INSERT [dbo].[organizacion] ([organizacion_id], [nombre], [codigo], [estado], [padre], [fecharegistro]) VALUES (4, N'tigres', N'D12345', N'activo', 3, CAST(N'1960-03-07' AS Date))
INSERT [dbo].[organizacion] ([organizacion_id], [nombre], [codigo], [estado], [padre], [fecharegistro]) VALUES (5, N'Gigante', N'E12345', N'inactivo', NULL, CAST(N'1962-09-26' AS Date))
INSERT [dbo].[organizacion] ([organizacion_id], [nombre], [codigo], [estado], [padre], [fecharegistro]) VALUES (6, N'Soriana Ahorro', N'F12345', N'activo', 5, CAST(N'2010-09-26' AS Date))
INSERT [dbo].[organizacion] ([organizacion_id], [nombre], [codigo], [estado], [padre], [fecharegistro]) VALUES (7, N'TecnologiaIYD', N'G12345', N'activo', NULL, CAST(N'2019-10-31' AS Date))
INSERT [dbo].[organizacion] ([organizacion_id], [nombre], [codigo], [estado], [padre], [fecharegistro]) VALUES (8, N'Red TI', N'H12345', N'activo', NULL, CAST(N'2014-01-15' AS Date))
INSERT [dbo].[organizacion] ([organizacion_id], [nombre], [codigo], [estado], [padre], [fecharegistro]) VALUES (9, N'Blue TI', N'I12345', N'activo', 8, CAST(N'2015-07-02' AS Date))
INSERT [dbo].[organizacion] ([organizacion_id], [nombre], [codigo], [estado], [padre], [fecharegistro]) VALUES (10, N'DJVR', N'J12345', N'inactivo', NULL, CAST(N'2018-11-01' AS Date))
INSERT [dbo].[persona] ([persona_id], [nombre], [numeroEmpleado], [numeroCelular], [ubicacion_id], [jefe_id], [contacto_id]) VALUES (1, N'ivan', N'001', N'8123980197', 2, NULL, 1)
INSERT [dbo].[persona] ([persona_id], [nombre], [numeroEmpleado], [numeroCelular], [ubicacion_id], [jefe_id], [contacto_id]) VALUES (2, N'deyna', N'002', N'8123676510', 2, 1, 2)
INSERT [dbo].[persona] ([persona_id], [nombre], [numeroEmpleado], [numeroCelular], [ubicacion_id], [jefe_id], [contacto_id]) VALUES (3, N'brayan', N'003', N'8111093475', 1, NULL, 3)
INSERT [dbo].[persona] ([persona_id], [nombre], [numeroEmpleado], [numeroCelular], [ubicacion_id], [jefe_id], [contacto_id]) VALUES (4, N'juan', N'004', N'8111193475', 1, 3, 4)
INSERT [dbo].[persona] ([persona_id], [nombre], [numeroEmpleado], [numeroCelular], [ubicacion_id], [jefe_id], [contacto_id]) VALUES (5, N'osvaldo', N'005', N'8111296675', 1, 3, 5)
INSERT [dbo].[persona] ([persona_id], [nombre], [numeroEmpleado], [numeroCelular], [ubicacion_id], [jefe_id], [contacto_id]) VALUES (6, N'dorlan', N'006', N'8129093475', 3, NULL, 6)
INSERT [dbo].[persona] ([persona_id], [nombre], [numeroEmpleado], [numeroCelular], [ubicacion_id], [jefe_id], [contacto_id]) VALUES (7, N'rogelio', N'007', N'8129012340', 3, 6, 7)
INSERT [dbo].[persona] ([persona_id], [nombre], [numeroEmpleado], [numeroCelular], [ubicacion_id], [jefe_id], [contacto_id]) VALUES (8, N'vicent', N'008', N'8129485734', 3, 6, 8)
INSERT [dbo].[persona] ([persona_id], [nombre], [numeroEmpleado], [numeroCelular], [ubicacion_id], [jefe_id], [contacto_id]) VALUES (9, N'aldo', N'009', N'8125755548', 3, 6, 9)
INSERT [dbo].[persona] ([persona_id], [nombre], [numeroEmpleado], [numeroCelular], [ubicacion_id], [jefe_id], [contacto_id]) VALUES (10, N'fher', N'010', N'8138153153', 5, NULL, 10)
INSERT [dbo].[persona] ([persona_id], [nombre], [numeroEmpleado], [numeroCelular], [ubicacion_id], [jefe_id], [contacto_id]) VALUES (11, N'jose', N'011', N'8141472589', 6, NULL, 11)
INSERT [dbo].[persona] ([persona_id], [nombre], [numeroEmpleado], [numeroCelular], [ubicacion_id], [jefe_id], [contacto_id]) VALUES (12, N'oscar', N'012', N'8149638527', 6, 11, 12)
INSERT [dbo].[persona] ([persona_id], [nombre], [numeroEmpleado], [numeroCelular], [ubicacion_id], [jefe_id], [contacto_id]) VALUES (13, N'eva', N'013', N'8145789123', 6, 11, 13)
INSERT [dbo].[persona] ([persona_id], [nombre], [numeroEmpleado], [numeroCelular], [ubicacion_id], [jefe_id], [contacto_id]) VALUES (14, N'yahaira', N'014', N'8144561238', 6, 11, 14)
INSERT [dbo].[persona] ([persona_id], [nombre], [numeroEmpleado], [numeroCelular], [ubicacion_id], [jefe_id], [contacto_id]) VALUES (15, N'daniela', N'015', N'8146644132', 6, 11, 15)
INSERT [dbo].[persona] ([persona_id], [nombre], [numeroEmpleado], [numeroCelular], [ubicacion_id], [jefe_id], [contacto_id]) VALUES (16, N'jonatan', N'016', N'8154561238', 7, NULL, 16)
INSERT [dbo].[persona] ([persona_id], [nombre], [numeroEmpleado], [numeroCelular], [ubicacion_id], [jefe_id], [contacto_id]) VALUES (17, N'kevin', N'017', N'8151123456', 7, 16, 17)
INSERT [dbo].[persona] ([persona_id], [nombre], [numeroEmpleado], [numeroCelular], [ubicacion_id], [jefe_id], [contacto_id]) VALUES (18, N'suni', N'018', N'8154455668', 7, 16, 18)
INSERT [dbo].[persona] ([persona_id], [nombre], [numeroEmpleado], [numeroCelular], [ubicacion_id], [jefe_id], [contacto_id]) VALUES (19, N'angel', N'019', N'8151123333', 7, 16, 19)
INSERT [dbo].[persona] ([persona_id], [nombre], [numeroEmpleado], [numeroCelular], [ubicacion_id], [jefe_id], [contacto_id]) VALUES (20, N'robin', N'020', N'8151123444', 7, 16, 20)
INSERT [dbo].[requerimiento] ([requerimiento_id], [estado], [impacto], [urgencia], [origen], [servicio_id], [razon], [fecha_asignacion], [fecha_resolucion], [solucion], [ticket_id], [orden_id], [satisfaccion_usuario], [comentarios], [dispositivo_id]) VALUES (1, N'pendiente', N'1', N'1', N'email', 1, NULL, CAST(N'2019-05-24' AS Date), NULL, N'Asesoria para la instalacion del software', 1, 1, N'4', NULL, 1)
INSERT [dbo].[requerimiento] ([requerimiento_id], [estado], [impacto], [urgencia], [origen], [servicio_id], [razon], [fecha_asignacion], [fecha_resolucion], [solucion], [ticket_id], [orden_id], [satisfaccion_usuario], [comentarios], [dispositivo_id]) VALUES (2, N'pendiente', N'1', N'2', N'email', 2, NULL, CAST(N'2019-05-23' AS Date), NULL, N'Asesoria para el uso del software', 2, 2, N'4', NULL, 1)
INSERT [dbo].[requerimiento] ([requerimiento_id], [estado], [impacto], [urgencia], [origen], [servicio_id], [razon], [fecha_asignacion], [fecha_resolucion], [solucion], [ticket_id], [orden_id], [satisfaccion_usuario], [comentarios], [dispositivo_id]) VALUES (3, N'pendiente', N'2', N'3', N'email', 3, NULL, CAST(N'2019-05-23' AS Date), NULL, N'instalacion de antivirua', 3, 3, N'4', NULL, 1)
INSERT [dbo].[requerimiento] ([requerimiento_id], [estado], [impacto], [urgencia], [origen], [servicio_id], [razon], [fecha_asignacion], [fecha_resolucion], [solucion], [ticket_id], [orden_id], [satisfaccion_usuario], [comentarios], [dispositivo_id]) VALUES (4, N'pendiente', N'4', N'4', N'email', 4, NULL, CAST(N'2019-05-23' AS Date), NULL, N'aistencia de uso sql server', 4, 4, N'4', NULL, 2)
INSERT [dbo].[requerimiento] ([requerimiento_id], [estado], [impacto], [urgencia], [origen], [servicio_id], [razon], [fecha_asignacion], [fecha_resolucion], [solucion], [ticket_id], [orden_id], [satisfaccion_usuario], [comentarios], [dispositivo_id]) VALUES (5, N'pendiente', N'4', N'4', N'email', 5, NULL, CAST(N'2019-05-22' AS Date), NULL, N'instalacion sql server', 5, 5, N'4', NULL, 2)
INSERT [dbo].[requerimiento] ([requerimiento_id], [estado], [impacto], [urgencia], [origen], [servicio_id], [razon], [fecha_asignacion], [fecha_resolucion], [solucion], [ticket_id], [orden_id], [satisfaccion_usuario], [comentarios], [dispositivo_id]) VALUES (6, N'pendiente', N'4', N'4', N'email', 6, NULL, CAST(N'2019-05-23' AS Date), NULL, N'instalacion de antivirus', 6, 6, N'4', NULL, 2)
INSERT [dbo].[servicio] ([servicio_id], [nombre], [organizacion_id], [descripcion], [tipo_requerimiento], [estado]) VALUES (1, N'Asistencia office', 7, N'Asistencia para el uso de software office microsoft', N'requerimiento', N'produciendo')
INSERT [dbo].[servicio] ([servicio_id], [nombre], [organizacion_id], [descripcion], [tipo_requerimiento], [estado]) VALUES (2, N'instalacion office', 7, N'Instalacion del software office microsoft', N'requerimiento', N'produciendo')
INSERT [dbo].[servicio] ([servicio_id], [nombre], [organizacion_id], [descripcion], [tipo_requerimiento], [estado]) VALUES (3, N'instalacion de antivirus', 7, N'Instalacion de software de antivirus', N'requerimiento', N'produciendo')
INSERT [dbo].[servicio] ([servicio_id], [nombre], [organizacion_id], [descripcion], [tipo_requerimiento], [estado]) VALUES (4, N'instalacion sql server', 7, N'Instalacion del software sql server', N'requerimiento', N'produciendo')
INSERT [dbo].[servicio] ([servicio_id], [nombre], [organizacion_id], [descripcion], [tipo_requerimiento], [estado]) VALUES (5, N'Asistencia sql server', 7, N'Asistencia para el uso de software sql server', N'requerimiento', N'produciendo')
INSERT [dbo].[servicio] ([servicio_id], [nombre], [organizacion_id], [descripcion], [tipo_requerimiento], [estado]) VALUES (6, N'Asistencia para problemas virus', 7, N'Asistencia para problemas en el software por virus', N'problema', N'produciendo')
INSERT [dbo].[servicio] ([servicio_id], [nombre], [organizacion_id], [descripcion], [tipo_requerimiento], [estado]) VALUES (7, N'Asistencia en software', 7, N'Asistencia para problemas en el software en general', N'problema', N'produciendo')
INSERT [dbo].[servicio] ([servicio_id], [nombre], [organizacion_id], [descripcion], [tipo_requerimiento], [estado]) VALUES (8, N'Asistencia en hardware', 7, N'Asistencia para problemas en hardware en general', N'problema', N'produciendo')
INSERT [dbo].[solucion_aplicativa] ([solucion_id], [estado], [descripcion]) VALUES (1, N'abierto', N'Formateo de compitadora')
INSERT [dbo].[ticket] ([ticket_id], [estado], [organizacion_id], [reportadopor_id], [equipo_id], [titulo], [descripcion], [inicio], [fin], [ultima_actualizacion], [analista_id]) VALUES (1, N'procesando', 3, 7, NULL, N'Asistencia office word', N'Asistencia para el uso de office word', CAST(N'2019-05-24T00:00:00.000' AS DateTime), CAST(N'2019-05-25T00:00:00.000' AS DateTime), NULL, 18)
INSERT [dbo].[ticket] ([ticket_id], [estado], [organizacion_id], [reportadopor_id], [equipo_id], [titulo], [descripcion], [inicio], [fin], [ultima_actualizacion], [analista_id]) VALUES (2, N'resuelto', 3, 7, NULL, N'instalacion', N'instalacion de software office', CAST(N'2019-05-23T00:00:00.000' AS DateTime), CAST(N'2019-05-24T00:00:00.000' AS DateTime), NULL, 18)
INSERT [dbo].[ticket] ([ticket_id], [estado], [organizacion_id], [reportadopor_id], [equipo_id], [titulo], [descripcion], [inicio], [fin], [ultima_actualizacion], [analista_id]) VALUES (3, N'procesando', 3, 7, NULL, N'instalacion', N'instalacion de antivirus', CAST(N'2019-05-29T00:00:00.000' AS DateTime), CAST(N'2019-05-30T00:00:00.000' AS DateTime), NULL, 18)
INSERT [dbo].[ticket] ([ticket_id], [estado], [organizacion_id], [reportadopor_id], [equipo_id], [titulo], [descripcion], [inicio], [fin], [ultima_actualizacion], [analista_id]) VALUES (4, N'procesando', 6, 14, NULL, N'Asistencia sql server', N'Asistencia para el uso de sql server', CAST(N'2019-11-24T00:00:00.000' AS DateTime), CAST(N'2019-12-23T00:00:00.000' AS DateTime), NULL, 18)
INSERT [dbo].[ticket] ([ticket_id], [estado], [organizacion_id], [reportadopor_id], [equipo_id], [titulo], [descripcion], [inicio], [fin], [ultima_actualizacion], [analista_id]) VALUES (5, N'resuelto', 6, 14, NULL, N'instalacion', N'instalacion de sql server', CAST(N'2019-11-23T00:00:00.000' AS DateTime), CAST(N'2019-11-24T00:00:00.000' AS DateTime), NULL, 18)
INSERT [dbo].[ticket] ([ticket_id], [estado], [organizacion_id], [reportadopor_id], [equipo_id], [titulo], [descripcion], [inicio], [fin], [ultima_actualizacion], [analista_id]) VALUES (6, N'procesando', 6, 14, NULL, N'instalacion', N'instalacion de antivirus', CAST(N'2019-11-12T00:00:00.000' AS DateTime), CAST(N'2019-11-13T00:00:00.000' AS DateTime), NULL, 18)
INSERT [dbo].[ticket] ([ticket_id], [estado], [organizacion_id], [reportadopor_id], [equipo_id], [titulo], [descripcion], [inicio], [fin], [ultima_actualizacion], [analista_id]) VALUES (7, N'procesando', 1, 4, NULL, N'Problema con guardado de archivos', N'Imposibilidad para guardar archivos,posibilidad de virus', CAST(N'2019-12-03T00:00:00.000' AS DateTime), CAST(N'2019-12-04T00:00:00.000' AS DateTime), NULL, 18)
INSERT [dbo].[ubicacion] ([ubicacion_id], [nombre], [estado], [organizacion_id], [direccion], [codigo_postal], [ciudad], [pais]) VALUES (1, N'Empresa Centro', N'activo', 1, N'Avenida Juarez #2256', N'66475', N'Monterrey', N'Mexico')
INSERT [dbo].[ubicacion] ([ubicacion_id], [nombre], [estado], [organizacion_id], [direccion], [codigo_postal], [ciudad], [pais]) VALUES (2, N'Araucaria sur', N'activo', 2, N'Avenida Casablanca #1415', N'66412', N'San Nicolas de los Garza', N'Mexico')
INSERT [dbo].[ubicacion] ([ubicacion_id], [nombre], [estado], [organizacion_id], [direccion], [codigo_postal], [ciudad], [pais]) VALUES (3, N'Gigante de Acero', N'activo', 3, N'Avenida primera #1000', N'66599', N'Guadalupe', N'Mexico')
INSERT [dbo].[ubicacion] ([ubicacion_id], [nombre], [estado], [organizacion_id], [direccion], [codigo_postal], [ciudad], [pais]) VALUES (4, N'UANL', N'activo', 4, N'Avenida Universidad #6765', N'63444', N'San Nicolas de los Garza', N'Mexico')
INSERT [dbo].[ubicacion] ([ubicacion_id], [nombre], [estado], [organizacion_id], [direccion], [codigo_postal], [ciudad], [pais]) VALUES (5, N'Gigante Norte', N'inactivo', 5, N'Avenida zagaroza #6778', N'66123', N'Monterrey', N'Mexico')
INSERT [dbo].[ubicacion] ([ubicacion_id], [nombre], [estado], [organizacion_id], [direccion], [codigo_postal], [ciudad], [pais]) VALUES (6, N'Soriana ahorro Norte', N'activo', 6, N'Avenida zagaroza #6778', N'66123', N'Monterrey', N'Mexico')
INSERT [dbo].[ubicacion] ([ubicacion_id], [nombre], [estado], [organizacion_id], [direccion], [codigo_postal], [ciudad], [pais]) VALUES (7, N'Jardines tec', N'activo', 7, N'chechen #4431', N'65432', N'Monterrey', N'Mexico')
INSERT [dbo].[ubicacion] ([ubicacion_id], [nombre], [estado], [organizacion_id], [direccion], [codigo_postal], [ciudad], [pais]) VALUES (8, N'red londres', N'activo', 8, N'Avenida londres #3434', N'66111', N'San Nicolas de los Garza', N'Mexico')
INSERT [dbo].[ubicacion] ([ubicacion_id], [nombre], [estado], [organizacion_id], [direccion], [codigo_postal], [ciudad], [pais]) VALUES (9, N'blue londres', N'activo', 9, N'Avenida londres #3434', N'66111', N'San Nicolas de los Garza', N'Mexico')
INSERT [dbo].[ubicacion] ([ubicacion_id], [nombre], [estado], [organizacion_id], [direccion], [codigo_postal], [ciudad], [pais]) VALUES (10, N'Calamo', N'inactivo', 10, N'Calle Calamo #1415', N'66745', N'San Nicolas de los Garza', N'Mexico')
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [indx_contacto_nombre]    Script Date: 05/12/2019 10:19:18 p. m. ******/
CREATE NONCLUSTERED INDEX [indx_contacto_nombre] ON [dbo].[contacto]
(
	[NombreCompleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indx_contrato_nombre]    Script Date: 05/12/2019 10:19:18 p. m. ******/
CREATE NONCLUSTERED INDEX [indx_contrato_nombre] ON [dbo].[contrato]
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__error__018D5111DE2AA9F8]    Script Date: 05/12/2019 10:19:18 p. m. ******/
ALTER TABLE [dbo].[error] ADD UNIQUE NONCLUSTERED 
(
	[error_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__organiza__40F9A206DD01EB6C]    Script Date: 05/12/2019 10:19:18 p. m. ******/
ALTER TABLE [dbo].[organizacion] ADD UNIQUE NONCLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__persona__49C3142C3E93C7DD]    Script Date: 05/12/2019 10:19:18 p. m. ******/
ALTER TABLE [dbo].[persona] ADD UNIQUE NONCLUSTERED 
(
	[numeroEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cambio]  WITH CHECK ADD  CONSTRAINT [FK_disp_cambio] FOREIGN KEY([dispositivo_id])
REFERENCES [dbo].[dispositivo] ([dispositivo_id])
GO
ALTER TABLE [dbo].[cambio] CHECK CONSTRAINT [FK_disp_cambio]
GO
ALTER TABLE [dbo].[cambio]  WITH CHECK ADD  CONSTRAINT [FK_grupo_supervisor] FOREIGN KEY([grupo_supervisor])
REFERENCES [dbo].[grupo] ([grupo_id])
GO
ALTER TABLE [dbo].[cambio] CHECK CONSTRAINT [FK_grupo_supervisor]
GO
ALTER TABLE [dbo].[cambio]  WITH CHECK ADD  CONSTRAINT [FK_orden_cambio] FOREIGN KEY([orden_id])
REFERENCES [dbo].[ordentrabajo] ([ordentrabajo_id])
GO
ALTER TABLE [dbo].[cambio] CHECK CONSTRAINT [FK_orden_cambio]
GO
ALTER TABLE [dbo].[cambio]  WITH CHECK ADD  CONSTRAINT [FK_orgid_cambio] FOREIGN KEY([organizacion_id])
REFERENCES [dbo].[organizacion] ([organizacion_id])
GO
ALTER TABLE [dbo].[cambio] CHECK CONSTRAINT [FK_orgid_cambio]
GO
ALTER TABLE [dbo].[cambio]  WITH CHECK ADD  CONSTRAINT [FK_requeripo] FOREIGN KEY([requerido_por])
REFERENCES [dbo].[persona] ([persona_id])
GO
ALTER TABLE [dbo].[cambio] CHECK CONSTRAINT [FK_requeripo]
GO
ALTER TABLE [dbo].[cambio]  WITH CHECK ADD  CONSTRAINT [FK_supervisor] FOREIGN KEY([supervisor])
REFERENCES [dbo].[persona] ([persona_id])
GO
ALTER TABLE [dbo].[cambio] CHECK CONSTRAINT [FK_supervisor]
GO
ALTER TABLE [dbo].[cambio]  WITH CHECK ADD  CONSTRAINT [FK_ticket_cambio] FOREIGN KEY([ticket_id])
REFERENCES [dbo].[ticket] ([ticket_id])
GO
ALTER TABLE [dbo].[cambio] CHECK CONSTRAINT [FK_ticket_cambio]
GO
ALTER TABLE [dbo].[contacto]  WITH CHECK ADD  CONSTRAINT [FK_orgaIDcontacto] FOREIGN KEY([organizacion_id])
REFERENCES [dbo].[organizacion] ([organizacion_id])
GO
ALTER TABLE [dbo].[contacto] CHECK CONSTRAINT [FK_orgaIDcontacto]
GO
ALTER TABLE [dbo].[contrato]  WITH CHECK ADD  CONSTRAINT [FK_contacto_contrato] FOREIGN KEY([contacto_id])
REFERENCES [dbo].[contacto] ([contacto_id])
GO
ALTER TABLE [dbo].[contrato] CHECK CONSTRAINT [FK_contacto_contrato]
GO
ALTER TABLE [dbo].[contrato]  WITH CHECK ADD  CONSTRAINT [FK_orgaIDcontrato] FOREIGN KEY([organizacion_id])
REFERENCES [dbo].[organizacion] ([organizacion_id])
GO
ALTER TABLE [dbo].[contrato] CHECK CONSTRAINT [FK_orgaIDcontrato]
GO
ALTER TABLE [dbo].[contrato]  WITH CHECK ADD  CONSTRAINT [FK_provedor_contrato] FOREIGN KEY([provedor_id])
REFERENCES [dbo].[organizacion] ([organizacion_id])
GO
ALTER TABLE [dbo].[contrato] CHECK CONSTRAINT [FK_provedor_contrato]
GO
ALTER TABLE [dbo].[dispositivo]  WITH CHECK ADD  CONSTRAINT [FK_org_disp] FOREIGN KEY([organizacion_id])
REFERENCES [dbo].[organizacion] ([organizacion_id])
GO
ALTER TABLE [dbo].[dispositivo] CHECK CONSTRAINT [FK_org_disp]
GO
ALTER TABLE [dbo].[error]  WITH CHECK ADD  CONSTRAINT [FK_solucion_erro] FOREIGN KEY([solucion_id])
REFERENCES [dbo].[solucion_aplicativa] ([solucion_id])
GO
ALTER TABLE [dbo].[error] CHECK CONSTRAINT [FK_solucion_erro]
GO
ALTER TABLE [dbo].[grupo]  WITH CHECK ADD  CONSTRAINT [FK_contacto_grupo] FOREIGN KEY([contacto_id])
REFERENCES [dbo].[contacto] ([contacto_id])
GO
ALTER TABLE [dbo].[grupo] CHECK CONSTRAINT [FK_contacto_grupo]
GO
ALTER TABLE [dbo].[grupo]  WITH CHECK ADD  CONSTRAINT [FK_orgid_grupo] FOREIGN KEY([organizacion_id])
REFERENCES [dbo].[organizacion] ([organizacion_id])
GO
ALTER TABLE [dbo].[grupo] CHECK CONSTRAINT [FK_orgid_grupo]
GO
ALTER TABLE [dbo].[incidente]  WITH CHECK ADD  CONSTRAINT [FK_dispositivo_inc] FOREIGN KEY([dispositivo_id])
REFERENCES [dbo].[dispositivo] ([dispositivo_id])
GO
ALTER TABLE [dbo].[incidente] CHECK CONSTRAINT [FK_dispositivo_inc]
GO
ALTER TABLE [dbo].[incidente]  WITH CHECK ADD  CONSTRAINT [FK_orden_inc] FOREIGN KEY([orden_id])
REFERENCES [dbo].[ordentrabajo] ([ordentrabajo_id])
GO
ALTER TABLE [dbo].[incidente] CHECK CONSTRAINT [FK_orden_inc]
GO
ALTER TABLE [dbo].[incidente]  WITH CHECK ADD  CONSTRAINT [FK_servie_inc] FOREIGN KEY([servicio_id])
REFERENCES [dbo].[servicio] ([servicio_id])
GO
ALTER TABLE [dbo].[incidente] CHECK CONSTRAINT [FK_servie_inc]
GO
ALTER TABLE [dbo].[incidente]  WITH CHECK ADD  CONSTRAINT [FK_ticket_inc] FOREIGN KEY([ticket_id])
REFERENCES [dbo].[ticket] ([ticket_id])
GO
ALTER TABLE [dbo].[incidente] CHECK CONSTRAINT [FK_ticket_inc]
GO
ALTER TABLE [dbo].[ordentrabajo]  WITH CHECK ADD  CONSTRAINT [FK_grupo_orden] FOREIGN KEY([grupo_id])
REFERENCES [dbo].[grupo] ([grupo_id])
GO
ALTER TABLE [dbo].[ordentrabajo] CHECK CONSTRAINT [FK_grupo_orden]
GO
ALTER TABLE [dbo].[ordentrabajo]  WITH CHECK ADD  CONSTRAINT [FK_ticket_orden] FOREIGN KEY([ticket_id])
REFERENCES [dbo].[ticket] ([ticket_id])
GO
ALTER TABLE [dbo].[ordentrabajo] CHECK CONSTRAINT [FK_ticket_orden]
GO
ALTER TABLE [dbo].[ordentrabajo]  WITH CHECK ADD  CONSTRAINT [FK_trabajador] FOREIGN KEY([trabajador])
REFERENCES [dbo].[persona] ([persona_id])
GO
ALTER TABLE [dbo].[ordentrabajo] CHECK CONSTRAINT [FK_trabajador]
GO
ALTER TABLE [dbo].[organizacion]  WITH CHECK ADD  CONSTRAINT [FK_padre_org] FOREIGN KEY([padre])
REFERENCES [dbo].[organizacion] ([organizacion_id])
GO
ALTER TABLE [dbo].[organizacion] CHECK CONSTRAINT [FK_padre_org]
GO
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [FK_jefe] FOREIGN KEY([jefe_id])
REFERENCES [dbo].[persona] ([persona_id])
GO
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [FK_jefe]
GO
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [FK_persona_contacto] FOREIGN KEY([contacto_id])
REFERENCES [dbo].[contacto] ([contacto_id])
GO
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [FK_persona_contacto]
GO
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [FK_ubii] FOREIGN KEY([ubicacion_id])
REFERENCES [dbo].[ubicacion] ([ubicacion_id])
GO
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [FK_ubii]
GO
ALTER TABLE [dbo].[problema]  WITH CHECK ADD  CONSTRAINT [FK_dispositivo_prom] FOREIGN KEY([dispositivo_id])
REFERENCES [dbo].[dispositivo] ([dispositivo_id])
GO
ALTER TABLE [dbo].[problema] CHECK CONSTRAINT [FK_dispositivo_prom]
GO
ALTER TABLE [dbo].[problema]  WITH CHECK ADD  CONSTRAINT [FK_error_prom] FOREIGN KEY([error_id])
REFERENCES [dbo].[error] ([error_id])
GO
ALTER TABLE [dbo].[problema] CHECK CONSTRAINT [FK_error_prom]
GO
ALTER TABLE [dbo].[problema]  WITH CHECK ADD  CONSTRAINT [FK_orden_prom] FOREIGN KEY([orden_id])
REFERENCES [dbo].[ordentrabajo] ([ordentrabajo_id])
GO
ALTER TABLE [dbo].[problema] CHECK CONSTRAINT [FK_orden_prom]
GO
ALTER TABLE [dbo].[problema]  WITH CHECK ADD  CONSTRAINT [FK_servicio_prom] FOREIGN KEY([servicio_id])
REFERENCES [dbo].[servicio] ([servicio_id])
GO
ALTER TABLE [dbo].[problema] CHECK CONSTRAINT [FK_servicio_prom]
GO
ALTER TABLE [dbo].[problema]  WITH CHECK ADD  CONSTRAINT [FK_ticket_prom] FOREIGN KEY([ticket_id])
REFERENCES [dbo].[ticket] ([ticket_id])
GO
ALTER TABLE [dbo].[problema] CHECK CONSTRAINT [FK_ticket_prom]
GO
ALTER TABLE [dbo].[requerimiento]  WITH CHECK ADD  CONSTRAINT [FK_dispositivo_req] FOREIGN KEY([dispositivo_id])
REFERENCES [dbo].[dispositivo] ([dispositivo_id])
GO
ALTER TABLE [dbo].[requerimiento] CHECK CONSTRAINT [FK_dispositivo_req]
GO
ALTER TABLE [dbo].[requerimiento]  WITH CHECK ADD  CONSTRAINT [FK_orden_req] FOREIGN KEY([orden_id])
REFERENCES [dbo].[ordentrabajo] ([ordentrabajo_id])
GO
ALTER TABLE [dbo].[requerimiento] CHECK CONSTRAINT [FK_orden_req]
GO
ALTER TABLE [dbo].[requerimiento]  WITH CHECK ADD  CONSTRAINT [FK_servie_req] FOREIGN KEY([servicio_id])
REFERENCES [dbo].[servicio] ([servicio_id])
GO
ALTER TABLE [dbo].[requerimiento] CHECK CONSTRAINT [FK_servie_req]
GO
ALTER TABLE [dbo].[requerimiento]  WITH CHECK ADD  CONSTRAINT [FK_ticket_req] FOREIGN KEY([ticket_id])
REFERENCES [dbo].[ticket] ([ticket_id])
GO
ALTER TABLE [dbo].[requerimiento] CHECK CONSTRAINT [FK_ticket_req]
GO
ALTER TABLE [dbo].[servicio]  WITH CHECK ADD  CONSTRAINT [FK_orgid_serv] FOREIGN KEY([organizacion_id])
REFERENCES [dbo].[organizacion] ([organizacion_id])
GO
ALTER TABLE [dbo].[servicio] CHECK CONSTRAINT [FK_orgid_serv]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [FK_analista] FOREIGN KEY([analista_id])
REFERENCES [dbo].[persona] ([persona_id])
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [FK_analista]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [FK_grupo] FOREIGN KEY([equipo_id])
REFERENCES [dbo].[grupo] ([grupo_id])
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [FK_grupo]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [FK_orgaID] FOREIGN KEY([organizacion_id])
REFERENCES [dbo].[organizacion] ([organizacion_id])
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [FK_orgaID]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [FK_reportadopor] FOREIGN KEY([reportadopor_id])
REFERENCES [dbo].[persona] ([persona_id])
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [FK_reportadopor]
GO
ALTER TABLE [dbo].[ubicacion]  WITH CHECK ADD  CONSTRAINT [FK_orgid_ubi] FOREIGN KEY([organizacion_id])
REFERENCES [dbo].[organizacion] ([organizacion_id])
GO
ALTER TABLE [dbo].[ubicacion] CHECK CONSTRAINT [FK_orgid_ubi]
GO
ALTER TABLE [dbo].[cambio]  WITH CHECK ADD CHECK  (([estado]='procesando' OR [estado]='rechazado' OR [estado]='observacion' OR [estado]='implementado' OR [estado]='cerrado' OR [estado]='asignado' OR [estado]='aprovado'))
GO
ALTER TABLE [dbo].[cambio]  WITH CHECK ADD CHECK  (([tipo_cambio]='rutina' OR [tipo_cambio]='normal' OR [tipo_cambio]='emergencia'))
GO
ALTER TABLE [dbo].[contacto]  WITH CHECK ADD CHECK  (([estado]='inactivo' OR [estado]='activo'))
GO
ALTER TABLE [dbo].[contrato]  WITH CHECK ADD CHECK  (([estado]='obsoleto' OR [estado]='No productivo' OR [estado]='productivo'))
GO
ALTER TABLE [dbo].[contrato]  WITH CHECK ADD CHECK  (([tipoMoneda]='euro' OR [tipoMoneda]='dollar' OR [tipoMoneda]='peso'))
GO
ALTER TABLE [dbo].[grupo]  WITH CHECK ADD CHECK  (([estado]='trabajando' OR [estado]='obsoleto' OR [estado]='implementando'))
GO
ALTER TABLE [dbo].[incidente]  WITH CHECK ADD CHECK  (([estado]='resuelto' OR [estado]='pendiente' OR [estado]='nuevo' OR [estado]='cerrado' OR [estado]='asignado'))
GO
ALTER TABLE [dbo].[incidente]  WITH CHECK ADD CHECK  (([impacto]='4' OR [impacto]='3' OR [impacto]='2' OR [impacto]='1'))
GO
ALTER TABLE [dbo].[incidente]  WITH CHECK ADD CHECK  (([origen]='portal' OR [origen]='telefono' OR [origen]='email'))
GO
ALTER TABLE [dbo].[incidente]  WITH CHECK ADD CHECK  (([satisfaccion_usuario]='4' OR [satisfaccion_usuario]='3' OR [satisfaccion_usuario]='2' OR [satisfaccion_usuario]='1'))
GO
ALTER TABLE [dbo].[incidente]  WITH CHECK ADD CHECK  (([urgencia]='4' OR [urgencia]='3' OR [urgencia]='2' OR [urgencia]='1'))
GO
ALTER TABLE [dbo].[ordentrabajo]  WITH CHECK ADD CHECK  (([estado]='abierto' OR [estado]='cerrado'))
GO
ALTER TABLE [dbo].[organizacion]  WITH CHECK ADD CHECK  (([estado]='inactivo' OR [estado]='activo'))
GO
ALTER TABLE [dbo].[problema]  WITH CHECK ADD CHECK  (([estado]='resuelto' OR [estado]='nuevo' OR [estado]='cerrado' OR [estado]='asignado'))
GO
ALTER TABLE [dbo].[problema]  WITH CHECK ADD CHECK  (([impacto]='4' OR [impacto]='3' OR [impacto]='2' OR [impacto]='1'))
GO
ALTER TABLE [dbo].[problema]  WITH CHECK ADD CHECK  (([satisfaccion_usuario]='4' OR [satisfaccion_usuario]='3' OR [satisfaccion_usuario]='2' OR [satisfaccion_usuario]='1'))
GO
ALTER TABLE [dbo].[problema]  WITH CHECK ADD CHECK  (([urgencia]='4' OR [urgencia]='3' OR [urgencia]='2' OR [urgencia]='1'))
GO
ALTER TABLE [dbo].[requerimiento]  WITH CHECK ADD CHECK  (([estado]='resuelto' OR [estado]='pendiente' OR [estado]='nuevo' OR [estado]='cerrado' OR [estado]='asignado'))
GO
ALTER TABLE [dbo].[requerimiento]  WITH CHECK ADD CHECK  (([impacto]='4' OR [impacto]='3' OR [impacto]='2' OR [impacto]='1'))
GO
ALTER TABLE [dbo].[requerimiento]  WITH CHECK ADD CHECK  (([origen]='portal' OR [origen]='telefono' OR [origen]='email'))
GO
ALTER TABLE [dbo].[requerimiento]  WITH CHECK ADD CHECK  (([satisfaccion_usuario]='4' OR [satisfaccion_usuario]='3' OR [satisfaccion_usuario]='2' OR [satisfaccion_usuario]='1'))
GO
ALTER TABLE [dbo].[requerimiento]  WITH CHECK ADD CHECK  (([urgencia]='4' OR [urgencia]='3' OR [urgencia]='2' OR [urgencia]='1'))
GO
ALTER TABLE [dbo].[servicio]  WITH CHECK ADD CHECK  (([estado]='produciendo' OR [estado]='obsoleto' OR [estado]='implementando'))
GO
ALTER TABLE [dbo].[servicio]  WITH CHECK ADD CHECK  (([tipo_requerimiento]='requerimiento' OR [tipo_requerimiento]='problema' OR [tipo_requerimiento]='incidente'))
GO
ALTER TABLE [dbo].[solucion_aplicativa]  WITH CHECK ADD CHECK  (([estado]='abierto' OR [estado]='cerrado'))
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD CHECK  (([estado]='resuelto' OR [estado]='procesando' OR [estado]='cerrado'))
GO
ALTER TABLE [dbo].[ubicacion]  WITH CHECK ADD CHECK  (([estado]='inactivo' OR [estado]='activo'))
GO
/****** Object:  StoredProcedure [dbo].[sp_VerContacto]    Script Date: 05/12/2019 10:19:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_VerContacto]
AS
SELECT * FROM [dbo].[contacto]
GO
/****** Object:  StoredProcedure [dbo].[sp_VerContrato]    Script Date: 05/12/2019 10:19:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_VerContrato]
AS
SELECT * FROM [dbo].[contrato]
GO
/****** Object:  StoredProcedure [dbo].[sp_VerDispositivo]    Script Date: 05/12/2019 10:19:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_VerDispositivo]
AS
SELECT * FROM [dbo].[dispositivo]
GO
/****** Object:  StoredProcedure [dbo].[sp_VerIncidente]    Script Date: 05/12/2019 10:19:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_VerIncidente]
AS
SELECT * FROM [dbo].[incidente]
GO
/****** Object:  StoredProcedure [dbo].[sp_VerPersona]    Script Date: 05/12/2019 10:19:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_VerPersona]
AS
SELECT * FROM [dbo].[persona]
GO
/****** Object:  Trigger [dbo].[tr_insContrato]    Script Date: 05/12/2019 10:19:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE TRIGGER [dbo].[tr_insContrato] ON [dbo].[contrato]
    for INSERT
    AS
    BEGIN
		set nocount on;
		INSERT INTO trigContr VALUES((SELECT COUNT(*) FROM trigContr) + 1,'Se agrego un contrato' + STR((SELECT contrato_id FROM inserted)),'Contrato',GETDATE());
    END
GO
ALTER TABLE [dbo].[contrato] ENABLE TRIGGER [tr_insContrato]
GO
USE [master]
GO
ALTER DATABASE [practica2] SET  READ_WRITE 
GO
