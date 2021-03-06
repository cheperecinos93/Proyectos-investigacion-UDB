USE [master]
GO
/****** Object:  Database [investigaciones]    Script Date: 10/13/2016 10:37:44 PM ******/
CREATE DATABASE [investigaciones]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'investigaciones', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\investigaciones.mdf' , SIZE = 20480KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'investigaciones_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\investigaciones_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [investigaciones] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [investigaciones].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [investigaciones] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [investigaciones] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [investigaciones] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [investigaciones] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [investigaciones] SET ARITHABORT OFF 
GO
ALTER DATABASE [investigaciones] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [investigaciones] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [investigaciones] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [investigaciones] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [investigaciones] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [investigaciones] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [investigaciones] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [investigaciones] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [investigaciones] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [investigaciones] SET  DISABLE_BROKER 
GO
ALTER DATABASE [investigaciones] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [investigaciones] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [investigaciones] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [investigaciones] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [investigaciones] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [investigaciones] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [investigaciones] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [investigaciones] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [investigaciones] SET  MULTI_USER 
GO
ALTER DATABASE [investigaciones] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [investigaciones] SET DB_CHAINING OFF 
GO
ALTER DATABASE [investigaciones] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [investigaciones] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [investigaciones] SET DELAYED_DURABILITY = DISABLED 
GO
USE [investigaciones]
GO
/****** Object:  Table [dbo].[calendarios]    Script Date: 10/13/2016 10:37:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[calendarios](
	[id_calendario] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NULL,
	[titulo] [varchar](100) NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_calendarios] PRIMARY KEY CLUSTERED 
(
	[id_calendario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[contactos]    Script Date: 10/13/2016 10:37:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[contactos](
	[id_contacto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[correo] [varchar](100) NULL,
	[descrip] [text] NULL,
	[fecha] [timestamp] NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_contactos] PRIMARY KEY CLUSTERED 
(
	[id_contacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[facultades]    Script Date: 10/13/2016 10:37:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[facultades](
	[id_facultad] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_facultades] PRIMARY KEY CLUSTERED 
(
	[id_facultad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[grupos]    Script Date: 10/13/2016 10:37:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[grupos](
	[id_grupo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[descripcion] [text] NULL,
	[foto] [varchar](250) NULL,
	[id_p] [int] NULL,
	[id_f] [int] NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_grupos] PRIMARY KEY CLUSTERED 
(
	[id_grupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lineas]    Script Date: 10/13/2016 10:37:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lineas](
	[id_linea] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[id_g] [int] NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_lineas] PRIMARY KEY CLUSTERED 
(
	[id_linea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[noticias]    Script Date: 10/13/2016 10:37:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[noticias](
	[id_noticias] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NOT NULL,
	[titulo] [varchar](100) NULL,
	[descripcion] [text] NULL,
	[id_g] [int] NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_noticias] PRIMARY KEY CLUSTERED 
(
	[id_noticias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[personas]    Script Date: 10/13/2016 10:37:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[personas](
	[id_persona] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](100) NOT NULL,
	[password] [varbinary](100) NOT NULL,
	[correo] [varchar](100) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[last_name] [varchar](100) NOT NULL,
	[foto] [varchar](250) NULL,
	[estado] [int] NULL,
	[nivel] [int] NULL,
 CONSTRAINT [PK_personas] PRIMARY KEY CLUSTERED 
(
	[id_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[proyectos]    Script Date: 10/13/2016 10:37:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[proyectos](
	[id_proyectos] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](100) NULL,
	[descripcion] [text] NULL,
	[id_p] [int] NULL,
	[id_l] [int] NULL,
	[socio] [varchar](100) NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_proyectos] PRIMARY KEY CLUSTERED 
(
	[id_proyectos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rotadores]    Script Date: 10/13/2016 10:37:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rotadores](
	[id_rotador] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](100) NULL,
	[leyenda] [varchar](100) NULL,
	[imagen] [varchar](100) NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_rotadores] PRIMARY KEY CLUSTERED 
(
	[id_rotador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[grupos]  WITH CHECK ADD  CONSTRAINT [FK_grupos_facultades] FOREIGN KEY([id_f])
REFERENCES [dbo].[facultades] ([id_facultad])
GO
ALTER TABLE [dbo].[grupos] CHECK CONSTRAINT [FK_grupos_facultades]
GO
ALTER TABLE [dbo].[grupos]  WITH CHECK ADD  CONSTRAINT [FK_grupos_personas] FOREIGN KEY([id_p])
REFERENCES [dbo].[personas] ([id_persona])
GO
ALTER TABLE [dbo].[grupos] CHECK CONSTRAINT [FK_grupos_personas]
GO
ALTER TABLE [dbo].[noticias]  WITH CHECK ADD  CONSTRAINT [FK_noticias_grupos] FOREIGN KEY([id_g])
REFERENCES [dbo].[grupos] ([id_grupo])
GO
ALTER TABLE [dbo].[noticias] CHECK CONSTRAINT [FK_noticias_grupos]
GO
ALTER TABLE [dbo].[proyectos]  WITH CHECK ADD  CONSTRAINT [FK_proyectos_lineas] FOREIGN KEY([id_l])
REFERENCES [dbo].[lineas] ([id_linea])
GO
ALTER TABLE [dbo].[proyectos] CHECK CONSTRAINT [FK_proyectos_lineas]
GO
ALTER TABLE [dbo].[proyectos]  WITH CHECK ADD  CONSTRAINT [FK_proyectos_personas] FOREIGN KEY([id_p])
REFERENCES [dbo].[personas] ([id_persona])
GO
ALTER TABLE [dbo].[proyectos] CHECK CONSTRAINT [FK_proyectos_personas]
GO
USE [master]
GO
ALTER DATABASE [investigaciones] SET  READ_WRITE 
GO
