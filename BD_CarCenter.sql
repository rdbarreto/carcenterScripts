USE [master]
GO
/****** Object:  Database [CarCenter]    Script Date: 2021-03-05 2:04:02 ******/
CREATE DATABASE [CarCenter]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CarCenter', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\CarCenter.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CarCenter_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\CarCenter_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CarCenter] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CarCenter].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CarCenter] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CarCenter] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CarCenter] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CarCenter] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CarCenter] SET ARITHABORT OFF 
GO
ALTER DATABASE [CarCenter] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CarCenter] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CarCenter] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CarCenter] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CarCenter] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CarCenter] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CarCenter] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CarCenter] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CarCenter] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CarCenter] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CarCenter] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CarCenter] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CarCenter] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CarCenter] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CarCenter] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CarCenter] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CarCenter] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CarCenter] SET RECOVERY FULL 
GO
ALTER DATABASE [CarCenter] SET  MULTI_USER 
GO
ALTER DATABASE [CarCenter] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CarCenter] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CarCenter] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CarCenter] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CarCenter] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CarCenter', N'ON'
GO
ALTER DATABASE [CarCenter] SET QUERY_STORE = OFF
GO
USE [CarCenter]
GO
/****** Object:  Table [dbo].[TB_CIUDAD]    Script Date: 2021-03-05 2:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CIUDAD](
	[Id_ciudad] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](60) NULL,
 CONSTRAINT [PK_TB_CIUDAD] PRIMARY KEY CLUSTERED 
(
	[Id_ciudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ESTADO_MO]    Script Date: 2021-03-05 2:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ESTADO_MO](
	[Id_estado_mo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](60) NULL,
 CONSTRAINT [PK_TB_ESTADO_MO] PRIMARY KEY CLUSTERED 
(
	[Id_estado_mo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_PERSONAL]    Script Date: 2021-03-05 2:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PERSONAL](
	[Id_perso] [int] IDENTITY(1,1) NOT NULL,
	[Nombre1] [varchar](60) NULL,
	[Nombre2] [varchar](60) NULL,
	[Apellido1] [varchar](60) NULL,
	[Apellido2] [varchar](60) NULL,
	[Id_tipo_prod] [int] NULL,
	[Val_min_hora] [numeric](20, 2) NULL,
	[Val_max_hora] [numeric](20, 2) NULL,
	[Id_Tipo_docum] [int] NULL,
	[Num_documento] [varchar](15) NULL,
	[Celular] [varchar](20) NULL,
	[Direccion] [varchar](100) NULL,
	[Correo] [varchar](100) NULL,
 CONSTRAINT [PK_TB_PERSONAL] PRIMARY KEY CLUSTERED 
(
	[Id_perso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_PRODUCTO]    Script Date: 2021-03-05 2:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PRODUCTO](
	[Id_prod] [int] IDENTITY(1,1) NOT NULL,
	[Id_tipo_prod] [int] NULL,
	[Nombre] [varchar](60) NULL,
	[Detalle] [varchar](1000) NULL,
	[Val_min] [numeric](20, 2) NULL,
	[Val_max] [numeric](20, 2) NULL,
 CONSTRAINT [PK_TB_PRODUCTO] PRIMARY KEY CLUSTERED 
(
	[Id_prod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_TALLER]    Script Date: 2021-03-05 2:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_TALLER](
	[Id_taller] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](60) NULL,
	[Id_ciudad] [int] NULL,
 CONSTRAINT [PK_TB_TALLER] PRIMARY KEY CLUSTERED 
(
	[Id_taller] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_TIPO_DOCUM]    Script Date: 2021-03-05 2:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_TIPO_DOCUM](
	[Id_tipo_docum] [int] NOT NULL,
	[Nombre] [varchar](60) NULL,
 CONSTRAINT [PK_TB_TIPO_DOCUM] PRIMARY KEY CLUSTERED 
(
	[Id_tipo_docum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_TIPO_PROD]    Script Date: 2021-03-05 2:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_TIPO_PROD](
	[Id_tipo_prod] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](60) NULL,
	[Tipo_prod] [varchar](1) NULL,
	[Detalle] [varchar](1000) NULL,
 CONSTRAINT [PK_TB_TIPO_PROD] PRIMARY KEY CLUSTERED 
(
	[Id_tipo_prod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TH_CLIENTE]    Script Date: 2021-03-05 2:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TH_CLIENTE](
	[Id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre1] [varchar](60) NULL,
	[Nombre2] [varchar](60) NULL,
	[Apellido1] [varchar](60) NULL,
	[Apellido2] [varchar](60) NULL,
	[Razon_soc] [varchar](60) NULL,
	[Id_tipo_docum] [int] NULL,
	[Num_docum] [varchar](15) NULL,
	[Celular] [varchar](20) NULL,
	[Direccion] [varchar](100) NULL,
	[Correo] [varchar](100) NULL,
 CONSTRAINT [PK_TH_CLIENTE] PRIMARY KEY CLUSTERED 
(
	[Id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TH_FACT_CAB]    Script Date: 2021-03-05 2:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TH_FACT_CAB](
	[Id_factura] [int] IDENTITY(1,1) NOT NULL,
	[Fec_factura] [date] NULL,
	[Fec_vencim] [date] NULL,
	[Id_taller] [int] NULL,
	[Id_cliente] [int] NULL,
	[Id_hist_vehic] [int] NULL,
	[Val_bruto_rep] [numeric](20, 2) NULL,
	[Val_bruto_mo] [numeric](20, 2) NULL,
	[Val_descto_prd] [numeric](20, 2) NULL,
	[Val_descto_mo] [numeric](20, 2) NULL,
	[Val_neto_prd] [numeric](20, 2) NULL,
	[Val_neto_mo] [numeric](20, 2) NULL,
	[Por_iva] [numeric](10, 4) NULL,
	[Val_iva] [numeric](20, 2) NULL,
	[Por_reteiva] [numeric](10, 4) NULL,
	[Val_reteiva] [numeric](20, 2) NULL,
	[Por_retefte] [numeric](10, 4) NULL,
	[Val_retefte] [numeric](20, 2) NULL,
	[Val_neto] [numeric](20, 2) NULL,
 CONSTRAINT [PK_TH_FACT_CAB] PRIMARY KEY CLUSTERED 
(
	[Id_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TH_FACT_MO]    Script Date: 2021-03-05 2:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TH_FACT_MO](
	[Id_fact_mo] [int] IDENTITY(1,1) NOT NULL,
	[Id_factura] [int] NULL,
	[Id_hist_mo] [int] NULL,
	[Cantidad] [numeric](20, 2) NULL,
	[Precio] [numeric](20, 2) NULL,
	[Val_bruto] [numeric](20, 2) NULL,
	[Val_descto] [numeric](20, 2) NULL,
	[Por_iva] [numeric](10, 4) NULL,
	[Val_iva] [numeric](20, 2) NULL,
	[Por_reteiva] [numeric](10, 4) NULL,
	[Val_reteiva] [numeric](20, 2) NULL,
	[Por_retefte] [numeric](10, 4) NULL,
	[Val_retefte] [numeric](20, 2) NULL,
	[Val_neto] [numeric](20, 2) NULL,
 CONSTRAINT [PK_TH_FACT_MO] PRIMARY KEY CLUSTERED 
(
	[Id_fact_mo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TH_FACT_PROD]    Script Date: 2021-03-05 2:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TH_FACT_PROD](
	[Id_fact_prod] [int] IDENTITY(1,1) NOT NULL,
	[Id_factura] [int] NULL,
	[Id_hist_prod] [int] NULL,
	[Cantidad] [numeric](20, 2) NULL,
	[Precio] [numeric](20, 2) NULL,
	[Val_bruto] [numeric](20, 2) NULL,
	[Val_descto] [numeric](20, 2) NULL,
	[Por_iva] [numeric](10, 4) NULL,
	[Val_iva] [numeric](20, 2) NULL,
	[Por_reteiva] [numeric](10, 4) NULL,
	[Val_reteiva] [numeric](20, 2) NULL,
	[Por_retefte] [numeric](10, 4) NULL,
	[Val_retefte] [numeric](20, 2) NULL,
	[Val_neto] [numeric](20, 2) NULL,
 CONSTRAINT [PK_TH_FACT_PROD] PRIMARY KEY CLUSTERED 
(
	[Id_fact_prod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TH_HIST_MO]    Script Date: 2021-03-05 2:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TH_HIST_MO](
	[Id_hist_mo] [int] IDENTITY(1,1) NOT NULL,
	[Id_hist_vehic] [int] NULL,
	[Id_perso] [int] NULL,
	[Cantidad] [numeric](20, 2) NULL,
	[Val_min_hora] [numeric](20, 2) NULL,
	[Val_max_hora] [numeric](20, 2) NULL,
	[Precio_autoriz] [numeric](20, 2) NULL,
	[Por_descto] [numeric](20, 2) NULL,
	[Val_descto] [numeric](20, 2) NULL,
	[Autoriza_descto] [int] NULL,
	[Detalle] [varchar](1000) NULL,
 CONSTRAINT [PK_TH_HIST_MO] PRIMARY KEY CLUSTERED 
(
	[Id_hist_mo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TH_HIST_PROD]    Script Date: 2021-03-05 2:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TH_HIST_PROD](
	[Id_hist_prod] [int] IDENTITY(1,1) NOT NULL,
	[Id_hist_vehic] [int] NULL,
	[Id_prod] [int] NULL,
	[Cantidad] [numeric](20, 2) NULL,
	[Val_min] [numeric](20, 2) NULL,
	[Val_max] [numeric](20, 2) NULL,
	[Precio_autoriz] [numeric](20, 2) NULL,
	[Por_descto] [numeric](20, 2) NULL,
	[Val_descto] [numeric](20, 2) NULL,
	[Autoriza_descto] [int] NULL,
	[Detalle] [varchar](1000) NULL,
 CONSTRAINT [PK_TH_HIST_PROD] PRIMARY KEY CLUSTERED 
(
	[Id_hist_prod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TH_HIST_VEHIC]    Script Date: 2021-03-05 2:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TH_HIST_VEHIC](
	[Id_hist_vehic] [int] IDENTITY(1,1) NOT NULL,
	[Id_vehic] [int] NULL,
	[Fec_entrada] [date] NULL,
	[Fec_salida] [date] NULL,
	[Detalle_entrada] [varchar](1000) NULL,
	[Detalle_valoracion] [varchar](1000) NULL,
	[Tecnico_valoracion] [int] NULL,
	[Detalle_salida] [varchar](1000) NULL,
 CONSTRAINT [PK_TH_HIST_VEHIC] PRIMARY KEY CLUSTERED 
(
	[Id_hist_vehic] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TH_HIST_VEHICFOTO]    Script Date: 2021-03-05 2:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TH_HIST_VEHICFOTO](
	[Id_hist_vehicfoto] [int] IDENTITY(1,1) NOT NULL,
	[Id_hist_vehic] [int] NULL,
	[Fec_entrada] [date] NULL,
	[Fec_salida] [date] NULL,
	[Detalles_entrada] [varchar](60) NULL,
	[Detalles_salida] [varchar](60) NULL,
	[Imagen] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_TH_HIST_VEHICFOTO] PRIMARY KEY CLUSTERED 
(
	[Id_hist_vehicfoto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TH_INVENTARIO]    Script Date: 2021-03-05 2:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TH_INVENTARIO](
	[Id_invent] [int] IDENTITY(1,1) NOT NULL,
	[Id_taller] [int] NULL,
	[Id_prod] [int] NULL,
	[Fec_mvto] [date] NULL,
	[Cant_entra] [numeric](20, 2) NULL,
	[Cant_sale] [numeric](20, 2) NULL,
	[Id_factura] [int] NULL,
	[Detalle] [varchar](1000) NULL,
 CONSTRAINT [PK_TH_INVENTARIO] PRIMARY KEY CLUSTERED 
(
	[Id_invent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TH_VEHICULO]    Script Date: 2021-03-05 2:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TH_VEHICULO](
	[Id_vehic] [int] IDENTITY(1,1) NOT NULL,
	[Placa] [varchar](60) NULL,
 CONSTRAINT [PK_TH_VEHICULO] PRIMARY KEY CLUSTERED 
(
	[Id_vehic] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TB_TIPO_DOCUM] ([Id_tipo_docum], [Nombre]) VALUES (1, N'CC')
INSERT [dbo].[TB_TIPO_DOCUM] ([Id_tipo_docum], [Nombre]) VALUES (2, N'NIT')
SET IDENTITY_INSERT [dbo].[TH_CLIENTE] ON 

INSERT [dbo].[TH_CLIENTE] ([Id_cliente], [Nombre1], [Nombre2], [Apellido1], [Apellido2], [Razon_soc], [Id_tipo_docum], [Num_docum], [Celular], [Direccion], [Correo]) VALUES (1, N'Ruben', N'Antonio', N'Barreto', N'Lopez', NULL, 1, N'79854542', N'316856954', N'Calle Del  mar', N'algo@gmail.com')
INSERT [dbo].[TH_CLIENTE] ([Id_cliente], [Nombre1], [Nombre2], [Apellido1], [Apellido2], [Razon_soc], [Id_tipo_docum], [Num_docum], [Celular], [Direccion], [Correo]) VALUES (3, N'Jesus', N'Fernando', N'Calderon', N'Vargas', N'Algo', 1, N'7977777', N'316111111', N'Calle Del  Sol', N'algo2@gmail.com')
SET IDENTITY_INSERT [dbo].[TH_CLIENTE] OFF
ALTER TABLE [dbo].[TH_FACT_CAB] ADD  DEFAULT ((0)) FOR [Val_bruto_rep]
GO
ALTER TABLE [dbo].[TH_FACT_CAB] ADD  DEFAULT ((0)) FOR [Val_bruto_mo]
GO
ALTER TABLE [dbo].[TH_FACT_CAB] ADD  DEFAULT ((0)) FOR [Val_descto_prd]
GO
ALTER TABLE [dbo].[TH_FACT_CAB] ADD  DEFAULT ((0)) FOR [Val_descto_mo]
GO
ALTER TABLE [dbo].[TH_FACT_CAB] ADD  DEFAULT ((0)) FOR [Val_neto_prd]
GO
ALTER TABLE [dbo].[TH_FACT_CAB] ADD  DEFAULT ((0)) FOR [Val_neto_mo]
GO
ALTER TABLE [dbo].[TH_FACT_CAB] ADD  DEFAULT ((0)) FOR [Por_iva]
GO
ALTER TABLE [dbo].[TH_FACT_CAB] ADD  DEFAULT ((0)) FOR [Val_iva]
GO
ALTER TABLE [dbo].[TH_FACT_CAB] ADD  DEFAULT ((0)) FOR [Por_reteiva]
GO
ALTER TABLE [dbo].[TH_FACT_CAB] ADD  DEFAULT ((0)) FOR [Val_reteiva]
GO
ALTER TABLE [dbo].[TH_FACT_CAB] ADD  DEFAULT ((0)) FOR [Por_retefte]
GO
ALTER TABLE [dbo].[TH_FACT_CAB] ADD  DEFAULT ((0)) FOR [Val_retefte]
GO
ALTER TABLE [dbo].[TH_FACT_CAB] ADD  DEFAULT ((0)) FOR [Val_neto]
GO
ALTER TABLE [dbo].[TH_FACT_MO] ADD  DEFAULT ((0)) FOR [Cantidad]
GO
ALTER TABLE [dbo].[TH_FACT_MO] ADD  DEFAULT ((0)) FOR [Precio]
GO
ALTER TABLE [dbo].[TH_FACT_MO] ADD  DEFAULT ((0)) FOR [Val_bruto]
GO
ALTER TABLE [dbo].[TH_FACT_MO] ADD  DEFAULT ((0)) FOR [Val_descto]
GO
ALTER TABLE [dbo].[TH_FACT_MO] ADD  DEFAULT ((0)) FOR [Por_iva]
GO
ALTER TABLE [dbo].[TH_FACT_MO] ADD  DEFAULT ((0)) FOR [Val_iva]
GO
ALTER TABLE [dbo].[TH_FACT_MO] ADD  DEFAULT ((0)) FOR [Por_reteiva]
GO
ALTER TABLE [dbo].[TH_FACT_MO] ADD  DEFAULT ((0)) FOR [Val_reteiva]
GO
ALTER TABLE [dbo].[TH_FACT_MO] ADD  DEFAULT ((0)) FOR [Por_retefte]
GO
ALTER TABLE [dbo].[TH_FACT_MO] ADD  DEFAULT ((0)) FOR [Val_retefte]
GO
ALTER TABLE [dbo].[TH_FACT_MO] ADD  DEFAULT ((0)) FOR [Val_neto]
GO
ALTER TABLE [dbo].[TH_FACT_PROD] ADD  DEFAULT ((0)) FOR [Cantidad]
GO
ALTER TABLE [dbo].[TH_FACT_PROD] ADD  DEFAULT ((0)) FOR [Precio]
GO
ALTER TABLE [dbo].[TH_FACT_PROD] ADD  DEFAULT ((0)) FOR [Val_bruto]
GO
ALTER TABLE [dbo].[TH_FACT_PROD] ADD  DEFAULT ((0)) FOR [Val_descto]
GO
ALTER TABLE [dbo].[TH_FACT_PROD] ADD  DEFAULT ((0)) FOR [Por_iva]
GO
ALTER TABLE [dbo].[TH_FACT_PROD] ADD  DEFAULT ((0)) FOR [Val_iva]
GO
ALTER TABLE [dbo].[TH_FACT_PROD] ADD  DEFAULT ((0)) FOR [Por_reteiva]
GO
ALTER TABLE [dbo].[TH_FACT_PROD] ADD  DEFAULT ((0)) FOR [Val_reteiva]
GO
ALTER TABLE [dbo].[TH_FACT_PROD] ADD  DEFAULT ((0)) FOR [Por_retefte]
GO
ALTER TABLE [dbo].[TH_FACT_PROD] ADD  DEFAULT ((0)) FOR [Val_retefte]
GO
ALTER TABLE [dbo].[TH_FACT_PROD] ADD  DEFAULT ((0)) FOR [Val_neto]
GO
ALTER TABLE [dbo].[TH_INVENTARIO] ADD  DEFAULT ((0)) FOR [Cant_entra]
GO
ALTER TABLE [dbo].[TH_INVENTARIO] ADD  DEFAULT ((0)) FOR [Cant_sale]
GO
ALTER TABLE [dbo].[TB_PERSONAL]  WITH CHECK ADD  CONSTRAINT [TBPERSONAL_TBTIPODOCUM] FOREIGN KEY([Id_Tipo_docum])
REFERENCES [dbo].[TB_TIPO_DOCUM] ([Id_tipo_docum])
GO
ALTER TABLE [dbo].[TB_PERSONAL] CHECK CONSTRAINT [TBPERSONAL_TBTIPODOCUM]
GO
ALTER TABLE [dbo].[TB_PERSONAL]  WITH CHECK ADD  CONSTRAINT [TBPERSONAL_TBTIPOSERVICIO] FOREIGN KEY([Id_tipo_prod])
REFERENCES [dbo].[TB_TIPO_PROD] ([Id_tipo_prod])
GO
ALTER TABLE [dbo].[TB_PERSONAL] CHECK CONSTRAINT [TBPERSONAL_TBTIPOSERVICIO]
GO
ALTER TABLE [dbo].[TB_PRODUCTO]  WITH CHECK ADD  CONSTRAINT [TBPRODUCTO_TBTIPOPROD] FOREIGN KEY([Id_tipo_prod])
REFERENCES [dbo].[TB_TIPO_PROD] ([Id_tipo_prod])
GO
ALTER TABLE [dbo].[TB_PRODUCTO] CHECK CONSTRAINT [TBPRODUCTO_TBTIPOPROD]
GO
ALTER TABLE [dbo].[TB_TALLER]  WITH CHECK ADD  CONSTRAINT [TBTALLER_TBCIUDAD] FOREIGN KEY([Id_ciudad])
REFERENCES [dbo].[TB_CIUDAD] ([Id_ciudad])
GO
ALTER TABLE [dbo].[TB_TALLER] CHECK CONSTRAINT [TBTALLER_TBCIUDAD]
GO
ALTER TABLE [dbo].[TH_CLIENTE]  WITH CHECK ADD  CONSTRAINT [THCLIENTE_TBTIPODOCUM] FOREIGN KEY([Id_tipo_docum])
REFERENCES [dbo].[TB_TIPO_DOCUM] ([Id_tipo_docum])
GO
ALTER TABLE [dbo].[TH_CLIENTE] CHECK CONSTRAINT [THCLIENTE_TBTIPODOCUM]
GO
ALTER TABLE [dbo].[TH_FACT_CAB]  WITH CHECK ADD  CONSTRAINT [THFACTCAB_TB_TALLER] FOREIGN KEY([Id_taller])
REFERENCES [dbo].[TB_TALLER] ([Id_taller])
GO
ALTER TABLE [dbo].[TH_FACT_CAB] CHECK CONSTRAINT [THFACTCAB_TB_TALLER]
GO
ALTER TABLE [dbo].[TH_FACT_CAB]  WITH CHECK ADD  CONSTRAINT [THFACTCAB_THCLIENTE] FOREIGN KEY([Id_cliente])
REFERENCES [dbo].[TH_CLIENTE] ([Id_cliente])
GO
ALTER TABLE [dbo].[TH_FACT_CAB] CHECK CONSTRAINT [THFACTCAB_THCLIENTE]
GO
ALTER TABLE [dbo].[TH_FACT_CAB]  WITH CHECK ADD  CONSTRAINT [THFACTCAB_THHISTVEHIC] FOREIGN KEY([Id_hist_vehic])
REFERENCES [dbo].[TH_HIST_VEHIC] ([Id_hist_vehic])
GO
ALTER TABLE [dbo].[TH_FACT_CAB] CHECK CONSTRAINT [THFACTCAB_THHISTVEHIC]
GO
ALTER TABLE [dbo].[TH_FACT_MO]  WITH CHECK ADD  CONSTRAINT [THFACTMO_THFACTCAB] FOREIGN KEY([Id_factura])
REFERENCES [dbo].[TH_FACT_CAB] ([Id_factura])
GO
ALTER TABLE [dbo].[TH_FACT_MO] CHECK CONSTRAINT [THFACTMO_THFACTCAB]
GO
ALTER TABLE [dbo].[TH_FACT_MO]  WITH CHECK ADD  CONSTRAINT [THFACTMO_THHISTMO] FOREIGN KEY([Id_hist_mo])
REFERENCES [dbo].[TH_HIST_MO] ([Id_hist_mo])
GO
ALTER TABLE [dbo].[TH_FACT_MO] CHECK CONSTRAINT [THFACTMO_THHISTMO]
GO
ALTER TABLE [dbo].[TH_FACT_PROD]  WITH CHECK ADD  CONSTRAINT [THFACTREP_THFACTCAB] FOREIGN KEY([Id_factura])
REFERENCES [dbo].[TH_FACT_CAB] ([Id_factura])
GO
ALTER TABLE [dbo].[TH_FACT_PROD] CHECK CONSTRAINT [THFACTREP_THFACTCAB]
GO
ALTER TABLE [dbo].[TH_FACT_PROD]  WITH CHECK ADD  CONSTRAINT [THFACTREP_THHISTREPU] FOREIGN KEY([Id_hist_prod])
REFERENCES [dbo].[TH_HIST_PROD] ([Id_hist_prod])
GO
ALTER TABLE [dbo].[TH_FACT_PROD] CHECK CONSTRAINT [THFACTREP_THHISTREPU]
GO
ALTER TABLE [dbo].[TH_HIST_MO]  WITH CHECK ADD  CONSTRAINT [THHISTMO_TBPERSONAL] FOREIGN KEY([Id_perso])
REFERENCES [dbo].[TB_PERSONAL] ([Id_perso])
GO
ALTER TABLE [dbo].[TH_HIST_MO] CHECK CONSTRAINT [THHISTMO_TBPERSONAL]
GO
ALTER TABLE [dbo].[TH_HIST_MO]  WITH CHECK ADD  CONSTRAINT [THHISTMO_THHISTVEHIC] FOREIGN KEY([Id_hist_vehic])
REFERENCES [dbo].[TH_HIST_VEHIC] ([Id_hist_vehic])
GO
ALTER TABLE [dbo].[TH_HIST_MO] CHECK CONSTRAINT [THHISTMO_THHISTVEHIC]
GO
ALTER TABLE [dbo].[TH_HIST_PROD]  WITH CHECK ADD  CONSTRAINT [THHISTPROD_TBPRODUCTO] FOREIGN KEY([Id_prod])
REFERENCES [dbo].[TB_PRODUCTO] ([Id_prod])
GO
ALTER TABLE [dbo].[TH_HIST_PROD] CHECK CONSTRAINT [THHISTPROD_TBPRODUCTO]
GO
ALTER TABLE [dbo].[TH_HIST_VEHIC]  WITH CHECK ADD  CONSTRAINT [THHISTVEHIC_THVEHICULO] FOREIGN KEY([Id_vehic])
REFERENCES [dbo].[TH_VEHICULO] ([Id_vehic])
GO
ALTER TABLE [dbo].[TH_HIST_VEHIC] CHECK CONSTRAINT [THHISTVEHIC_THVEHICULO]
GO
ALTER TABLE [dbo].[TH_HIST_VEHICFOTO]  WITH CHECK ADD  CONSTRAINT [THHISTFOTOVEHIC_THHISTVEHIC] FOREIGN KEY([Id_hist_vehic])
REFERENCES [dbo].[TH_HIST_VEHIC] ([Id_hist_vehic])
GO
ALTER TABLE [dbo].[TH_HIST_VEHICFOTO] CHECK CONSTRAINT [THHISTFOTOVEHIC_THHISTVEHIC]
GO
ALTER TABLE [dbo].[TH_INVENTARIO]  WITH CHECK ADD  CONSTRAINT [THINVENTARIO_TBPRODUCTO] FOREIGN KEY([Id_prod])
REFERENCES [dbo].[TB_PRODUCTO] ([Id_prod])
GO
ALTER TABLE [dbo].[TH_INVENTARIO] CHECK CONSTRAINT [THINVENTARIO_TBPRODUCTO]
GO
ALTER TABLE [dbo].[TH_INVENTARIO]  WITH CHECK ADD  CONSTRAINT [THINVENTARIO_TBTALLER] FOREIGN KEY([Id_taller])
REFERENCES [dbo].[TB_TALLER] ([Id_taller])
GO
ALTER TABLE [dbo].[TH_INVENTARIO] CHECK CONSTRAINT [THINVENTARIO_TBTALLER]
GO
/****** Object:  StoredProcedure [dbo].[proRestarDeInventario]    Script Date: 2021-03-05 2:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proRestarDeInventario] 
    @Id_taller integer, 
    @Id_producto integer, 
    @Cantidad integer, 
	@Id_factura integer, 
	@Detalle varchar(255)
AS   
/* Este procedimiento actualiza la tabla de la cual se genera el 
informe de inventario, no se deben utilizar tablas totalizadoras 
puesto que los totales los arma el informe, y además para que el 
inventario se pueda generar a una fecha de corte */

    SET NOCOUNT ON; 

    INSERT INTO TH_INVENTARIO (Id_taller, Id_prod, Fec_mvto, 
	Cant_entra, Cant_sale, Id_factura, Detalle) 
    VALUES (@Id_taller, @Id_producto, GetDate(), 0, @Cantidad, 
	@Id_factura, @Detalle); 
GO
USE [master]
GO
ALTER DATABASE [CarCenter] SET  READ_WRITE 
GO
