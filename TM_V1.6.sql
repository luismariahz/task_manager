USE [master]
GO
/****** Object:  Database [TaskManager_v16]    Script Date: 17/02/2022 13:00:08 ******/
CREATE DATABASE [TaskManager_v16]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TaskManager_v16', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TaskManager_v16.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TaskManager_v16_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TaskManager_v16_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TaskManager_v16] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TaskManager_v16].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TaskManager_v16] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TaskManager_v16] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TaskManager_v16] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TaskManager_v16] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TaskManager_v16] SET ARITHABORT OFF 
GO
ALTER DATABASE [TaskManager_v16] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TaskManager_v16] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TaskManager_v16] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TaskManager_v16] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TaskManager_v16] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TaskManager_v16] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TaskManager_v16] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TaskManager_v16] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TaskManager_v16] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TaskManager_v16] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TaskManager_v16] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TaskManager_v16] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TaskManager_v16] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TaskManager_v16] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TaskManager_v16] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TaskManager_v16] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TaskManager_v16] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TaskManager_v16] SET RECOVERY FULL 
GO
ALTER DATABASE [TaskManager_v16] SET  MULTI_USER 
GO
ALTER DATABASE [TaskManager_v16] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TaskManager_v16] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TaskManager_v16] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TaskManager_v16] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TaskManager_v16] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TaskManager_v16', N'ON'
GO
ALTER DATABASE [TaskManager_v16] SET QUERY_STORE = OFF
GO
USE [TaskManager_v16]
GO
/****** Object:  Table [dbo].[Adhoc]    Script Date: 17/02/2022 13:00:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adhoc](
	[idAdhoc] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NULL,
	[tituloTicket] [nvarchar](100) NOT NULL,
	[linkTicket] [nvarchar](100) NOT NULL,
	[idEstado] [int] NOT NULL,
	[idSprint] [int] NOT NULL,
	[idEstadosAdhoc] [int] NOT NULL,
	[bandera] [bit] NOT NULL,
	[fecha] [date] NOT NULL,
 CONSTRAINT [PK_Adhoc] PRIMARY KEY CLUSTERED 
(
	[idAdhoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 17/02/2022 13:00:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados](
	[idEstado] [int] IDENTITY(1,1) NOT NULL,
	[estado] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[idEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estados_adhoc]    Script Date: 17/02/2022 13:00:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados_adhoc](
	[idEstadoAdhoc] [int] IDENTITY(1,1) NOT NULL,
	[estadoAdhoc] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Estados_adhoc] PRIMARY KEY CLUSTERED 
(
	[idEstadoAdhoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fixes]    Script Date: 17/02/2022 13:00:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fixes](
	[idFix] [int] IDENTITY(1,1) NOT NULL,
	[tituloFix] [nvarchar](100) NOT NULL,
	[linkTicket] [nvarchar](100) NOT NULL,
	[idPrioridadFix] [int] NOT NULL,
	[fecha] [date] NOT NULL,
	[adminComment] [nvarchar](50) NOT NULL,
	[idEstado] [int] NOT NULL,
	[idSprint] [int] NOT NULL,
	[bandera] [bit] NOT NULL,
 CONSTRAINT [PK_Fixes] PRIMARY KEY CLUSTERED 
(
	[idFix] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prioridades_fix]    Script Date: 17/02/2022 13:00:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prioridades_fix](
	[idPrioridadFix] [int] IDENTITY(1,1) NOT NULL,
	[prioridadFix] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Prioridades_fix] PRIMARY KEY CLUSTERED 
(
	[idPrioridadFix] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prioridades_request]    Script Date: 17/02/2022 13:00:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prioridades_request](
	[idPriorirdadRequest] [int] IDENTITY(1,1) NOT NULL,
	[prioridadRequest] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Prioridades_request] PRIMARY KEY CLUSTERED 
(
	[idPriorirdadRequest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proyectos]    Script Date: 17/02/2022 13:00:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proyectos](
	[idProyecto] [int] IDENTITY(1,1) NOT NULL,
	[nombreProyecto] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Proyectos] PRIMARY KEY CLUSTERED 
(
	[idProyecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Requests]    Script Date: 17/02/2022 13:00:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requests](
	[idRequest] [int] IDENTITY(1,1) NOT NULL,
	[tituloRequest] [nvarchar](100) NOT NULL,
	[linkTicket] [nvarchar](100) NOT NULL,
	[fecha] [date] NOT NULL,
	[hora] [time](4) NOT NULL,
	[request] [nvarchar](1500) NOT NULL,
	[idPrioridadRequest] [int] NOT NULL,
	[idEstado] [int] NOT NULL,
	[bandera] [bit] NOT NULL,
 CONSTRAINT [PK_Requests] PRIMARY KEY CLUSTERED 
(
	[idRequest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Responses_fix]    Script Date: 17/02/2022 13:00:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Responses_fix](
	[idResponsesFix] [int] IDENTITY(1,1) NOT NULL,
	[idFix] [int] NOT NULL,
	[response] [nvarchar](1500) NOT NULL,
 CONSTRAINT [PK_Responses_fix] PRIMARY KEY CLUSTERED 
(
	[idResponsesFix] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Responses_request]    Script Date: 17/02/2022 13:00:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Responses_request](
	[idResponseRequest] [int] IDENTITY(1,1) NOT NULL,
	[idRequest] [int] NOT NULL,
	[response] [nvarchar](1500) NOT NULL,
 CONSTRAINT [PK_Responses_request] PRIMARY KEY CLUSTERED 
(
	[idResponseRequest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RespuestasAdhoc]    Script Date: 17/02/2022 13:00:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RespuestasAdhoc](
	[idRespuestaAdhoc] [int] IDENTITY(1,1) NOT NULL,
	[idAdhoc] [int] NOT NULL,
	[respuestaAdhoc] [nvarchar](800) NOT NULL,
 CONSTRAINT [PK_RespuestasAdhoc] PRIMARY KEY CLUSTERED 
(
	[idRespuestaAdhoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sprints]    Script Date: 17/02/2022 13:00:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sprints](
	[idSprint] [int] IDENTITY(1,1) NOT NULL,
	[numeroSprint] [float] NOT NULL,
	[versionBuild] [nchar](5) NOT NULL,
	[idProyecto] [int] NOT NULL,
 CONSTRAINT [PK_Sprints] PRIMARY KEY CLUSTERED 
(
	[idSprint] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipos_usuario]    Script Date: 17/02/2022 13:00:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipos_usuario](
	[idTipoUsuario] [int] IDENTITY(1,1) NOT NULL,
	[tipoUsuario] [nchar](15) NOT NULL,
 CONSTRAINT [PK_Tipos_usuario] PRIMARY KEY CLUSTERED 
(
	[idTipoUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 17/02/2022 13:00:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[idTipoUsuario] [int] NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[apellido] [nvarchar](50) NOT NULL,
	[mailGlobant] [nvarchar](50) NOT NULL,
	[clave] [nvarchar](20) NOT NULL,
	[iniciales] [nchar](3) NOT NULL,
	[idProyecto] [int] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios_fixes]    Script Date: 17/02/2022 13:00:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios_fixes](
	[idUsuarioFix] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NULL,
	[idFix] [int] NOT NULL,
 CONSTRAINT [PK_Usuarios_fixes] PRIMARY KEY CLUSTERED 
(
	[idUsuarioFix] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios_requests]    Script Date: 17/02/2022 13:00:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios_requests](
	[idUsuarioRequest] [int] IDENTITY(1,1) NOT NULL,
	[idRequest] [int] NOT NULL,
	[idUsuario] [int] NOT NULL,
 CONSTRAINT [PK_Usuarios_requests] PRIMARY KEY CLUSTERED 
(
	[idUsuarioRequest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Adhoc]  WITH CHECK ADD  CONSTRAINT [FK_Adhoc_Estados] FOREIGN KEY([idEstado])
REFERENCES [dbo].[Estados] ([idEstado])
GO
ALTER TABLE [dbo].[Adhoc] CHECK CONSTRAINT [FK_Adhoc_Estados]
GO
ALTER TABLE [dbo].[Adhoc]  WITH CHECK ADD  CONSTRAINT [FK_Adhoc_Estados_adhoc] FOREIGN KEY([idEstadosAdhoc])
REFERENCES [dbo].[Estados_adhoc] ([idEstadoAdhoc])
GO
ALTER TABLE [dbo].[Adhoc] CHECK CONSTRAINT [FK_Adhoc_Estados_adhoc]
GO
ALTER TABLE [dbo].[Adhoc]  WITH CHECK ADD  CONSTRAINT [FK_Adhoc_Sprints] FOREIGN KEY([idSprint])
REFERENCES [dbo].[Sprints] ([idSprint])
GO
ALTER TABLE [dbo].[Adhoc] CHECK CONSTRAINT [FK_Adhoc_Sprints]
GO
ALTER TABLE [dbo].[Adhoc]  WITH CHECK ADD  CONSTRAINT [FK_Adhoc_Usuarios] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuarios] ([idUsuario])
GO
ALTER TABLE [dbo].[Adhoc] CHECK CONSTRAINT [FK_Adhoc_Usuarios]
GO
ALTER TABLE [dbo].[Fixes]  WITH CHECK ADD  CONSTRAINT [FK_Fixes_Estados] FOREIGN KEY([idEstado])
REFERENCES [dbo].[Estados] ([idEstado])
GO
ALTER TABLE [dbo].[Fixes] CHECK CONSTRAINT [FK_Fixes_Estados]
GO
ALTER TABLE [dbo].[Fixes]  WITH CHECK ADD  CONSTRAINT [FK_Fixes_Prioridades_fix] FOREIGN KEY([idPrioridadFix])
REFERENCES [dbo].[Prioridades_fix] ([idPrioridadFix])
GO
ALTER TABLE [dbo].[Fixes] CHECK CONSTRAINT [FK_Fixes_Prioridades_fix]
GO
ALTER TABLE [dbo].[Fixes]  WITH CHECK ADD  CONSTRAINT [FK_Fixes_Sprints] FOREIGN KEY([idSprint])
REFERENCES [dbo].[Sprints] ([idSprint])
GO
ALTER TABLE [dbo].[Fixes] CHECK CONSTRAINT [FK_Fixes_Sprints]
GO
ALTER TABLE [dbo].[Requests]  WITH CHECK ADD  CONSTRAINT [FK_Requests_Estados] FOREIGN KEY([idEstado])
REFERENCES [dbo].[Estados] ([idEstado])
GO
ALTER TABLE [dbo].[Requests] CHECK CONSTRAINT [FK_Requests_Estados]
GO
ALTER TABLE [dbo].[Requests]  WITH CHECK ADD  CONSTRAINT [FK_Requests_Prioridades_request] FOREIGN KEY([idPrioridadRequest])
REFERENCES [dbo].[Prioridades_request] ([idPriorirdadRequest])
GO
ALTER TABLE [dbo].[Requests] CHECK CONSTRAINT [FK_Requests_Prioridades_request]
GO
ALTER TABLE [dbo].[Responses_fix]  WITH CHECK ADD  CONSTRAINT [FK_Responses_fix_Fixes] FOREIGN KEY([idFix])
REFERENCES [dbo].[Fixes] ([idFix])
GO
ALTER TABLE [dbo].[Responses_fix] CHECK CONSTRAINT [FK_Responses_fix_Fixes]
GO
ALTER TABLE [dbo].[Responses_request]  WITH CHECK ADD  CONSTRAINT [FK_Responses_request_Requests] FOREIGN KEY([idRequest])
REFERENCES [dbo].[Requests] ([idRequest])
GO
ALTER TABLE [dbo].[Responses_request] CHECK CONSTRAINT [FK_Responses_request_Requests]
GO
ALTER TABLE [dbo].[RespuestasAdhoc]  WITH CHECK ADD  CONSTRAINT [FK_RespuestasAdhoc_Adhoc] FOREIGN KEY([idAdhoc])
REFERENCES [dbo].[Adhoc] ([idAdhoc])
GO
ALTER TABLE [dbo].[RespuestasAdhoc] CHECK CONSTRAINT [FK_RespuestasAdhoc_Adhoc]
GO
ALTER TABLE [dbo].[Sprints]  WITH CHECK ADD  CONSTRAINT [FK_Sprints_Proyectos] FOREIGN KEY([idProyecto])
REFERENCES [dbo].[Proyectos] ([idProyecto])
GO
ALTER TABLE [dbo].[Sprints] CHECK CONSTRAINT [FK_Sprints_Proyectos]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Proyectos] FOREIGN KEY([idProyecto])
REFERENCES [dbo].[Proyectos] ([idProyecto])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Proyectos]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Tipos_usuario] FOREIGN KEY([idTipoUsuario])
REFERENCES [dbo].[Tipos_usuario] ([idTipoUsuario])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Tipos_usuario]
GO
ALTER TABLE [dbo].[Usuarios_fixes]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_fixes_Fixes] FOREIGN KEY([idFix])
REFERENCES [dbo].[Fixes] ([idFix])
GO
ALTER TABLE [dbo].[Usuarios_fixes] CHECK CONSTRAINT [FK_Usuarios_fixes_Fixes]
GO
ALTER TABLE [dbo].[Usuarios_fixes]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_fixes_Usuarios] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuarios] ([idUsuario])
GO
ALTER TABLE [dbo].[Usuarios_fixes] CHECK CONSTRAINT [FK_Usuarios_fixes_Usuarios]
GO
ALTER TABLE [dbo].[Usuarios_requests]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_requests_Requests] FOREIGN KEY([idRequest])
REFERENCES [dbo].[Requests] ([idRequest])
GO
ALTER TABLE [dbo].[Usuarios_requests] CHECK CONSTRAINT [FK_Usuarios_requests_Requests]
GO
ALTER TABLE [dbo].[Usuarios_requests]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_requests_Usuarios] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuarios] ([idUsuario])
GO
ALTER TABLE [dbo].[Usuarios_requests] CHECK CONSTRAINT [FK_Usuarios_requests_Usuarios]
GO
USE [master]
GO
ALTER DATABASE [TaskManager_v16] SET  READ_WRITE 
GO
