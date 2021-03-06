USE [master]
GO
/****** Object:  Database [Consorcius]    Script Date: 9/17/2017 7:24:52 AM ******/
CREATE DATABASE [Consorcius]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Consorcius', FILENAME = N'C:\ConsorciusDB\Consorcius.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Consorcius_log', FILENAME = N'C:\ConsorciusDB\Consorcius_log.ldf' , SIZE = 1280KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Consorcius] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Consorcius].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Consorcius] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Consorcius] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Consorcius] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Consorcius] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Consorcius] SET ARITHABORT OFF 
GO
ALTER DATABASE [Consorcius] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Consorcius] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Consorcius] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Consorcius] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Consorcius] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Consorcius] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Consorcius] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Consorcius] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Consorcius] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Consorcius] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Consorcius] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Consorcius] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Consorcius] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Consorcius] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Consorcius] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Consorcius] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Consorcius] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Consorcius] SET RECOVERY FULL 
GO
ALTER DATABASE [Consorcius] SET  MULTI_USER 
GO
ALTER DATABASE [Consorcius] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Consorcius] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Consorcius] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Consorcius] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Consorcius] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Consorcius', N'ON'
GO
ALTER DATABASE [Consorcius] SET QUERY_STORE = OFF
GO
USE [Consorcius]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Consorcius]
GO
/****** Object:  User [Consorcius]    Script Date: 9/17/2017 7:24:52 AM ******/
CREATE USER [Consorcius] FOR LOGIN [Consorcius] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [Consorcius]
GO
/****** Object:  Table [dbo].[BITACORA]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITACORA](
	[BI_idActividad] [int] IDENTITY(1,1) NOT NULL,
	[BI_idActividadTipo] [int] NOT NULL,
	[BI_usuario] [varchar](50) NOT NULL,
	[BI_descripcion] [nvarchar](max) NOT NULL,
	[BI_fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_BITACORA] PRIMARY KEY CLUSTERED 
(
	[BI_idActividad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CATEGORIA_MOVIMIENTO]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORIA_MOVIMIENTO](
	[CAM_idCategoria] [int] IDENTITY(1,1) NOT NULL,
	[CAM_categoriaMovimiento] [varchar](50) NOT NULL,
	[CAM_descripcion] [varchar](max) NOT NULL,
	[CAM_tipo] [char](1) NOT NULL,
 CONSTRAINT [PK_CATEGORIA_MOVIMIENTO] PRIMARY KEY CLUSTERED 
(
	[CAM_idCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTE](
	[CL_idCliente] [int] IDENTITY(1,1) NOT NULL,
	[CL_nombre] [varchar](max) NOT NULL,
	[CL_fechaAlta] [date] NOT NULL,
	[CL_direccion] [varchar](max) NOT NULL,
	[CL_telefono] [varchar](max) NOT NULL,
	[CL_cuit] [varchar](50) NOT NULL,
	[CL_eliminado] [bit] NOT NULL,
 CONSTRAINT [PK_CLIENTE] PRIMARY KEY CLUSTERED 
(
	[CL_idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CONSORCIO]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONSORCIO](
	[CO_idConsorcio] [int] IDENTITY(1,1) NOT NULL,
	[CO_codPostal] [varchar](50) NOT NULL,
	[CO_diaVencimientoExpensa] [int] NOT NULL,
	[CO_nombre] [varchar](max) NOT NULL,
	[CO_direccion] [varchar](max) NOT NULL,
	[CO_localidad] [varchar](max) NOT NULL,
	[CO_telefono] [varchar](50) NOT NULL,
	[CO_interes] [decimal](4, 2) NOT NULL,
	[CO_eliminado] [bit] NOT NULL,
	[CO_idCliente] [int] NOT NULL,
 CONSTRAINT [PK_CONSORCIO] PRIMARY KEY CLUSTERED 
(
	[CO_idConsorcio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CONTROL]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONTROL](
	[CT_idControl] [varchar](50) NOT NULL,
	[CT_descripcion] [varchar](max) NULL,
 CONSTRAINT [PK_CONTROL] PRIMARY KEY CLUSTERED 
(
	[CT_idControl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DBBACKUP]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DBBACKUP](
	[BK_idBackup] [int] IDENTITY(1,1) NOT NULL,
	[BK_nombreBackup] [varchar](255) NOT NULL,
	[BK_fechaCreacion] [datetime] NOT NULL,
	[BK_path] [varchar](max) NOT NULL,
	[BK_descripcion] [varchar](max) NULL,
 CONSTRAINT [PK_BACKUP] PRIMARY KEY CLUSTERED 
(
	[BK_idBackup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DIGITOV]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIGITOV](
	[DV_idDigitoV] [int] IDENTITY(1,1) NOT NULL,
	[DV_nombreTabla] [varchar](50) NOT NULL,
	[DV_hash] [varchar](max) NOT NULL,
 CONSTRAINT [PK_DIGITOV] PRIMARY KEY CLUSTERED 
(
	[DV_idDigitoV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EGRESO]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EGRESO](
	[EG_idEgreso] [int] IDENTITY(1,1) NOT NULL,
	[EG_idCategoria] [int] NOT NULL,
	[EG_descripcion] [varchar](max) NULL,
	[EG_recurrencia] [varchar](max) NOT NULL,
	[EG_idUnidadFuncional] [int] NULL,
	[EG_monto] [decimal](18, 2) NOT NULL,
	[EG_fecha] [date] NOT NULL,
	[EG_prorrateo] [varchar](max) NOT NULL,
	[EG_comprobante] [bit] NOT NULL,
	[EG_idUsuario] [int] NOT NULL,
	[EG_idConsorcio] [int] NOT NULL,
 CONSTRAINT [PK_EGRESO] PRIMARY KEY CLUSTERED 
(
	[EG_idEgreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ETIQUETA]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ETIQUETA](
	[ET_idEtiqueta] [varchar](10) NOT NULL,
	[ET_idIdioma] [int] NOT NULL,
	[ET_texto] [nvarchar](max) NOT NULL,
	[ET_descripcion] [nvarchar](max) NULL,
 CONSTRAINT [PK_ETIQUETA] PRIMARY KEY CLUSTERED 
(
	[ET_idEtiqueta] ASC,
	[ET_idIdioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EXPENSA]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXPENSA](
	[EX_idExpensa] [int] NOT NULL,
	[EX_montoTotal] [decimal](18, 3) NOT NULL,
	[EX_idUnidadFuncional] [int] NOT NULL,
	[EX_idPeriodo] [int] NOT NULL,
	[EX_fechaDeVencimiento] [date] NOT NULL,
	[EX_esPaga] [bit] NOT NULL,
	[EX_fechaDePago] [date] NOT NULL,
	[EX_idUsuario] [int] NOT NULL,
	[EX_anulada] [bit] NOT NULL,
 CONSTRAINT [PK_EXPENSA] PRIMARY KEY CLUSTERED 
(
	[EX_idExpensa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EXPENSA_EGRESO]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXPENSA_EGRESO](
	[EXE_idLineaExpensa] [int] NOT NULL,
	[EXE_idExpensa] [int] NOT NULL,
	[EXE_idEgreso] [int] NOT NULL,
	[EXE_montoRelativo] [decimal](18, 2) NOT NULL,
	[EXE_coeficienteProrrateo] [decimal](5, 2) NOT NULL,
 CONSTRAINT [PK_EXPENSA_EGRESO] PRIMARY KEY CLUSTERED 
(
	[EXE_idLineaExpensa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FAMILIA]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAMILIA](
	[FA_idFamila] [int] IDENTITY(1,1) NOT NULL,
	[FA_nombre] [varchar](50) NOT NULL,
	[FA_descripcion] [varchar](max) NOT NULL,
 CONSTRAINT [PK_FAMILIA_1] PRIMARY KEY CLUSTERED 
(
	[FA_idFamila] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FAMILIA_PATENTE]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAMILIA_PATENTE](
	[FP_idFamilia] [int] NOT NULL,
	[FP_idPatente] [varchar](50) NOT NULL,
 CONSTRAINT [PK_FAMILIA_PATENTE] PRIMARY KEY CLUSTERED 
(
	[FP_idFamilia] ASC,
	[FP_idPatente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IDIOMA]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IDIOMA](
	[ID_idIdioma] [varchar](3) NOT NULL,
	[ID_idioma] [varchar](50) NOT NULL,
 CONSTRAINT [PK_IDIOMA] PRIMARY KEY CLUSTERED 
(
	[ID_idIdioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[INGRESO]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INGRESO](
	[IN_idIngreso] [int] IDENTITY(1,1) NOT NULL,
	[IN_idCategoria] [int] NOT NULL,
	[IN_descripcion] [varchar](max) NULL,
	[IN_idUnidadFuncional] [int] NULL,
	[IN_periodo] [int] NOT NULL,
	[IN_monto] [decimal](18, 2) NOT NULL,
	[IN_fecha] [date] NOT NULL,
	[IN_idUsuario] [int] NOT NULL,
	[IN_idConsorcio] [int] NOT NULL,
 CONSTRAINT [PK_INGRESO] PRIMARY KEY CLUSTERED 
(
	[IN_idIngreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[INQUILINO_UNIDADFUNCIONAL]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INQUILINO_UNIDADFUNCIONAL](
	[IUF_idUnidadFuncional] [int] NOT NULL,
	[IUF_idInquilino] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PATENTE]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PATENTE](
	[PA_idPatente] [varchar](50) NOT NULL,
	[PA_descripcion] [varchar](max) NOT NULL,
	[PA_pagina] [varchar](max) NOT NULL,
 CONSTRAINT [PK_PATENTE] PRIMARY KEY CLUSTERED 
(
	[PA_idPatente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PERIODO]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERIODO](
	[PE_idPeriodo] [int] NOT NULL,
	[PE_fechaInicio] [date] NOT NULL,
	[PE_fechaFin] [date] NOT NULL,
 CONSTRAINT [PK_PERIODO] PRIMARY KEY CLUSTERED 
(
	[PE_idPeriodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PROPIETARIO_UNIDADFUNCIONAL]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROPIETARIO_UNIDADFUNCIONAL](
	[PUF_idPropietario] [int] NOT NULL,
	[PUF_idUnidadFuncional] [int] NOT NULL,
 CONSTRAINT [PK_PROPIETARIO_UNIDADFUNCIONAL] PRIMARY KEY CLUSTERED 
(
	[PUF_idPropietario] ASC,
	[PUF_idUnidadFuncional] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TIPO_BITACORA]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPO_BITACORA](
	[TB_idActividadTipo] [int] NOT NULL,
	[TB_descripcionActividadTipo] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TIPO_BITACORA] PRIMARY KEY CLUSTERED 
(
	[TB_idActividadTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TIPO_EGRESO]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPO_EGRESO](
	[TEG_idTipo] [int] NOT NULL,
	[TEG_tipoEgreso] [varchar](50) NOT NULL,
	[TEG_descripcion] [varchar](max) NOT NULL,
 CONSTRAINT [PK_TIPO_EGRESO] PRIMARY KEY CLUSTERED 
(
	[TEG_idTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TIPO_MOVIMIENTO]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPO_MOVIMIENTO](
	[TMO_idTipo] [int] NOT NULL,
	[TMO_tipoMovimiento] [varchar](50) NOT NULL,
	[TMO_descripcion] [varchar](max) NOT NULL,
 CONSTRAINT [PK_TIPO_MOVIMIENTO] PRIMARY KEY CLUSTERED 
(
	[TMO_idTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UNIDAD_FUNCIONAL]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UNIDAD_FUNCIONAL](
	[UF_idUnidadFuncional] [int] IDENTITY(1,1) NOT NULL,
	[UF_idConsorcio] [int] NOT NULL,
	[UF_nombre] [varchar](50) NOT NULL,
	[UF_descripcion] [varchar](max) NOT NULL,
	[UF_coeficienteProrrateo] [decimal](5, 4) NOT NULL,
	[UF_metrosCuadrados] [int] NOT NULL,
	[UF_eliminado] [bit] NOT NULL,
 CONSTRAINT [PK_UNIDAD_FUNCIONAL] PRIMARY KEY CLUSTERED 
(
	[UF_idUnidadFuncional] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIO](
	[US_idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[US_apellido] [varchar](50) NOT NULL,
	[US_nombre] [varchar](50) NOT NULL,
	[US_usuario] [varchar](50) NOT NULL,
	[US_clave] [varchar](64) NOT NULL,
	[US_eliminado] [bit] NOT NULL,
	[US_bloqueado] [bit] NOT NULL,
	[US_idCliente] [int] NOT NULL,
	[US_email] [varchar](50) NOT NULL,
	[US_idIdioma] [varchar](3) NOT NULL,
	[US_hash] [varchar](max) NOT NULL,
 CONSTRAINT [PK_USUARIO] PRIMARY KEY CLUSTERED 
(
	[US_idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[USUARIO_CLIENTE]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIO_CLIENTE](
	[UC_idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[UC_apellido] [varchar](50) NOT NULL,
	[UC_nombre] [varchar](50) NOT NULL,
	[UC_usuario] [varchar](16) NOT NULL,
	[UC_clave] [varchar](64) NOT NULL,
	[UC_eliminado] [bit] NOT NULL,
	[UC_bloqueado] [bit] NOT NULL,
	[UC_idCliente] [int] NOT NULL,
	[UC_email] [varchar](50) NOT NULL,
	[UC_idIdioma] [int] NOT NULL,
	[UC_fechaAlta] [date] NOT NULL,
 CONSTRAINT [PK_USUARIO_CLIENTE] PRIMARY KEY CLUSTERED 
(
	[UC_idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[USUARIO_FAMILIA]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIO_FAMILIA](
	[UFA_idUsuario] [int] NOT NULL,
	[UFA_idFamilia] [int] NOT NULL,
 CONSTRAINT [PK_USUARIO_FAMILIA] PRIMARY KEY CLUSTERED 
(
	[UFA_idUsuario] ASC,
	[UFA_idFamilia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[USUARIO_PATENTE]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIO_PATENTE](
	[UP_idUsuario] [int] NOT NULL,
	[UP_idPatente] [varchar](50) NOT NULL,
 CONSTRAINT [PK_USUARIO_PATENTE] PRIMARY KEY CLUSTERED 
(
	[UP_idUsuario] ASC,
	[UP_idPatente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VALOR_CONTROL]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VALOR_CONTROL](
	[VC_idControl] [varchar](50) NOT NULL,
	[VC_idIdioma] [varchar](3) NOT NULL,
	[VC_texto] [varchar](max) NOT NULL,
 CONSTRAINT [PK_VALORCONTROL] PRIMARY KEY CLUSTERED 
(
	[VC_idControl] ASC,
	[VC_idIdioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BITACORA] ON 

INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1, 8, N'gtaboadela', N'El usuario gtaboadela ha borrado la bitacora', CAST(N'2017-09-13T00:46:45.800' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (2, 7, N'gtaboadela', N'El usuario gtaboadela se ha deslogueado del sistema.', CAST(N'2017-09-13T14:17:19.460' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (3, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-13T14:17:23.087' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (4, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-13T14:17:23.103' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (5, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-13T14:21:39.277' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (6, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-13T14:21:39.290' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (7, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-13T14:31:12.463' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (8, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-13T14:31:12.477' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (9, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-13T14:32:06.027' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (10, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-13T14:32:06.033' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (11, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-13T14:33:45.993' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (12, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-13T14:33:46.003' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (13, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-13T14:53:02.963' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (14, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-13T14:53:02.980' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (15, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-13T14:53:29.047' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (16, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-13T14:53:29.067' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (17, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-13T14:58:12.443' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (18, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-13T14:58:12.453' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (19, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-13T14:58:42.747' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (20, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-13T14:58:42.763' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (21, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-13T14:59:31.473' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (22, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-13T14:59:31.483' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (23, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-13T17:42:43.010' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (24, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-13T17:42:43.027' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (25, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-13T17:44:03.383' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (26, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-13T17:44:03.400' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (27, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-13T17:50:00.213' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (28, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-13T17:50:00.223' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (29, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-13T17:54:26.217' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (30, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-13T17:54:26.227' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (31, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-13T17:56:02.783' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (32, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-13T17:56:02.793' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (33, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-13T17:57:36.977' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (34, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-13T17:57:36.987' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (35, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-13T19:31:59.283' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (36, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-13T19:31:59.300' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (37, 12, N'', N'', CAST(N'2017-09-13T19:32:06.223' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (38, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-13T19:37:29.993' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (39, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-13T19:37:30.003' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1002, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-13T19:42:17.100' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1003, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-13T19:42:17.113' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1004, 12, N'', N'', CAST(N'2017-09-13T19:42:51.617' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1005, 7, N'gtaboadela', N'El usuario gtaboadela se ha deslogueado del sistema.', CAST(N'2017-09-13T19:43:06.693' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1006, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-14T16:25:06.447' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1007, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-14T16:25:06.463' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1008, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-14T16:29:31.750' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1009, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-14T16:29:31.760' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1010, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-14T16:32:32.637' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1011, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-14T16:32:32.647' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1012, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-14T16:35:53.690' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1013, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-14T16:35:53.703' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1014, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-14T16:54:56.313' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1015, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-14T16:54:56.327' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1016, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-14T17:07:08.717' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1017, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-14T17:07:08.730' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1018, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-14T17:10:52.210' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1019, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-14T17:10:52.220' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1020, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-14T17:30:13.883' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1021, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-14T17:30:13.897' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1022, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-14T17:40:06.010' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1023, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-14T17:40:06.023' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1024, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-14T17:43:30.287' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1025, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-14T17:43:30.300' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1026, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-14T17:47:46.063' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1027, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-14T17:47:46.077' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1028, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-14T17:54:39.500' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1029, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-14T17:54:39.537' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1030, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-14T23:39:36.470' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1031, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-14T23:39:36.483' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1032, 1, N'gtaboadela', N'Intento de Login; Usuario: gtaboadela', CAST(N'2017-09-14T23:42:17.433' AS DateTime))
INSERT [dbo].[BITACORA] ([BI_idActividad], [BI_idActividadTipo], [BI_usuario], [BI_descripcion], [BI_fecha]) VALUES (1033, 2, N'gtaboadela', N'Login exitoso,Usuario: gtaboadela', CAST(N'2017-09-14T23:42:17.447' AS DateTime))
SET IDENTITY_INSERT [dbo].[BITACORA] OFF
SET IDENTITY_INSERT [dbo].[CATEGORIA_MOVIMIENTO] ON 

INSERT [dbo].[CATEGORIA_MOVIMIENTO] ([CAM_idCategoria], [CAM_categoriaMovimiento], [CAM_descripcion], [CAM_tipo]) VALUES (1, N'Prestaciones', N'Categoria de Egresos - Servicios prestados', N'E')
INSERT [dbo].[CATEGORIA_MOVIMIENTO] ([CAM_idCategoria], [CAM_categoriaMovimiento], [CAM_descripcion], [CAM_tipo]) VALUES (2, N'Obras y mantenimiento', N'Categoria de Egresos - Obras y mantenimiento', N'E')
INSERT [dbo].[CATEGORIA_MOVIMIENTO] ([CAM_idCategoria], [CAM_categoriaMovimiento], [CAM_descripcion], [CAM_tipo]) VALUES (3, N'Gastos Administrativos', N'Categoria de Egresos - Gastos Varios', N'E')
INSERT [dbo].[CATEGORIA_MOVIMIENTO] ([CAM_idCategoria], [CAM_categoriaMovimiento], [CAM_descripcion], [CAM_tipo]) VALUES (4, N'Gastos Varios', N'Categoria de Egresos - Gastos Varios', N'E')
INSERT [dbo].[CATEGORIA_MOVIMIENTO] ([CAM_idCategoria], [CAM_categoriaMovimiento], [CAM_descripcion], [CAM_tipo]) VALUES (5, N'Cobro de Expensas', N'Categoria de Ingresos - Cobro de expensas', N'I')
INSERT [dbo].[CATEGORIA_MOVIMIENTO] ([CAM_idCategoria], [CAM_categoriaMovimiento], [CAM_descripcion], [CAM_tipo]) VALUES (6, N'Cobro de Multas', N'Categoria de Ingresos - Cobro de Multas', N'I')
INSERT [dbo].[CATEGORIA_MOVIMIENTO] ([CAM_idCategoria], [CAM_categoriaMovimiento], [CAM_descripcion], [CAM_tipo]) VALUES (7, N'Ingresos Varios', N'Categoria de Ingresos - Ingresos Varios', N'I')
SET IDENTITY_INSERT [dbo].[CATEGORIA_MOVIMIENTO] OFF
SET IDENTITY_INSERT [dbo].[CLIENTE] ON 

INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (1, N'Administracion Figueroa', CAST(N'2014-01-01' AS Date), N'Juramiento 2130', N'4662-8227', N'20-19932644-7', 0)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (2, N'Administracion Balcedo', CAST(N'2014-11-02' AS Date), N'Mansilla 5042', N'42064650', N'20-29932644-7', 0)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (10, N'', CAST(N'2014-11-02' AS Date), N'', N'', N'', 1)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (11, N'', CAST(N'2014-11-02' AS Date), N'', N'', N'', 1)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (12, N'Ekuba Administracion', CAST(N'2014-11-02' AS Date), N'Mansilla 1289', N'1662542', N'13414', 0)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (13, N'Alvarez S.A.', CAST(N'2014-11-03' AS Date), N'Mansilla 1289', N'4553-0998', N'1234567', 0)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (14, N'Balcedo Administracion', CAST(N'2014-11-03' AS Date), N'Mansilla 1289', N'3344-9988', N'123456', 0)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (15, N'Pintin', CAST(N'2014-10-10' AS Date), N'Puto', N'Puto', N'Puto', 1)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (16, N'Soldaduras Pinto', CAST(N'2014-11-03' AS Date), N'Calle Falsa 123', N'4778-0098', N'123456', 0)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (17, N'Oso Propiedades', CAST(N'2014-11-03' AS Date), N'Pichincha 2345', N'3883-9938', N'123456', 0)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (18, N'Boli Prop', CAST(N'2014-11-03' AS Date), N'Pizzurno 473', N'3242-9833', N'1234566', 1)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (19, N'Martino y Asociados', CAST(N'2014-11-03' AS Date), N'Mansilla 1289', N'2892-2323', N'123456', 0)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (20, N'Curria e hijos', CAST(N'2014-11-03' AS Date), N'Mansilla 1289', N'3344-2342', N'123456', 1)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (21, N'Minecraft SA', CAST(N'2014-11-03' AS Date), N'Rodriguez 1728', N'4662-8293', N'123456', 0)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (22, N'Uli Prop', CAST(N'2014-11-03' AS Date), N'Rodriguez 1728', N'1293-9383', N'123456', 0)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (23, N'Altamirano SA', CAST(N'2014-11-03' AS Date), N'La Quiaca 939', N'8922-2323', N'2398232', 0)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (24, N'Louyo Inc.', CAST(N'2014-11-03' AS Date), N'Mansilla 1289', N'1873-2032', N'1219812', 0)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (25, N'BBH holdings', CAST(N'2014-11-03' AS Date), N'Aliso 2920', N'1233-3838', N'1233873', 0)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (26, N'Fashion Prop', CAST(N'2014-11-03' AS Date), N'Pizzurno 473', N'2823-9292', N'123456', 0)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (27, N'Consorcio Pame', CAST(N'2014-11-03' AS Date), N'Mansilla 1289', N'4335-8736', N'123456', 0)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (28, N'Ramiro Consorcios', CAST(N'2014-11-03' AS Date), N'Mansilla 1289', N'2393-9983', N'123456', 0)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (29, N'Zenko Sud SA', CAST(N'2014-11-03' AS Date), N'Mauritania 1929', N'123123', N'20-29930-893', 0)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (30, N'Moreira', CAST(N'2014-11-03' AS Date), N'Pichincha 2345', N'2823-9292', N'123456', 0)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (31, N'Moreira Prop', CAST(N'2014-11-03' AS Date), N'Fruta', N'Fruta', N'Fruta', 0)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (32, N'Juana Prop', CAST(N'2014-11-03' AS Date), N'Mansilla 1289', N'2823-9292', N'20-29930-893', 0)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (33, N'szifron', CAST(N'2014-11-03' AS Date), N'szifron', N'szifron', N'szifron', 0)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (34, N'olor', CAST(N'2014-11-03' AS Date), N'olor', N'olor', N'olor', 1)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (35, N'qwer', CAST(N'2014-11-03' AS Date), N'werq', N'qwe', N'qwer', 0)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (36, N'qwerqwe', CAST(N'2014-11-03' AS Date), N'qwerq', N'qwerqwr', N'wer', 0)
INSERT [dbo].[CLIENTE] ([CL_idCliente], [CL_nombre], [CL_fechaAlta], [CL_direccion], [CL_telefono], [CL_cuit], [CL_eliminado]) VALUES (37, N'wer', CAST(N'2014-11-03' AS Date), N'ert', N'wer', N'ert', 0)
SET IDENTITY_INSERT [dbo].[CLIENTE] OFF
SET IDENTITY_INSERT [dbo].[CONSORCIO] ON 

INSERT [dbo].[CONSORCIO] ([CO_idConsorcio], [CO_codPostal], [CO_diaVencimientoExpensa], [CO_nombre], [CO_direccion], [CO_localidad], [CO_telefono], [CO_interes], [CO_eliminado], [CO_idCliente]) VALUES (1, N'1874', 10, N'Quinta de la Luz', N'Pizzurno 473', N'Hurlingham', N'4665-8337', CAST(2.50 AS Decimal(4, 2)), 0, 1)
INSERT [dbo].[CONSORCIO] ([CO_idConsorcio], [CO_codPostal], [CO_diaVencimientoExpensa], [CO_nombre], [CO_direccion], [CO_localidad], [CO_telefono], [CO_interes], [CO_eliminado], [CO_idCliente]) VALUES (2, N'1686', 8, N'Barrio Cartero', N'Pizzurno 473', N'Hurlingham', N'4662-8337', CAST(2.50 AS Decimal(4, 2)), 0, 2)
INSERT [dbo].[CONSORCIO] ([CO_idConsorcio], [CO_codPostal], [CO_diaVencimientoExpensa], [CO_nombre], [CO_direccion], [CO_localidad], [CO_telefono], [CO_interes], [CO_eliminado], [CO_idCliente]) VALUES (3, N'1874', 8, N'Torres de Manantiales', N'Mansilla 5042', N'Wilde', N'3530-5951', CAST(2.50 AS Decimal(4, 2)), 1, 1)
INSERT [dbo].[CONSORCIO] ([CO_idConsorcio], [CO_codPostal], [CO_diaVencimientoExpensa], [CO_nombre], [CO_direccion], [CO_localidad], [CO_telefono], [CO_interes], [CO_eliminado], [CO_idCliente]) VALUES (4, N'1874', 10, N'Torres SPA', N'Pichincha 11', N'Wilde', N'4663-9983', CAST(6.80 AS Decimal(4, 2)), 0, 1)
INSERT [dbo].[CONSORCIO] ([CO_idConsorcio], [CO_codPostal], [CO_diaVencimientoExpensa], [CO_nombre], [CO_direccion], [CO_localidad], [CO_telefono], [CO_interes], [CO_eliminado], [CO_idCliente]) VALUES (5, N'1686', 10, N'Barrio Cartero', N'Mansilla 2392', N'Hurlingham', N'4662-8227', CAST(0.10 AS Decimal(4, 2)), 1, 1)
SET IDENTITY_INSERT [dbo].[CONSORCIO] OFF
INSERT [dbo].[CONTROL] ([CT_idControl], [CT_descripcion]) VALUES (N'CLHTITLE01', N'Titulo Principal')
INSERT [dbo].[CONTROL] ([CT_idControl], [CT_descripcion]) VALUES (N'CLHTITLE02', N'Titulo Secundario')
SET IDENTITY_INSERT [dbo].[DBBACKUP] ON 

INSERT [dbo].[DBBACKUP] ([BK_idBackup], [BK_nombreBackup], [BK_fechaCreacion], [BK_path], [BK_descripcion]) VALUES (1, N'TestBkp.bak', CAST(N'2017-09-12T14:54:18.947' AS DateTime), N'C:\Temp', N'Initial Backup')
INSERT [dbo].[DBBACKUP] ([BK_idBackup], [BK_nombreBackup], [BK_fechaCreacion], [BK_path], [BK_descripcion]) VALUES (2, N'Sample.bak', CAST(N'2017-09-12T16:31:48.460' AS DateTime), N'C:\Temp', N'Sample Bakcup')
SET IDENTITY_INSERT [dbo].[DBBACKUP] OFF
SET IDENTITY_INSERT [dbo].[DIGITOV] ON 

INSERT [dbo].[DIGITOV] ([DV_idDigitoV], [DV_nombreTabla], [DV_hash]) VALUES (2, N'USUARIO', N'WEVJWFHpOH5dU9KQcxQpaFbNZhalOhRZWVaJTxbRVdNFddVFU5dFMBb5UVNRcJVVUQRlepWIWddlUx==')
SET IDENTITY_INSERT [dbo].[DIGITOV] OFF
SET IDENTITY_INSERT [dbo].[EGRESO] ON 

INSERT [dbo].[EGRESO] ([EG_idEgreso], [EG_idCategoria], [EG_descripcion], [EG_recurrencia], [EG_idUnidadFuncional], [EG_monto], [EG_fecha], [EG_prorrateo], [EG_comprobante], [EG_idUsuario], [EG_idConsorcio]) VALUES (3, 1, N'Gastos de Plomeria', N'Mensual', 1, CAST(5678.09 AS Decimal(18, 2)), CAST(N'2014-11-25' AS Date), N'Ordinario', 1, 2, 1)
INSERT [dbo].[EGRESO] ([EG_idEgreso], [EG_idCategoria], [EG_descripcion], [EG_recurrencia], [EG_idUnidadFuncional], [EG_monto], [EG_fecha], [EG_prorrateo], [EG_comprobante], [EG_idUsuario], [EG_idConsorcio]) VALUES (6, 1, N'Factura Edesur - Nov', N'Mensual', 1, CAST(12000.59 AS Decimal(18, 2)), CAST(N'2014-11-25' AS Date), N'Ordinario', 1, 8, 1)
INSERT [dbo].[EGRESO] ([EG_idEgreso], [EG_idCategoria], [EG_descripcion], [EG_recurrencia], [EG_idUnidadFuncional], [EG_monto], [EG_fecha], [EG_prorrateo], [EG_comprobante], [EG_idUsuario], [EG_idConsorcio]) VALUES (8, 1, N'Seguridad  - AUCA', N'Mensual', 1, CAST(20000.00 AS Decimal(18, 2)), CAST(N'2014-11-25' AS Date), N'Ordinario', 1, 8, 1)
SET IDENTITY_INSERT [dbo].[EGRESO] OFF
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHANC001', 1, N'Inicio', N'Tag A - Top Menu Clientes')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHANC001', 2, N'Home', N'Tag A - Top Menu Clientes')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHANC002', 1, N'Cambiar idioma', N'Tag A - Top Menu Clientes - Cambiar Idioma')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHANC002', 2, N'Switch language', N'Tag A - Top Menu Clientes - Cambiar Idioma')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHANC003', 1, N'Cerrar Sesion', N'Tag A - Top Menu Clientes')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHANC003', 2, N'Logout', N'Tag A - Top Menu Clientes')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHANC004', 1, N'Usuarios del Consorcio', N'Top Menu Clientes')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHANC004', 2, N'Building users', N'Top Menu Clientes')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHANC005', 1, N'Consorcios', N'Top Menu Clientes')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHANC005', 2, N'Buildings', N'Top Menu Clientes')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHANC006', 1, N'Movimientos', N'Top Menu Clientes')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHANC006', 2, N'Movements', N'Top Menu Clientes')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHANC007', 1, N'Expensas', N'Top Menu Clientes')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHANC007', 2, N'Expenses', N'Top Menu Clientes')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT001', 1, N'Home de Clientes', N'Titulo H1')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT001', 2, N'Customer''s Home', N'Titulo H1')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT002', 1, N'Usuarios del consorcio', N'Tag P')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT002', 2, N'Building Users', N'Tag P')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT003', 1, N'Consorcios', N'Tag P')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT003', 2, N'Buildings', N'Tag P')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT004', 1, N'Movimientos', N'Tag P')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT004', 2, N'Movements', N'Tag P')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT005', 1, N'Expensas', N'Tag P')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT005', 2, N'Expenses', N'Tag P')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT006', 1, N'Operaciones disponibles', N'Titulo H1 - Side Menu Clientes')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT006', 2, N'Available operations', N'Titulo H1 - Side Menu Clientes')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT007', 1, N'Usuarios del consorcio', N'Tag A - Side Menu Clientes - Operacion')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT007', 2, N'Building users', N'Tag A - Side Menu Clientes - Operacion')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT008', 1, N'Consorcios', N'Tag A - Side Menu Clientes - Operacion')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT008', 2, N'Buildings', N'Tag A - Side Menu Clientes - Operacion')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT009', 1, N'Movimientos', N'Tag A - Side Menu Clientes - Operacion')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT009', 2, N'Movements', N'Tag A - Side Menu Clientes - Operacion')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT010', 1, N'Expensas', N'Tag A - Side Menu Clientes - Operacion')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT010', 2, N'Expenses', N'Tag A - Side Menu Clientes - Operacion')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT011', 1, N'Consorcios', N'Titulo H1')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT011', 2, N'Buildings', N'Titulo H1')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT012', 1, N'Agregar nuevo..', N'Tag A - Side Menu Consorcios - Operacion')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT012', 2, N'Add New..', N'Tag A - Side Menu Consorcios - Operacion')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT013', 1, N'Unidades Funcionales ', N'H1 Titulo')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT013', 2, N'Functional Units', N'H1 Titulo')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT014', 1, N'Agregar Nuevo Ingreso', N'H1 Titulo')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT014', 2, N'Add new income', N'H1 Titulo')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT015', 1, N'Agregar Nuevo Egreso', N'H1 Titulo')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT015', 2, N'Add new expense', N'H1 Titulo')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT016', 1, N'Liquidar Expensas', N'H1 Titulo')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT016', 2, N'Create Expense', N'H1 Titulo')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT017', 1, N'Previsualizar Expensas', N'H1 Titulo')
INSERT [dbo].[ETIQUETA] ([ET_idEtiqueta], [ET_idIdioma], [ET_texto], [ET_descripcion]) VALUES (N'CLHGHT017', 2, N'Expenses Preview', N'H1 Titulo')
SET IDENTITY_INSERT [dbo].[FAMILIA] ON 

INSERT [dbo].[FAMILIA] ([FA_idFamila], [FA_nombre], [FA_descripcion]) VALUES (2, N'Administrador', N'Administrador del consorcio')
INSERT [dbo].[FAMILIA] ([FA_idFamila], [FA_nombre], [FA_descripcion]) VALUES (3, N'Encargado', N'Encargado del consorcio')
SET IDENTITY_INSERT [dbo].[FAMILIA] OFF
INSERT [dbo].[FAMILIA_PATENTE] ([FP_idFamilia], [FP_idPatente]) VALUES (2, N'ABM_CONSORCIOS_R')
INSERT [dbo].[FAMILIA_PATENTE] ([FP_idFamilia], [FP_idPatente]) VALUES (2, N'ABM_CONSORCIOS_W')
INSERT [dbo].[FAMILIA_PATENTE] ([FP_idFamilia], [FP_idPatente]) VALUES (2, N'ABM_USUARIOS_CONSORCIO_R')
INSERT [dbo].[FAMILIA_PATENTE] ([FP_idFamilia], [FP_idPatente]) VALUES (2, N'ABM_USUARIOS_CONSORCIO_W')
INSERT [dbo].[FAMILIA_PATENTE] ([FP_idFamilia], [FP_idPatente]) VALUES (3, N'ABM_EXPENSAS_R')
INSERT [dbo].[FAMILIA_PATENTE] ([FP_idFamilia], [FP_idPatente]) VALUES (3, N'ABM_EXPENSAS_W')
INSERT [dbo].[FAMILIA_PATENTE] ([FP_idFamilia], [FP_idPatente]) VALUES (3, N'ABM_MOVIMIENTOS_R')
INSERT [dbo].[FAMILIA_PATENTE] ([FP_idFamilia], [FP_idPatente]) VALUES (3, N'ABM_MOVIMIENTOS_W')
INSERT [dbo].[IDIOMA] ([ID_idIdioma], [ID_idioma]) VALUES (N'ENG', N'Ingles')
INSERT [dbo].[IDIOMA] ([ID_idIdioma], [ID_idioma]) VALUES (N'ESP', N'Espanol')
SET IDENTITY_INSERT [dbo].[INGRESO] ON 

INSERT [dbo].[INGRESO] ([IN_idIngreso], [IN_idCategoria], [IN_descripcion], [IN_idUnidadFuncional], [IN_periodo], [IN_monto], [IN_fecha], [IN_idUsuario], [IN_idConsorcio]) VALUES (4, 4, N'Pago Expensa', 1, 92014, CAST(982398.90 AS Decimal(18, 2)), CAST(N'2014-10-03' AS Date), 2, 2)
INSERT [dbo].[INGRESO] ([IN_idIngreso], [IN_idCategoria], [IN_descripcion], [IN_idUnidadFuncional], [IN_periodo], [IN_monto], [IN_fecha], [IN_idUsuario], [IN_idConsorcio]) VALUES (5, 4, N'Pago Expensa', 1, 102014, CAST(982398.90 AS Decimal(18, 2)), CAST(N'2014-11-03' AS Date), 2, 2)
SET IDENTITY_INSERT [dbo].[INGRESO] OFF
INSERT [dbo].[INQUILINO_UNIDADFUNCIONAL] ([IUF_idUnidadFuncional], [IUF_idInquilino]) VALUES (1, 3)
INSERT [dbo].[INQUILINO_UNIDADFUNCIONAL] ([IUF_idUnidadFuncional], [IUF_idInquilino]) VALUES (5, 6)
INSERT [dbo].[INQUILINO_UNIDADFUNCIONAL] ([IUF_idUnidadFuncional], [IUF_idInquilino]) VALUES (6, 9)
INSERT [dbo].[PATENTE] ([PA_idPatente], [PA_descripcion], [PA_pagina]) VALUES (N'ABM_CONSORCIOS_R', N'Permisos de lectura sobre consorcios', N'Consorcios')
INSERT [dbo].[PATENTE] ([PA_idPatente], [PA_descripcion], [PA_pagina]) VALUES (N'ABM_CONSORCIOS_W', N'Permisos de modificacion sobre consorcios', N'Consorcios')
INSERT [dbo].[PATENTE] ([PA_idPatente], [PA_descripcion], [PA_pagina]) VALUES (N'ABM_EXPENSAS_R', N'Permisos de lectura sobre liquidaciones de expensas', N'Expensas')
INSERT [dbo].[PATENTE] ([PA_idPatente], [PA_descripcion], [PA_pagina]) VALUES (N'ABM_EXPENSAS_W', N'Permisos de modificacion sobre liquidaciones de expensas', N'Expensas')
INSERT [dbo].[PATENTE] ([PA_idPatente], [PA_descripcion], [PA_pagina]) VALUES (N'ABM_MOVIMIENTOS_R', N'Permisos de lectura sobre movimientos del consorcio', N'Movimientos')
INSERT [dbo].[PATENTE] ([PA_idPatente], [PA_descripcion], [PA_pagina]) VALUES (N'ABM_MOVIMIENTOS_W', N'Permisos de modificacion sobre movimientos del consorcio', N'Movimientos')
INSERT [dbo].[PATENTE] ([PA_idPatente], [PA_descripcion], [PA_pagina]) VALUES (N'ABM_USUARIOS_CONSORCIO_R', N'Permiso de lectura sobre usuarios del consorcio', N'Usuarios del consorcio')
INSERT [dbo].[PATENTE] ([PA_idPatente], [PA_descripcion], [PA_pagina]) VALUES (N'ABM_USUARIOS_CONSORCIO_W', N'Permiso de  modificacion de Usuarios del consorcio', N'Usuarios del consorcio')
INSERT [dbo].[PERIODO] ([PE_idPeriodo], [PE_fechaInicio], [PE_fechaFin]) VALUES (82014, CAST(N'2014-08-01' AS Date), CAST(N'2014-08-31' AS Date))
INSERT [dbo].[PERIODO] ([PE_idPeriodo], [PE_fechaInicio], [PE_fechaFin]) VALUES (92014, CAST(N'2014-09-01' AS Date), CAST(N'2014-09-30' AS Date))
INSERT [dbo].[PERIODO] ([PE_idPeriodo], [PE_fechaInicio], [PE_fechaFin]) VALUES (102014, CAST(N'2014-10-01' AS Date), CAST(N'2014-10-31' AS Date))
INSERT [dbo].[PERIODO] ([PE_idPeriodo], [PE_fechaInicio], [PE_fechaFin]) VALUES (112014, CAST(N'2014-11-01' AS Date), CAST(N'2014-11-30' AS Date))
INSERT [dbo].[PERIODO] ([PE_idPeriodo], [PE_fechaInicio], [PE_fechaFin]) VALUES (122014, CAST(N'2014-12-01' AS Date), CAST(N'2014-12-31' AS Date))
INSERT [dbo].[PROPIETARIO_UNIDADFUNCIONAL] ([PUF_idPropietario], [PUF_idUnidadFuncional]) VALUES (1, 1)
INSERT [dbo].[PROPIETARIO_UNIDADFUNCIONAL] ([PUF_idPropietario], [PUF_idUnidadFuncional]) VALUES (8, 5)
INSERT [dbo].[PROPIETARIO_UNIDADFUNCIONAL] ([PUF_idPropietario], [PUF_idUnidadFuncional]) VALUES (10, 6)
INSERT [dbo].[TIPO_BITACORA] ([TB_idActividadTipo], [TB_descripcionActividadTipo]) VALUES (1, N'Intento de login')
INSERT [dbo].[TIPO_BITACORA] ([TB_idActividadTipo], [TB_descripcionActividadTipo]) VALUES (2, N'Login exitoso')
INSERT [dbo].[TIPO_BITACORA] ([TB_idActividadTipo], [TB_descripcionActividadTipo]) VALUES (3, N'Login fallido')
INSERT [dbo].[TIPO_BITACORA] ([TB_idActividadTipo], [TB_descripcionActividadTipo]) VALUES (4, N'Login Fallido: Clave incorrecta ')
INSERT [dbo].[TIPO_BITACORA] ([TB_idActividadTipo], [TB_descripcionActividadTipo]) VALUES (5, N'Login Fallido: Usuario inexistente ')
INSERT [dbo].[TIPO_BITACORA] ([TB_idActividadTipo], [TB_descripcionActividadTipo]) VALUES (6, N'Login Fallido: Usuario bloqueado')
INSERT [dbo].[TIPO_BITACORA] ([TB_idActividadTipo], [TB_descripcionActividadTipo]) VALUES (7, N'Logout')
INSERT [dbo].[TIPO_BITACORA] ([TB_idActividadTipo], [TB_descripcionActividadTipo]) VALUES (8, N'Borrado de bitacora')
INSERT [dbo].[TIPO_BITACORA] ([TB_idActividadTipo], [TB_descripcionActividadTipo]) VALUES (9, N'Cuenta bloqueada')
INSERT [dbo].[TIPO_BITACORA] ([TB_idActividadTipo], [TB_descripcionActividadTipo]) VALUES (10, N'Verificacion DVV fallida')
INSERT [dbo].[TIPO_BITACORA] ([TB_idActividadTipo], [TB_descripcionActividadTipo]) VALUES (11, N'Verificacion DVH fallida')
INSERT [dbo].[TIPO_BITACORA] ([TB_idActividadTipo], [TB_descripcionActividadTipo]) VALUES (12, N'Chequeo de Integridad OK')
INSERT [dbo].[TIPO_BITACORA] ([TB_idActividadTipo], [TB_descripcionActividadTipo]) VALUES (13, N'Chequeo de Integridad NO OK')
INSERT [dbo].[TIPO_BITACORA] ([TB_idActividadTipo], [TB_descripcionActividadTipo]) VALUES (14, N'Ejecucion de Restore')
INSERT [dbo].[TIPO_BITACORA] ([TB_idActividadTipo], [TB_descripcionActividadTipo]) VALUES (15, N'Ejecucion de Backup')
INSERT [dbo].[TIPO_BITACORA] ([TB_idActividadTipo], [TB_descripcionActividadTipo]) VALUES (16, N'')
INSERT [dbo].[TIPO_BITACORA] ([TB_idActividadTipo], [TB_descripcionActividadTipo]) VALUES (17, N'Ejecucion de Backup')
INSERT [dbo].[TIPO_BITACORA] ([TB_idActividadTipo], [TB_descripcionActividadTipo]) VALUES (18, N'')
INSERT [dbo].[TIPO_BITACORA] ([TB_idActividadTipo], [TB_descripcionActividadTipo]) VALUES (21, N'')
INSERT [dbo].[TIPO_MOVIMIENTO] ([TMO_idTipo], [TMO_tipoMovimiento], [TMO_descripcion]) VALUES (1, N'Ingreso', N'Representa los montos que ingresan al consorcios')
INSERT [dbo].[TIPO_MOVIMIENTO] ([TMO_idTipo], [TMO_tipoMovimiento], [TMO_descripcion]) VALUES (2, N'Egreso', N'Representa los gastos que efectua el consorcio')
SET IDENTITY_INSERT [dbo].[UNIDAD_FUNCIONAL] ON 

INSERT [dbo].[UNIDAD_FUNCIONAL] ([UF_idUnidadFuncional], [UF_idConsorcio], [UF_nombre], [UF_descripcion], [UF_coeficienteProrrateo], [UF_metrosCuadrados], [UF_eliminado]) VALUES (1, 1, N'1A', N'Edificio Primero "A"', CAST(1.5000 AS Decimal(5, 4)), 40, 0)
INSERT [dbo].[UNIDAD_FUNCIONAL] ([UF_idUnidadFuncional], [UF_idConsorcio], [UF_nombre], [UF_descripcion], [UF_coeficienteProrrateo], [UF_metrosCuadrados], [UF_eliminado]) VALUES (5, 1, N'1B', N'Depto Primero "B"', CAST(1.5000 AS Decimal(5, 4)), 40, 0)
INSERT [dbo].[UNIDAD_FUNCIONAL] ([UF_idUnidadFuncional], [UF_idConsorcio], [UF_nombre], [UF_descripcion], [UF_coeficienteProrrateo], [UF_metrosCuadrados], [UF_eliminado]) VALUES (6, 1, N'2', N'Piso 2 - entero', CAST(3.0000 AS Decimal(5, 4)), 80, 0)
INSERT [dbo].[UNIDAD_FUNCIONAL] ([UF_idUnidadFuncional], [UF_idConsorcio], [UF_nombre], [UF_descripcion], [UF_coeficienteProrrateo], [UF_metrosCuadrados], [UF_eliminado]) VALUES (7, 1, N'1C', N'Primero C', CAST(1.5000 AS Decimal(5, 4)), 40, 0)
INSERT [dbo].[UNIDAD_FUNCIONAL] ([UF_idUnidadFuncional], [UF_idConsorcio], [UF_nombre], [UF_descripcion], [UF_coeficienteProrrateo], [UF_metrosCuadrados], [UF_eliminado]) VALUES (8, 1, N'1D', N'Primero "D"', CAST(1.5000 AS Decimal(5, 4)), 200, 0)
INSERT [dbo].[UNIDAD_FUNCIONAL] ([UF_idUnidadFuncional], [UF_idConsorcio], [UF_nombre], [UF_descripcion], [UF_coeficienteProrrateo], [UF_metrosCuadrados], [UF_eliminado]) VALUES (9, 1, N'3A', N'Tercero "A"', CAST(1.5000 AS Decimal(5, 4)), 40, 0)
INSERT [dbo].[UNIDAD_FUNCIONAL] ([UF_idUnidadFuncional], [UF_idConsorcio], [UF_nombre], [UF_descripcion], [UF_coeficienteProrrateo], [UF_metrosCuadrados], [UF_eliminado]) VALUES (10, 1, N'4B', N'Departamento 4 "B"', CAST(1.5000 AS Decimal(5, 4)), 51, 0)
INSERT [dbo].[UNIDAD_FUNCIONAL] ([UF_idUnidadFuncional], [UF_idConsorcio], [UF_nombre], [UF_descripcion], [UF_coeficienteProrrateo], [UF_metrosCuadrados], [UF_eliminado]) VALUES (11, 4, N'1A', N'Primero A', CAST(1.9800 AS Decimal(5, 4)), 443, 1)
INSERT [dbo].[UNIDAD_FUNCIONAL] ([UF_idUnidadFuncional], [UF_idConsorcio], [UF_nombre], [UF_descripcion], [UF_coeficienteProrrateo], [UF_metrosCuadrados], [UF_eliminado]) VALUES (12, 1, N'4D', N'Cuarto D', CAST(1.2000 AS Decimal(5, 4)), 56, 1)
SET IDENTITY_INSERT [dbo].[UNIDAD_FUNCIONAL] OFF
SET IDENTITY_INSERT [dbo].[USUARIO] ON 

INSERT [dbo].[USUARIO] ([US_idUsuario], [US_apellido], [US_nombre], [US_usuario], [US_clave], [US_eliminado], [US_bloqueado], [US_idCliente], [US_email], [US_idIdioma], [US_hash]) VALUES (1, N'taboadela', N'pedro', N'ptaboadela', N'6khXbzC+FmmXFpnAmtBclDEyMzQ1Ng==', 0, 0, 1, N'ptaboadela@mail.com', N'ENG', N'gpQou+40pLWCZmjQRoSXdHRhYm9hZGVsYUZhbHNlNmtoWGJ6QytGbW1YRnBuQW10QmNsREV5TXpRMU5nPT1GYWxzZXB0YWJvYWRlbGFAbWFpbC5jb21wZWRyb3B0YWJvYWRlbGFFTkcx')
INSERT [dbo].[USUARIO] ([US_idUsuario], [US_apellido], [US_nombre], [US_usuario], [US_clave], [US_eliminado], [US_bloqueado], [US_idCliente], [US_email], [US_idIdioma], [US_hash]) VALUES (2, N'taboadela', N'serafin', N'staboadela', N'6khXbzC+FmmXFpnAmtBclDEyMzQ1Ng==', 0, 0, 1, N'staboadela@mail.com', N'ENG', N'EDXLns4gMzbkJjAxxba9LnRhYm9hZGVsYUZhbHNlNmtoWGJ6QytGbW1YRnBuQW10QmNsREV5TXpRMU5nPT1GYWxzZXN0YWJvYWRlbGFAbWFpbC5jb21zZXJhZmluc3RhYm9hZGVsYUVORzE=')
INSERT [dbo].[USUARIO] ([US_idUsuario], [US_apellido], [US_nombre], [US_usuario], [US_clave], [US_eliminado], [US_bloqueado], [US_idCliente], [US_email], [US_idIdioma], [US_hash]) VALUES (3, N'taboadela', N'german', N'gtaboadela', N'6khXbzC+FmmXFpnAmtBclDEyMzQ1Ng==', 0, 0, 1, N'gtaboadela@mail.com', N'ENG', N'nchpJxY8HN8uI7M/Reb7uHRhYm9hZGVsYUZhbHNlNmtoWGJ6QytGbW1YRnBuQW10QmNsREV5TXpRMU5nPT1GYWxzZWd0YWJvYWRlbGFAbWFpbC5jb21nZXJtYW5ndGFib2FkZWxhRU5HMQ==')
INSERT [dbo].[USUARIO] ([US_idUsuario], [US_apellido], [US_nombre], [US_usuario], [US_clave], [US_eliminado], [US_bloqueado], [US_idCliente], [US_email], [US_idIdioma], [US_hash]) VALUES (4, N'balcedo', N'pamela', N'pbalcedo', N'6khXbzC+FmmXFpnAmtBclDEyMzQ1Ng==', 0, 0, 1, N'pbalcedo@mail.com', N'ENG', N'o2CKVMEXYkGwo/khfgo0p2JhbGNlZG9GYWxzZTZraFhiekMrRm1tWEZwbkFtdEJjbERFeU16UTFOZz09RmFsc2VwYmFsY2Vkb0BtYWlsLmNvbXBhbWVsYXBiYWxjZWRvRU5HMQ==')
SET IDENTITY_INSERT [dbo].[USUARIO] OFF
SET IDENTITY_INSERT [dbo].[USUARIO_CLIENTE] ON 

INSERT [dbo].[USUARIO_CLIENTE] ([UC_idUsuario], [UC_apellido], [UC_nombre], [UC_usuario], [UC_clave], [UC_eliminado], [UC_bloqueado], [UC_idCliente], [UC_email], [UC_idIdioma], [UC_fechaAlta]) VALUES (2, N'Taboadela', N'German', N'gtaboadela', N'etropos', 0, 0, 1, N'gtaboadela@mail.com', 1, CAST(N'2014-10-16' AS Date))
INSERT [dbo].[USUARIO_CLIENTE] ([UC_idUsuario], [UC_apellido], [UC_nombre], [UC_usuario], [UC_clave], [UC_eliminado], [UC_bloqueado], [UC_idCliente], [UC_email], [UC_idIdioma], [UC_fechaAlta]) VALUES (8, N'Euba', N'Gato', N'ekuba', N'etropos', 0, 0, 12, N'ekuba@mail.com', 1, CAST(N'2014-11-02' AS Date))
INSERT [dbo].[USUARIO_CLIENTE] ([UC_idUsuario], [UC_apellido], [UC_nombre], [UC_usuario], [UC_clave], [UC_eliminado], [UC_bloqueado], [UC_idCliente], [UC_email], [UC_idIdioma], [UC_fechaAlta]) VALUES (9, N'Alvarez', N'Julian', N'jalvarez', N'etropos', 0, 0, 13, N'jalvarez@mail.com', 1, CAST(N'2014-11-03' AS Date))
INSERT [dbo].[USUARIO_CLIENTE] ([UC_idUsuario], [UC_apellido], [UC_nombre], [UC_usuario], [UC_clave], [UC_eliminado], [UC_bloqueado], [UC_idCliente], [UC_email], [UC_idIdioma], [UC_fechaAlta]) VALUES (10, N'Balcedo', N'Catalina', N'cbalcedo', N'etropos', 0, 0, 14, N'cbalcedo@mail.com', 1, CAST(N'2014-11-03' AS Date))
INSERT [dbo].[USUARIO_CLIENTE] ([UC_idUsuario], [UC_apellido], [UC_nombre], [UC_usuario], [UC_clave], [UC_eliminado], [UC_bloqueado], [UC_idCliente], [UC_email], [UC_idIdioma], [UC_fechaAlta]) VALUES (11, N'Pinto', N'Damian', N'dpinto', N'etropos', 0, 0, 15, N'dpinto@mail.com', 2, CAST(N'2014-11-03' AS Date))
INSERT [dbo].[USUARIO_CLIENTE] ([UC_idUsuario], [UC_apellido], [UC_nombre], [UC_usuario], [UC_clave], [UC_eliminado], [UC_bloqueado], [UC_idCliente], [UC_email], [UC_idIdioma], [UC_fechaAlta]) VALUES (13, N'Gomez', N'Demian', N'dgomez', N'etropos', 0, 0, 17, N'dgomez@mail.com', 1, CAST(N'2014-11-03' AS Date))
INSERT [dbo].[USUARIO_CLIENTE] ([UC_idUsuario], [UC_apellido], [UC_nombre], [UC_usuario], [UC_clave], [UC_eliminado], [UC_bloqueado], [UC_idCliente], [UC_email], [UC_idIdioma], [UC_fechaAlta]) VALUES (14, N'Taboadela', N'Fernando', N'ftaboadela', N'etropos', 0, 0, 18, N'ftaboadela@mail.com', 1, CAST(N'2014-11-03' AS Date))
INSERT [dbo].[USUARIO_CLIENTE] ([UC_idUsuario], [UC_apellido], [UC_nombre], [UC_usuario], [UC_clave], [UC_eliminado], [UC_bloqueado], [UC_idCliente], [UC_email], [UC_idIdioma], [UC_fechaAlta]) VALUES (15, N'Martino', N'Angela', N'amartino', N'etropos', 0, 0, 19, N'amartino@mail.com', 1, CAST(N'2014-11-03' AS Date))
INSERT [dbo].[USUARIO_CLIENTE] ([UC_idUsuario], [UC_apellido], [UC_nombre], [UC_usuario], [UC_clave], [UC_eliminado], [UC_bloqueado], [UC_idCliente], [UC_email], [UC_idIdioma], [UC_fechaAlta]) VALUES (16, N'Curria', N'Daniel', N'dcurria', N'etropos', 0, 0, 20, N'dcurria@mail.com', 1, CAST(N'2014-11-03' AS Date))
INSERT [dbo].[USUARIO_CLIENTE] ([UC_idUsuario], [UC_apellido], [UC_nombre], [UC_usuario], [UC_clave], [UC_eliminado], [UC_bloqueado], [UC_idCliente], [UC_email], [UC_idIdioma], [UC_fechaAlta]) VALUES (17, N'Costantino', N'Benjamin', N'bcostantino', N'etropos', 0, 0, 21, N'bcostantino@mail.com', 1, CAST(N'2014-11-03' AS Date))
INSERT [dbo].[USUARIO_CLIENTE] ([UC_idUsuario], [UC_apellido], [UC_nombre], [UC_usuario], [UC_clave], [UC_eliminado], [UC_bloqueado], [UC_idCliente], [UC_email], [UC_idIdioma], [UC_fechaAlta]) VALUES (18, N'Costantino', N'Uriana', N'ucostantino', N'etropos', 0, 0, 22, N'ucostantino@mail.com', 2, CAST(N'2014-11-03' AS Date))
INSERT [dbo].[USUARIO_CLIENTE] ([UC_idUsuario], [UC_apellido], [UC_nombre], [UC_usuario], [UC_clave], [UC_eliminado], [UC_bloqueado], [UC_idCliente], [UC_email], [UC_idIdioma], [UC_fechaAlta]) VALUES (19, N'Altamirano', N'Sol', N'saltamirano', N'etropos', 0, 0, 23, N'saltamirano@mail.com', 2, CAST(N'2014-11-03' AS Date))
INSERT [dbo].[USUARIO_CLIENTE] ([UC_idUsuario], [UC_apellido], [UC_nombre], [UC_usuario], [UC_clave], [UC_eliminado], [UC_bloqueado], [UC_idCliente], [UC_email], [UC_idIdioma], [UC_fechaAlta]) VALUES (20, N'Costantino', N'Luciano', N'lcostantino', N'etropos', 0, 0, 24, N'lcostantino@mail.com', 1, CAST(N'2014-11-03' AS Date))
INSERT [dbo].[USUARIO_CLIENTE] ([UC_idUsuario], [UC_apellido], [UC_nombre], [UC_usuario], [UC_clave], [UC_eliminado], [UC_bloqueado], [UC_idCliente], [UC_email], [UC_idIdioma], [UC_fechaAlta]) VALUES (21, N'Faya', N'Sandor', N'sfaya', N'etropos', 0, 0, 25, N'sfaya@mail.com', 1, CAST(N'2014-11-03' AS Date))
INSERT [dbo].[USUARIO_CLIENTE] ([UC_idUsuario], [UC_apellido], [UC_nombre], [UC_usuario], [UC_clave], [UC_eliminado], [UC_bloqueado], [UC_idCliente], [UC_email], [UC_idIdioma], [UC_fechaAlta]) VALUES (22, N'Taboadela', N'Mariana', N'mtaboadela', N'etropos', 0, 0, 26, N'mtaboadela@mail.com', 1, CAST(N'2014-11-03' AS Date))
INSERT [dbo].[USUARIO_CLIENTE] ([UC_idUsuario], [UC_apellido], [UC_nombre], [UC_usuario], [UC_clave], [UC_eliminado], [UC_bloqueado], [UC_idCliente], [UC_email], [UC_idIdioma], [UC_fechaAlta]) VALUES (23, N'Balcedo', N'Pqmelita', N'pame', N'pianos', 0, 0, 27, N'dpinto@mail.com', 2, CAST(N'2014-11-03' AS Date))
INSERT [dbo].[USUARIO_CLIENTE] ([UC_idUsuario], [UC_apellido], [UC_nombre], [UC_usuario], [UC_clave], [UC_eliminado], [UC_bloqueado], [UC_idCliente], [UC_email], [UC_idIdioma], [UC_fechaAlta]) VALUES (24, N'Ramiro', N'Cristian', N'cramiro', N'etropos', 0, 0, 28, N'cramiro@mail.com', 1, CAST(N'2014-11-03' AS Date))
INSERT [dbo].[USUARIO_CLIENTE] ([UC_idUsuario], [UC_apellido], [UC_nombre], [UC_usuario], [UC_clave], [UC_eliminado], [UC_bloqueado], [UC_idCliente], [UC_email], [UC_idIdioma], [UC_fechaAlta]) VALUES (25, N'Zenko', N'Julia', N'jzenko', N'etropos', 0, 0, 29, N'jzenko@mail.com', 2, CAST(N'2014-11-03' AS Date))
INSERT [dbo].[USUARIO_CLIENTE] ([UC_idUsuario], [UC_apellido], [UC_nombre], [UC_usuario], [UC_clave], [UC_eliminado], [UC_bloqueado], [UC_idCliente], [UC_email], [UC_idIdioma], [UC_fechaAlta]) VALUES (26, N'Moreira', N'Juan', N'jmoreira', N'etropos', 0, 0, 30, N'jmoreira@ail.cmo', 1, CAST(N'2014-11-03' AS Date))
INSERT [dbo].[USUARIO_CLIENTE] ([UC_idUsuario], [UC_apellido], [UC_nombre], [UC_usuario], [UC_clave], [UC_eliminado], [UC_bloqueado], [UC_idCliente], [UC_email], [UC_idIdioma], [UC_fechaAlta]) VALUES (27, N'Moreira', N'Juana', N'jmoreirrrrr', N'etropos', 0, 0, 31, N'jmoreira@ail.cmo', 1, CAST(N'2014-11-03' AS Date))
INSERT [dbo].[USUARIO_CLIENTE] ([UC_idUsuario], [UC_apellido], [UC_nombre], [UC_usuario], [UC_clave], [UC_eliminado], [UC_bloqueado], [UC_idCliente], [UC_email], [UC_idIdioma], [UC_fechaAlta]) VALUES (28, N'Balcedo', N'Juana', N'jbalcedo', N'etropos', 0, 0, 32, N'jbalcedo@mail.com', 2, CAST(N'2014-11-03' AS Date))
INSERT [dbo].[USUARIO_CLIENTE] ([UC_idUsuario], [UC_apellido], [UC_nombre], [UC_usuario], [UC_clave], [UC_eliminado], [UC_bloqueado], [UC_idCliente], [UC_email], [UC_idIdioma], [UC_fechaAlta]) VALUES (29, N'Szifron', N'Damian', N'szifron', N'etropos', 0, 0, 33, N'szifron', 1, CAST(N'2014-11-03' AS Date))
INSERT [dbo].[USUARIO_CLIENTE] ([UC_idUsuario], [UC_apellido], [UC_nombre], [UC_usuario], [UC_clave], [UC_eliminado], [UC_bloqueado], [UC_idCliente], [UC_email], [UC_idIdioma], [UC_fechaAlta]) VALUES (30, N'Olor', N'Cabeza', N'olor', N'etropos', 0, 0, 34, N'olor', 1, CAST(N'2014-11-03' AS Date))
INSERT [dbo].[USUARIO_CLIENTE] ([UC_idUsuario], [UC_apellido], [UC_nombre], [UC_usuario], [UC_clave], [UC_eliminado], [UC_bloqueado], [UC_idCliente], [UC_email], [UC_idIdioma], [UC_fechaAlta]) VALUES (31, N'qwereqw', N'eew', N'qwe', N'qwer', 0, 0, 35, N'qwerq', 1, CAST(N'2014-11-03' AS Date))
INSERT [dbo].[USUARIO_CLIENTE] ([UC_idUsuario], [UC_apellido], [UC_nombre], [UC_usuario], [UC_clave], [UC_eliminado], [UC_bloqueado], [UC_idCliente], [UC_email], [UC_idIdioma], [UC_fechaAlta]) VALUES (32, N'qwe', N'si', N'gtaboadelaq', N'qwer', 0, 0, 36, N'qwer', 1, CAST(N'2014-11-03' AS Date))
INSERT [dbo].[USUARIO_CLIENTE] ([UC_idUsuario], [UC_apellido], [UC_nombre], [UC_usuario], [UC_clave], [UC_eliminado], [UC_bloqueado], [UC_idCliente], [UC_email], [UC_idIdioma], [UC_fechaAlta]) VALUES (33, N'wert', N'er', N'wert', N'ert', 0, 0, 37, N'wert', 1, CAST(N'2014-11-03' AS Date))
SET IDENTITY_INSERT [dbo].[USUARIO_CLIENTE] OFF
INSERT [dbo].[USUARIO_FAMILIA] ([UFA_idUsuario], [UFA_idFamilia]) VALUES (33, 2)
INSERT [dbo].[VALOR_CONTROL] ([VC_idControl], [VC_idIdioma], [VC_texto]) VALUES (N'CLHTITLE01', N'ENG', N'Some Title')
INSERT [dbo].[VALOR_CONTROL] ([VC_idControl], [VC_idIdioma], [VC_texto]) VALUES (N'CLHTITLE01', N'ESP', N'Un Titulo')
SET ANSI_PADDING ON

GO
/****** Object:  Index [CK_USUARIO]    Script Date: 9/17/2017 7:24:52 AM ******/
ALTER TABLE [dbo].[USUARIO] ADD  CONSTRAINT [CK_USUARIO] UNIQUE NONCLUSTERED 
(
	[US_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BITACORA]  WITH CHECK ADD  CONSTRAINT [FK_BITACORA_TIPO_BITACORA] FOREIGN KEY([BI_idActividadTipo])
REFERENCES [dbo].[TIPO_BITACORA] ([TB_idActividadTipo])
GO
ALTER TABLE [dbo].[BITACORA] CHECK CONSTRAINT [FK_BITACORA_TIPO_BITACORA]
GO
ALTER TABLE [dbo].[CONSORCIO]  WITH CHECK ADD  CONSTRAINT [FK_CONSORCIO_CLIENTE] FOREIGN KEY([CO_idCliente])
REFERENCES [dbo].[CLIENTE] ([CL_idCliente])
GO
ALTER TABLE [dbo].[CONSORCIO] CHECK CONSTRAINT [FK_CONSORCIO_CLIENTE]
GO
ALTER TABLE [dbo].[EGRESO]  WITH CHECK ADD  CONSTRAINT [FK_EGRESO_CATEGORIA_MOVIMIENTO] FOREIGN KEY([EG_idCategoria])
REFERENCES [dbo].[CATEGORIA_MOVIMIENTO] ([CAM_idCategoria])
GO
ALTER TABLE [dbo].[EGRESO] CHECK CONSTRAINT [FK_EGRESO_CATEGORIA_MOVIMIENTO]
GO
ALTER TABLE [dbo].[EGRESO]  WITH CHECK ADD  CONSTRAINT [FK_EGRESO_CONSORCIO] FOREIGN KEY([EG_idConsorcio])
REFERENCES [dbo].[CONSORCIO] ([CO_idConsorcio])
GO
ALTER TABLE [dbo].[EGRESO] CHECK CONSTRAINT [FK_EGRESO_CONSORCIO]
GO
ALTER TABLE [dbo].[EGRESO]  WITH CHECK ADD  CONSTRAINT [FK_EGRESO_UNIDAD_FUNCIONAL] FOREIGN KEY([EG_idUnidadFuncional])
REFERENCES [dbo].[UNIDAD_FUNCIONAL] ([UF_idUnidadFuncional])
GO
ALTER TABLE [dbo].[EGRESO] CHECK CONSTRAINT [FK_EGRESO_UNIDAD_FUNCIONAL]
GO
ALTER TABLE [dbo].[EGRESO]  WITH CHECK ADD  CONSTRAINT [FK_EGRESO_USUARIO_CLIENTE] FOREIGN KEY([EG_idUsuario])
REFERENCES [dbo].[USUARIO_CLIENTE] ([UC_idUsuario])
GO
ALTER TABLE [dbo].[EGRESO] CHECK CONSTRAINT [FK_EGRESO_USUARIO_CLIENTE]
GO
ALTER TABLE [dbo].[EXPENSA]  WITH CHECK ADD  CONSTRAINT [FK_EXPENSA_PERIODO] FOREIGN KEY([EX_idPeriodo])
REFERENCES [dbo].[PERIODO] ([PE_idPeriodo])
GO
ALTER TABLE [dbo].[EXPENSA] CHECK CONSTRAINT [FK_EXPENSA_PERIODO]
GO
ALTER TABLE [dbo].[EXPENSA]  WITH CHECK ADD  CONSTRAINT [FK_EXPENSA_UNIDAD_FUNCIONAL] FOREIGN KEY([EX_idUnidadFuncional])
REFERENCES [dbo].[UNIDAD_FUNCIONAL] ([UF_idUnidadFuncional])
GO
ALTER TABLE [dbo].[EXPENSA] CHECK CONSTRAINT [FK_EXPENSA_UNIDAD_FUNCIONAL]
GO
ALTER TABLE [dbo].[EXPENSA]  WITH CHECK ADD  CONSTRAINT [FK_EXPENSA_USUARIO_CLIENTE] FOREIGN KEY([EX_idUsuario])
REFERENCES [dbo].[USUARIO_CLIENTE] ([UC_idUsuario])
GO
ALTER TABLE [dbo].[EXPENSA] CHECK CONSTRAINT [FK_EXPENSA_USUARIO_CLIENTE]
GO
ALTER TABLE [dbo].[EXPENSA_EGRESO]  WITH CHECK ADD  CONSTRAINT [FK_EXPENSA_EGRESO_EGRESO] FOREIGN KEY([EXE_idEgreso])
REFERENCES [dbo].[EGRESO] ([EG_idEgreso])
GO
ALTER TABLE [dbo].[EXPENSA_EGRESO] CHECK CONSTRAINT [FK_EXPENSA_EGRESO_EGRESO]
GO
ALTER TABLE [dbo].[EXPENSA_EGRESO]  WITH CHECK ADD  CONSTRAINT [FK_EXPENSA_EGRESO_EXPENSA] FOREIGN KEY([EXE_idExpensa])
REFERENCES [dbo].[EXPENSA] ([EX_idExpensa])
GO
ALTER TABLE [dbo].[EXPENSA_EGRESO] CHECK CONSTRAINT [FK_EXPENSA_EGRESO_EXPENSA]
GO
ALTER TABLE [dbo].[FAMILIA_PATENTE]  WITH CHECK ADD  CONSTRAINT [FK_FAMILIA_PATENTE_FAMILIA] FOREIGN KEY([FP_idFamilia])
REFERENCES [dbo].[FAMILIA] ([FA_idFamila])
GO
ALTER TABLE [dbo].[FAMILIA_PATENTE] CHECK CONSTRAINT [FK_FAMILIA_PATENTE_FAMILIA]
GO
ALTER TABLE [dbo].[FAMILIA_PATENTE]  WITH CHECK ADD  CONSTRAINT [FK_FAMILIA_PATENTE_PATENTE] FOREIGN KEY([FP_idPatente])
REFERENCES [dbo].[PATENTE] ([PA_idPatente])
GO
ALTER TABLE [dbo].[FAMILIA_PATENTE] CHECK CONSTRAINT [FK_FAMILIA_PATENTE_PATENTE]
GO
ALTER TABLE [dbo].[INGRESO]  WITH CHECK ADD  CONSTRAINT [FK_INGRESO_CATEGORIA_MOVIMIENTO] FOREIGN KEY([IN_idCategoria])
REFERENCES [dbo].[CATEGORIA_MOVIMIENTO] ([CAM_idCategoria])
GO
ALTER TABLE [dbo].[INGRESO] CHECK CONSTRAINT [FK_INGRESO_CATEGORIA_MOVIMIENTO]
GO
ALTER TABLE [dbo].[INGRESO]  WITH CHECK ADD  CONSTRAINT [FK_INGRESO_CONSORCIO] FOREIGN KEY([IN_idConsorcio])
REFERENCES [dbo].[CONSORCIO] ([CO_idConsorcio])
GO
ALTER TABLE [dbo].[INGRESO] CHECK CONSTRAINT [FK_INGRESO_CONSORCIO]
GO
ALTER TABLE [dbo].[INGRESO]  WITH CHECK ADD  CONSTRAINT [FK_INGRESO_UNIDAD_FUNCIONAL] FOREIGN KEY([IN_idUnidadFuncional])
REFERENCES [dbo].[UNIDAD_FUNCIONAL] ([UF_idUnidadFuncional])
GO
ALTER TABLE [dbo].[INGRESO] CHECK CONSTRAINT [FK_INGRESO_UNIDAD_FUNCIONAL]
GO
ALTER TABLE [dbo].[INGRESO]  WITH CHECK ADD  CONSTRAINT [FK_INGRESO_USUARIO_CLIENTE] FOREIGN KEY([IN_idUsuario])
REFERENCES [dbo].[USUARIO_CLIENTE] ([UC_idUsuario])
GO
ALTER TABLE [dbo].[INGRESO] CHECK CONSTRAINT [FK_INGRESO_USUARIO_CLIENTE]
GO
ALTER TABLE [dbo].[PROPIETARIO_UNIDADFUNCIONAL]  WITH CHECK ADD  CONSTRAINT [FK_PROPIETARIO_UNIDADFUNCIONAL_UNIDAD_FUNCIONAL] FOREIGN KEY([PUF_idUnidadFuncional])
REFERENCES [dbo].[UNIDAD_FUNCIONAL] ([UF_idUnidadFuncional])
GO
ALTER TABLE [dbo].[PROPIETARIO_UNIDADFUNCIONAL] CHECK CONSTRAINT [FK_PROPIETARIO_UNIDADFUNCIONAL_UNIDAD_FUNCIONAL]
GO
ALTER TABLE [dbo].[PROPIETARIO_UNIDADFUNCIONAL]  WITH CHECK ADD  CONSTRAINT [FK_PROPIETARIO_UNIDADFUNCIONAL_UNIDAD_FUNCIONAL1] FOREIGN KEY([PUF_idUnidadFuncional])
REFERENCES [dbo].[UNIDAD_FUNCIONAL] ([UF_idUnidadFuncional])
GO
ALTER TABLE [dbo].[PROPIETARIO_UNIDADFUNCIONAL] CHECK CONSTRAINT [FK_PROPIETARIO_UNIDADFUNCIONAL_UNIDAD_FUNCIONAL1]
GO
ALTER TABLE [dbo].[UNIDAD_FUNCIONAL]  WITH CHECK ADD  CONSTRAINT [FK_UNIDAD_FUNCIONAL_CONSORCIO] FOREIGN KEY([UF_idConsorcio])
REFERENCES [dbo].[CONSORCIO] ([CO_idConsorcio])
GO
ALTER TABLE [dbo].[UNIDAD_FUNCIONAL] CHECK CONSTRAINT [FK_UNIDAD_FUNCIONAL_CONSORCIO]
GO
ALTER TABLE [dbo].[USUARIO]  WITH CHECK ADD  CONSTRAINT [FK_USUARIO_CLIENTE] FOREIGN KEY([US_idCliente])
REFERENCES [dbo].[CLIENTE] ([CL_idCliente])
GO
ALTER TABLE [dbo].[USUARIO] CHECK CONSTRAINT [FK_USUARIO_CLIENTE]
GO
ALTER TABLE [dbo].[USUARIO_CLIENTE]  WITH CHECK ADD  CONSTRAINT [FK_USUARIO_CLIENTE_CLIENTE] FOREIGN KEY([UC_idCliente])
REFERENCES [dbo].[CLIENTE] ([CL_idCliente])
GO
ALTER TABLE [dbo].[USUARIO_CLIENTE] CHECK CONSTRAINT [FK_USUARIO_CLIENTE_CLIENTE]
GO
ALTER TABLE [dbo].[USUARIO_FAMILIA]  WITH CHECK ADD  CONSTRAINT [FK_USUARIO_FAMILIA_FAMILIA] FOREIGN KEY([UFA_idFamilia])
REFERENCES [dbo].[FAMILIA] ([FA_idFamila])
GO
ALTER TABLE [dbo].[USUARIO_FAMILIA] CHECK CONSTRAINT [FK_USUARIO_FAMILIA_FAMILIA]
GO
ALTER TABLE [dbo].[USUARIO_FAMILIA]  WITH CHECK ADD  CONSTRAINT [FK_USUARIO_FAMILIA_USUARIO_CLIENTE] FOREIGN KEY([UFA_idUsuario])
REFERENCES [dbo].[USUARIO_CLIENTE] ([UC_idUsuario])
GO
ALTER TABLE [dbo].[USUARIO_FAMILIA] CHECK CONSTRAINT [FK_USUARIO_FAMILIA_USUARIO_CLIENTE]
GO
ALTER TABLE [dbo].[USUARIO_PATENTE]  WITH CHECK ADD  CONSTRAINT [FK_USUARIO_PATENTE_PATENTE] FOREIGN KEY([UP_idPatente])
REFERENCES [dbo].[PATENTE] ([PA_idPatente])
GO
ALTER TABLE [dbo].[USUARIO_PATENTE] CHECK CONSTRAINT [FK_USUARIO_PATENTE_PATENTE]
GO
ALTER TABLE [dbo].[USUARIO_PATENTE]  WITH CHECK ADD  CONSTRAINT [FK_USUARIO_PATENTE_USUARIO_CLIENTE] FOREIGN KEY([UP_idUsuario])
REFERENCES [dbo].[USUARIO_CLIENTE] ([UC_idUsuario])
GO
ALTER TABLE [dbo].[USUARIO_PATENTE] CHECK CONSTRAINT [FK_USUARIO_PATENTE_USUARIO_CLIENTE]
GO
ALTER TABLE [dbo].[VALOR_CONTROL]  WITH CHECK ADD  CONSTRAINT [FK_VALORCONTROL_CONTROL] FOREIGN KEY([VC_idControl])
REFERENCES [dbo].[CONTROL] ([CT_idControl])
GO
ALTER TABLE [dbo].[VALOR_CONTROL] CHECK CONSTRAINT [FK_VALORCONTROL_CONTROL]
GO
ALTER TABLE [dbo].[VALOR_CONTROL]  WITH CHECK ADD  CONSTRAINT [FK_VALORCONTROL_IDIOMA] FOREIGN KEY([VC_idIdioma])
REFERENCES [dbo].[IDIOMA] ([ID_idIdioma])
GO
ALTER TABLE [dbo].[VALOR_CONTROL] CHECK CONSTRAINT [FK_VALORCONTROL_IDIOMA]
GO
/****** Object:  StoredProcedure [dbo].[SP_actualizarDVV]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_actualizarDVV]

@DVVName varchar(50),
@DVV varchar(MAX)

AS 
BEGIN
SET NOCOUNT ON
DECLARE @cmd AS NVARCHAR(max)
SET @cmd = N'UPDATE DIGITOV SET DV_hash = ''' + @DVV + ''' WHERE DV_nombreTabla = ''' + @DVVName + ''''

PRINT @cmd
EXEC sp_executesql @cmd 

END




GO
/****** Object:  StoredProcedure [dbo].[SP_agregarBitacora]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_agregarBitacora]
@BI_idActividadTipo int,
@BI_usuario varchar(50),
@BI_descripcion varchar(max)


AS
SET NOCOUNT ON
INSERT INTO BITACORA(BI_idActividadTipo,BI_usuario,BI_descripcion,BI_fecha)
VALUES
(@BI_idActividadTipo,@BI_usuario,@BI_descripcion,GETDATE())




GO
/****** Object:  StoredProcedure [dbo].[SP_agregarUsuario]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_agregarUsuario]

@apellido varchar(50),
@nombre varchar(50),
@usuario varchar(50),
@clave varchar(64),
@email varchar(64),
@idioma varchar(3),
@idCliente int,
@hash varchar(255)


AS 
BEGIN
SET NOCOUNT ON
INSERT INTO USUARIO (US_apellido,US_nombre,US_usuario,US_clave,US_idCliente,US_email,US_idIdioma,US_eliminado, US_bloqueado, US_hash)
VALUES (@apellido,@nombre,@usuario,@clave,@idCliente,@email,@idioma,0,0,@hash)


END



GO
/****** Object:  StoredProcedure [dbo].[SP_altaCliente]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_altaCliente]

@nombre varchar(MAX),
@direccion varchar(MAX),
@telefono varchar(MAX),
@cuit varchar(50)

AS 
BEGIN
SET NOCOUNT ON
INSERT INTO CLIENTE (CL_nombre,CL_fechaAlta,CL_direccion, CL_telefono, CL_cuit,CL_eliminado)
VALUES (@nombre,GETDATE(),@direccion,@telefono,@cuit,0)


END


GO
/****** Object:  StoredProcedure [dbo].[SP_altaConsorcio]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_altaConsorcio]
@nombre varchar(MAX),
@direccion varchar(MAX),
@localidad varchar(MAX),
@codPostal varchar(50),
@telefono varchar(50),
@diaVencimientoExpensa int,
@interes decimal (4,2), 
@idCliente int

AS 
BEGIN
SET NOCOUNT ON

INSERT INTO CONSORCIO (CO_nombre,CO_direccion,CO_localidad, CO_codPostal, CO_telefono, CO_diaVencimientoExpensa, CO_interes, CO_eliminado, CO_idCliente)
VALUES (@nombre,@direccion,@localidad,@codPostal,@telefono,@diaVencimientoExpensa,@interes, 0, @idCliente)


END


GO
/****** Object:  StoredProcedure [dbo].[SP_altaEtiqueta]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_altaEtiqueta]

@idEtiqueta varchar(10),
@idIdioma int,
@texto Nvarchar(MAX),
@descripcion Nvarchar(MAX)


AS 
BEGIN
SET NOCOUNT ON
INSERT INTO ETIQUETA (ET_idEtiqueta,ET_idIdioma,ET_texto,ET_descripcion)
VALUES (@idEtiqueta,@idIdioma,@texto,@descripcion)


END


GO
/****** Object:  StoredProcedure [dbo].[SP_altaUnidadFuncional]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_altaUnidadFuncional]
@idConsorcio int,
@nombre varchar(50),
@descripcion varchar(MAX),
@coeficienteProrrateo decimal (4,2),
@metrosCuadrados smallint


AS 
BEGIN
SET NOCOUNT ON

INSERT INTO UNIDAD_FUNCIONAL (UF_idConsorcio, UF_nombre, UF_descripcion, UF_coeficienteProrrateo, UF_metrosCuadrados, UF_eliminado)
VALUES (@idConsorcio,@nombre,@descripcion,@coeficienteProrrateo,@metrosCuadrados,0)


END


GO
/****** Object:  StoredProcedure [dbo].[SP_altaUsuario]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_altaUsuario]

@apellido varchar(50),
@nombre varchar(50),
@usuario varchar(50),
@clave varchar(64),
@cuit int,
@email varchar(64),
@idioma int

AS 
BEGIN
SET NOCOUNT ON
INSERT INTO USUARIO_INTERNO (UI_apellido,UI_nombre,UI_fechaAlta,UI_usuario,UI_clave,UI_eliminado,UI_bloqueado,UI_cuit,UI_email,UI_idIdioma)
VALUES (@apellido,@nombre,GETDATE(),@usuario,@clave,0,0,@cuit,@email,@idioma)


END


GO
/****** Object:  StoredProcedure [dbo].[SP_altaUsuarioCliente]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_altaUsuarioCliente]

@apellido varchar(50),
@nombre varchar(50),
@usuario varchar(50),
@clave varchar(64),
@email varchar(64),
@idioma int, 
@idCliente int


AS 
BEGIN
SET NOCOUNT ON
INSERT INTO USUARIO_CLIENTE (UC_apellido,UC_nombre,UC_usuario,UC_clave,UC_eliminado,UC_bloqueado,UC_idCliente,UC_email,UC_idIdioma,UC_fechaAlta)
VALUES (@apellido,@nombre,@usuario,@clave,0,0,@idCliente,@email,@idioma,GETDATE())


END


GO
/****** Object:  StoredProcedure [dbo].[SP_asociarFamilia]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_asociarFamilia]

@idUsuario int,
@idFamilia int

AS 
BEGIN
SET NOCOUNT ON
INSERT INTO USUARIO_FAMILIA (UFA_idUsuario,UFA_idFamilia)
VALUES (@idUsuario, @idFamilia)


END


GO
/****** Object:  StoredProcedure [dbo].[SP_bajaCliente]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_bajaCliente]
@idCliente int


AS 
BEGIN
SET NOCOUNT ON

UPDATE CLIENTE SET CL_eliminado = 1 WHERE CL_idCliente =  @idCliente

END


GO
/****** Object:  StoredProcedure [dbo].[SP_bajaConsorcio]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_bajaConsorcio]
@idConsorcio int


AS 
BEGIN
SET NOCOUNT ON

UPDATE CONSORCIO SET CO_eliminado = 1
WHERE CO_idConsorcio  = @idconsorcio 


END


GO
/****** Object:  StoredProcedure [dbo].[SP_bajaEtiqueta]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_bajaEtiqueta]
@idEtiqueta varchar(10),
@idIdioma int

AS 
BEGIN
SET NOCOUNT ON

DELETE FROM ETIQUETA 
WHERE ET_idEtiqueta = @idEtiqueta AND ET_idIdioma = @idIdioma


END


GO
/****** Object:  StoredProcedure [dbo].[SP_bajaUnidadFuncional]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_bajaUnidadFuncional]
@idUnidadFuncional int


AS 
BEGIN
SET NOCOUNT ON

UPDATE UNIDAD_FUNCIONAL SET UF_eliminado = 1
WHERE UF_idUnidadFuncional  = @idUnidadFuncional  

END


GO
/****** Object:  StoredProcedure [dbo].[SP_bajaUsuario]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_bajaUsuario]
@usuario varchar(50),
@tabla varchar(50)

AS 
BEGIN
SET NOCOUNT ON

DECLARE @cmd AS NVARCHAR(max)
SET @cmd = N'UPDATE ' + @tabla +' SET UI_eliminado = 1' +
' WHERE UI_usuario = ''' + @usuario +  '''' 

EXEC sp_executesql @cmd 



END


GO
/****** Object:  StoredProcedure [dbo].[SP_bloqueoUsuario]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_bloqueoUsuario]
@usuario varchar(50),
@tabla varchar(50)

AS 
BEGIN
SET NOCOUNT ON

DECLARE @cmd AS NVARCHAR(max)
SET @cmd = N'UPDATE ' + @tabla +' SET UI_eliminado = 1' +
' WHERE UI_usuario = ''' + @usuario +  '''' 

EXEC sp_executesql @cmd 



END


GO
/****** Object:  StoredProcedure [dbo].[SP_consultaBitacoraDesdeHasta]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE PROCEDURE [dbo].[SP_consultaBitacoraDesdeHasta]
@fechaDesde varchar(10),
@fechaHasta varchar(10)

 AS 
BEGIN
SET NOCOUNT ON
DECLARE @cmd AS NVARCHAR(max)
SET @cmd = N'SELECT BI_fecha,BI_idActividadTipo ,TB_descripcionActividadTipo, BI_descripcion 
FROM BITACORA INNER JOIN TIPO_BITACORA ON BITACORA.BI_idActividadTipo = TIPO_BITACORA.TB_idActividadTipo 
WHERE BI_fecha BETWEEN ''' + @fechaDesde + ''' AND '''+ @fechaHasta + ''' ORDER BY BI_fecha DESC'
EXEC sp_executesql @cmd 

END


GO
/****** Object:  StoredProcedure [dbo].[SP_consultaBitacoraN.old]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE PROCEDURE [dbo].[SP_consultaBitacoraN.old]
@cantidad varchar(10)
 AS 
BEGIN
SET NOCOUNT ON
DECLARE @cmd AS NVARCHAR(max)
SET @cmd = N'SELECT TOP '+ @cantidad +' BI_fecha,BI_idActividadTipo ,TB_descripcionActividadTipo, BI_descripcion FROM BITACORA INNER JOIN TIPO_BITACORA ON BITACORA.BI_idActividadTipo = TIPO_BITACORA.TB_idActividadTipo ORDER BY BI_fecha DESC'
EXEC sp_executesql @cmd 

END


GO
/****** Object:  StoredProcedure [dbo].[SP_consultaClientePorNombre]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_consultaClientePorNombre]
@nombre varchar(MAX)

AS 
BEGIN
SET NOCOUNT ON
SELECT * FROM CLIENTE WHERE CL_nombre = @nombre
END


GO
/****** Object:  StoredProcedure [dbo].[SP_consultaClienteTodas]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_consultaClienteTodas]

AS 
BEGIN
SET NOCOUNT ON
DECLARE @cmd AS NVARCHAR(max)
SET @cmd = N'SELECT CL_idCliente,CL_nombre,CL_fechaAlta,CL_direccion,CL_telefono,CL_cuit,UC_usuario, CL_Eliminado FROM CLIENTE INNER JOIN USUARIO_CLIENTE ON UC_idCliente = CL_idCliente 
WHERE CL_eliminado = 0 ORDER BY CL_nombre ASC '
EXEC sp_executesql @cmd 

END


GO
/****** Object:  StoredProcedure [dbo].[SP_consultaConsorciosPorCliente]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_consultaConsorciosPorCliente]
@idCliente int
AS 
BEGIN
SET NOCOUNT ON
SELECT * FROM CONSORCIO WHERE CO_idCliente = @idCliente AND CO_eliminado = 0
END


GO
/****** Object:  StoredProcedure [dbo].[SP_consultaConsorciosPorId]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_consultaConsorciosPorId]
@idConsorcio int
AS 
BEGIN
SET NOCOUNT ON
SELECT * FROM CONSORCIO WHERE CO_idConsorcio = @idConsorcio AND CO_eliminado = 0
END


GO
/****** Object:  StoredProcedure [dbo].[SP_consultaEgresosPorConsorcio]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_consultaEgresosPorConsorcio]
@idConsorcio int

AS 
BEGIN
SET NOCOUNT ON
SELECT DISTINCT EG_idEgreso, CAM_categoriaMovimiento, EG_fecha,  EG_descripcion, EG_recurrencia, EG_monto, EG_prorrateo,UC_usuario , UF_nombre from EGRESO 
LEFT JOIN CATEGORIA_MOVIMIENTO on EG_idCategoria = CAM_idCategoria
LEFT JOIN USUARIO_CLIENTE on EG_idUsuario = UC_idUsuario
LEFT JOIN UNIDAD_FUNCIONAL on EG_idUnidadFuncional = UF_idUnidadFuncional
WHERE EG_idConsorcio = @idConsorcio
END


GO
/****** Object:  StoredProcedure [dbo].[SP_consultaEtiquetaPagina]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_consultaEtiquetaPagina]
@idPagina varchar(3)

AS 
BEGIN
SET NOCOUNT ON
DECLARE @cmd AS NVARCHAR(max)
SET @cmd = N'SELECT ET_idEtiqueta,ID_idioma,ET_texto, ET_descripcion FROM ETIQUETA INNER JOIN IDIOMA ON ETIQUETA.ET_idIdioma = IDIOMA.ID_idIdioma 
WHERE ET_idEtiqueta LIKE ''' + @idPagina + '%'''
EXEC sp_executesql @cmd 

END


GO
/****** Object:  StoredProcedure [dbo].[SP_consultaEtiquetaPaginaIdioma]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE PROCEDURE [dbo].[SP_consultaEtiquetaPaginaIdioma]
@idPagina varchar(3),
@idIdioma varchar(1)


AS 
BEGIN
SET NOCOUNT ON
DECLARE @cmd AS NVARCHAR(max)
SET @cmd = N'SELECT ET_idEtiqueta,ID_idioma,ET_texto, ET_descripcion FROM ETIQUETA INNER JOIN IDIOMA ON ETIQUETA.ET_idIdioma = IDIOMA.ID_idIdioma 
WHERE ET_idEtiqueta LIKE ''' + @idPagina + '%'' AND ET_idIdioma = ' + @idIdioma 
EXEC sp_executesql @cmd 

END


GO
/****** Object:  StoredProcedure [dbo].[SP_consultaEtiquetaTodas]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_consultaEtiquetaTodas]

AS 
BEGIN
SET NOCOUNT ON
DECLARE @cmd AS NVARCHAR(max)
SET @cmd = N'SELECT ET_idEtiqueta,ID_idioma,ET_texto, ET_descripcion FROM ETIQUETA INNER JOIN IDIOMA ON ETIQUETA.ET_idIdioma = IDIOMA.ID_idIdioma 
ORDER BY ET_idEtiqueta ASC '
EXEC sp_executesql @cmd 

END


GO
/****** Object:  StoredProcedure [dbo].[SP_consultaIngresosPorConsorcio]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_consultaIngresosPorConsorcio]
@idConsorcio int

AS 
BEGIN
SET NOCOUNT ON
SELECT DISTINCT IN_idIngreso, CAM_categoriaMovimiento, IN_fecha, IN_descripcion,IN_periodo, IN_monto, UC_usuario , UF_nombre from INGRESO 
LEFT JOIN CATEGORIA_MOVIMIENTO on IN_idCategoria = CAM_idCategoria
LEFT JOIN USUARIO_CLIENTE on IN_idUsuario = UC_idUsuario
LEFT JOIN UNIDAD_FUNCIONAL on IN_idUnidadFuncional = UF_idUnidadFuncional
WHERE IN_idConsorcio = @idConsorcio
END


GO
/****** Object:  StoredProcedure [dbo].[SP_ConsultaPeriodo]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_ConsultaPeriodo]
@idPeriodo int

AS 
BEGIN
SET NOCOUNT ON
SELECT PE_idPeriodo,PE_fechaInicio,PE_fechaFin FROM PERIODO
WHERE PE_idPeriodo = @idPeriodo 


END


GO
/****** Object:  StoredProcedure [dbo].[SP_consultarDVV]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_consultarDVV]
@DVVName varchar(50)


AS 
BEGIN
SET NOCOUNT ON
DECLARE @cmd AS NVARCHAR(max)
SET @cmd = N'SELECT * FROM DIGITOV WHERE DV_nombreTabla = ''' + @DVVName +  ''''

EXEC sp_executesql @cmd 

END




GO
/****** Object:  StoredProcedure [dbo].[SP_consultarUsuario]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_consultarUsuario]
@UserId varchar(50)


AS 
BEGIN
SET NOCOUNT ON
DECLARE @cmd AS NVARCHAR(max)
SET @cmd = N'SELECT * FROM USUARIO WHERE US_usuario = ''' + @UserId +  '''' 

EXEC sp_executesql @cmd 

END



GO
/****** Object:  StoredProcedure [dbo].[SP_consultaUnidadesFuncionalesPorConsorcio]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_consultaUnidadesFuncionalesPorConsorcio]
@idConsorcio int
AS 
BEGIN
SET NOCOUNT ON
select UF_idUnidadFuncional, UF_nombre, UF_descripcion, UF_metrosCuadrados, UF_coeficienteProrrateo, CASE WHEN UR1.UR_usuario IS NULL THEN '-' ELSE  UR1.UR_usuario END , CASE WHEN UR2.UR_usuario IS NULL THEN '-' ELSE UR2.UR_usuario END, UF_idConsorcio   from
UNIDAD_FUNCIONAL LEFT JOIN PROPIETARIO_UNIDADFUNCIONAL on UF_idUnidadFuncional = PUF_idUnidadFuncional 
LEFT JOIN INQUILINO_UNIDADFUNCIONAL ON IUF_idUnidadFuncional = PUF_idUnidadFuncional 
LEFT JOIN USUARIO_RESIDENTE as UR1 ON PUF_idPropietario = UR1.UR_idUsuario  
LEFT JOIN USUARIO_RESIDENTE as UR2 ON IUF_idInquilino = UR2.UR_idUsuario 
WHERE UF_idConsorcio = @idConsorcio AND UF_eliminado = 0
END


GO
/****** Object:  StoredProcedure [dbo].[SP_consultaUsuarioClave]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_consultaUsuarioClave]
@UserId varchar(16),
@Clave varchar(64)


AS 
BEGIN
SET NOCOUNT ON
DECLARE @cmd AS NVARCHAR(max)
SET @cmd = N'SELECT * FROM USUARIO WHERE US_usuario = ''' + @UserId +  '''' +
' AND US_clave= ''' + @Clave + ''''

EXEC sp_executesql @cmd 

END



GO
/****** Object:  StoredProcedure [dbo].[SP_consultaUsuarioClientePorUsuario]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_consultaUsuarioClientePorUsuario]
@usuario varchar(16)

AS 
BEGIN
SET NOCOUNT ON
SELECT * FROM USUARIO_CLIENTE WHERE UC_usuario = @usuario
END


GO
/****** Object:  StoredProcedure [dbo].[SP_consultaUsuarioN]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_consultaUsuarioN]
@cantidad varchar(10),
@tabla varchar(50)

AS 
BEGIN
SET NOCOUNT ON
DECLARE @cmd AS NVARCHAR(max)
SET @cmd = N'SELECT TOP '+ @cantidad +' UI_apellido,UI_nombre,UI_usuario,UI_cuit,UI_email FROM '
 + @tabla +  ' WHERE UI_eliminado = ''False''' 


EXEC sp_executesql @cmd 

END


GO
/****** Object:  StoredProcedure [dbo].[SP_eliminarUsuario]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_eliminarUsuario]
@usuario varchar(50),
@tabla varchar(50)

AS 
BEGIN
SET NOCOUNT ON

DECLARE @cmd AS NVARCHAR(max)
SET @cmd = N'UPDATE ' + @tabla +' SET US_eliminado = 1' +
' WHERE US_usuario = ''' + @usuario +  '''' 

EXEC sp_executesql @cmd 



END



GO
/****** Object:  StoredProcedure [dbo].[SP_limpiaBitacora.old]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE PROCEDURE [dbo].[SP_limpiaBitacora.old]
 AS 
BEGIN
SET NOCOUNT ON
DECLARE @cmd AS NVARCHAR(max)
SET @cmd = N'TRUNCATE TABLE BITACORA'
EXEC sp_executesql @cmd 

END


GO
/****** Object:  StoredProcedure [dbo].[SP_limpiarBitacora]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE PROCEDURE [dbo].[SP_limpiarBitacora]
 AS 
BEGIN
SET NOCOUNT ON
TRUNCATE TABLE BITACORA


END


GO
/****** Object:  StoredProcedure [dbo].[SP_listarBackup]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_listarBackup]
@cantidad Int

AS 
BEGIN
SET NOCOUNT ON
SELECT TOP (@cantidad)
BK_fechaCreacion as Fecha, BK_nombreBackup as Nombre, BK_path as Path, BK_descripcion as Descripcion
FROM DBBACKUP 
ORDER BY BK_fechaCreacion DESC

END


GO
/****** Object:  StoredProcedure [dbo].[SP_listarBitacora]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE PROCEDURE [dbo].[SP_listarBitacora]
@cantidad Int

AS 
BEGIN
SET NOCOUNT ON
SELECT TOP (@cantidad)
BI_fecha,BI_idActividadTipo ,TB_descripcionActividadTipo, BI_descripcion, BI_usuario 
FROM BITACORA INNER JOIN TIPO_BITACORA ON BITACORA.BI_idActividadTipo = TIPO_BITACORA.TB_idActividadTipo 
ORDER BY BI_fecha DESC

END


GO
/****** Object:  StoredProcedure [dbo].[SP_listarControlPaginaIdioma]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE PROCEDURE [dbo].[SP_listarControlPaginaIdioma]
@idPagina varchar(7),
@idIdioma varchar(3)


AS 
BEGIN
SET NOCOUNT ON

SELECT CT_idControl,VC_idIdioma, VC_texto, CT_descripcion 
FROM CONTROL 
INNER JOIN VALOR_CONTROL   ON CT_idControl = VC_idControl

WHERE VC_idControl LIKE '' + @idPagina + '%'+'' AND VC_idIdioma = @idIdioma


END


GO
/****** Object:  StoredProcedure [dbo].[SP_listarUsuarios]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_listarUsuarios]
@cantidad varchar(10)

AS 
BEGIN
SET NOCOUNT ON
DECLARE @cmd AS NVARCHAR(max)
SET @cmd = N'SELECT TOP '+ @cantidad +' * FROM USUARIO' 


EXEC sp_executesql @cmd 

END


GO
/****** Object:  StoredProcedure [dbo].[SP_modificarCliente]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modificarCliente]
@idCliente int,
@nombre varchar(MAX),
@fechaAlta date,
@direccion varchar(MAX),
@telefono varchar(MAX),
@cuit varchar(50)

AS 
BEGIN
SET NOCOUNT ON
UPDATE CLIENTE SET CL_nombre = @nombre, CL_fechaAlta = @fechaAlta, CL_direccion = @direccion, CL_telefono = @telefono, CL_cuit = @cuit
WHERE CL_idCliente = @idCliente


END


GO
/****** Object:  StoredProcedure [dbo].[SP_modificarConsorcio]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modificarConsorcio]
@idConsorcio int,
@codPostal varchar(50),
@diaVencimientoExpensa int,
@nombre varchar(MAX),
@direccion varchar(MAX),
@localidad varchar(MAX),
@telefono varchar(50),
@interes decimal (4,2)

AS 
BEGIN
SET NOCOUNT ON
UPDATE CONSORCIO SET CO_nombre = @nombre, CO_codPostal = @codPostal, CO_diaVencimientoExpensa = @diaVencimientoExpensa, CO_direccion = @direccion, CO_localidad  = @localidad,
CO_telefono = @telefono, CO_interes = @interes 
WHERE CO_idConsorcio  = @idConsorcio


END


GO
/****** Object:  StoredProcedure [dbo].[SP_modificarEtiqueta]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modificarEtiqueta]

@idEtiqueta varchar(10),
@idIdioma varchar,
@texto Nvarchar(MAX),
@descripcion Nvarchar(MAX)

AS 
BEGIN
SET NOCOUNT ON
DECLARE @cmd AS NVARCHAR(max)
SET @cmd = N'UPDATE ETIQUETA SET ET_texto = ''' + @texto  
+ ''', ET_descripcion = ''' + @descripcion + ''' WHERE ET_idEtiqueta = ''' + @idEtiqueta + ''' AND ET_idIdioma =' +@idIdioma   

PRINT @cmd
EXEC sp_executesql @cmd 

END


GO
/****** Object:  StoredProcedure [dbo].[SP_modificarUnidadFuncional]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modificarUnidadFuncional]
@idUnidadFuncional int,
@nombre varchar(50),
@descripcion varchar(MAX),
@coeficienteProrrateo decimal (4,2),
@metrosCuadrados smallint


AS 
BEGIN
SET NOCOUNT ON


UPDATE UNIDAD_FUNCIONAL SET UF_nombre = @nombre, UF_descripcion = @descripcion, UF_coeficienteProrrateo = @coeficienteProrrateo, UF_metrosCuadrados = @metrosCuadrados
WHERE UF_idUnidadFuncional  = @idUnidadFuncional

END


GO
/****** Object:  StoredProcedure [dbo].[SP_modificarUsuario]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_modificarUsuario]

@apellido varchar(50),
@nombre varchar(50),
@usuario varchar(50),
@clave varchar(64),
@email varchar(64),
@idioma varchar(3),
@eliminado bit,
@bloqueado bit,
@idCliente int,
@hash varchar(255)


AS 
BEGIN
SET NOCOUNT ON
UPDATE USUARIO SET US_apellido = @apellido, US_nombre = @nombre, US_clave = @clave, US_idCliente = @idCliente, 
US_email = @email, US_idIdioma = @idioma, US_eliminado = @eliminado, US_bloqueado = @bloqueado, US_hash = @hash
WHERE US_usuario = @usuario

END



GO
/****** Object:  StoredProcedure [dbo].[SP_modificarUsuario.old]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_modificarUsuario.old]

@apellido varchar(50),
@nombre varchar(50),
@usuario varchar(50),
@cuit varchar(50),
@email varchar(64)

AS 
BEGIN
SET NOCOUNT ON
DECLARE @cmd AS NVARCHAR(max)
SET @cmd = N'UPDATE USUARIO SET US_apellido = ''' + @apellido +''', US_nombre = ''' + @nombre  
+ ''', US_cuit = ''' + @cuit  + ''', US_email = ''' + @email + ''' WHERE US_usuario = ''' + @usuario + ''''

PRINT @cmd
EXEC sp_executesql @cmd 

END



GO
/****** Object:  StoredProcedure [dbo].[SP_realizarBackup]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_realizarBackup]
@BK_nombreBackup varchar(255),
@BK_path varchar(max),
@BK_descripcion varchar(max)


AS
BEGIN

SET NOCOUNT ON

DECLARE @cmd AS NVARCHAR(max)
SET @cmd = N'BACKUP DATABASE Consorcius TO DISK = ''' + @BK_path + '\' + @BK_nombreBackup + ''''

PRINT @cmd
EXEC sp_executesql @cmd 

INSERT INTO DBBACKUP (BK_nombreBackup,BK_fechaCreacion,BK_path, BK_descripcion)
VALUES (@BK_nombreBackup, GETDATE(),@BK_path, @BK_descripcion)

END



GO
/****** Object:  StoredProcedure [dbo].[SP_validarActividadLogin]    Script Date: 9/17/2017 7:24:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE PROCEDURE [dbo].[SP_validarActividadLogin]
 @BI_idActividadTipo int, 
 @BI_usuario varchar(50),
 @intentosFallidos int,
 @periodoMinutos int

 AS 
BEGIN
IF
	(SELECT ISNULL (
		(SELECT CASE WHEN COUNT(1) > 0 THEN 1 ELSE 0 END AS [Value]
		FROM [dbo].[BITACORA]
		WHERE BI_idActividadTipo = @BI_idActividadTipo and BI_usuario = @BI_usuario and BI_fecha >= DATEADD(MI,-@periodoMinutos, GETDATE()) having count(1) >=@intentosFallidos
	),0)) = 1
	RETURN 1;
ELSE
	RETURN 0;
END


GO
USE [master]
GO
ALTER DATABASE [Consorcius] SET  READ_WRITE 
GO
