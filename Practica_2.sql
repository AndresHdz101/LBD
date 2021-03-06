USE [practica_2]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 28/04/2019 13:34:50 ******/
DROP TABLE [dbo].[Materia]
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 28/04/2019 13:34:50 ******/
DROP TABLE [dbo].[Maestro]
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 28/04/2019 13:34:50 ******/
DROP TABLE [dbo].[Grupo]
GO
/****** Object:  Table [dbo].[Facultad]    Script Date: 28/04/2019 13:34:50 ******/
DROP TABLE [dbo].[Facultad]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 28/04/2019 13:34:50 ******/
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 28/04/2019 13:34:50 ******/
DROP TABLE [dbo].[Departamento]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 28/04/2019 13:34:50 ******/
DROP TABLE [dbo].[Carrera]
GO
/****** Object:  Table [dbo].[Calificacion]    Script Date: 28/04/2019 13:34:50 ******/
DROP TABLE [dbo].[Calificacion]
GO
/****** Object:  Table [dbo].[Becarios]    Script Date: 28/04/2019 13:34:50 ******/
DROP TABLE [dbo].[Becarios]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 28/04/2019 13:34:50 ******/
DROP TABLE [dbo].[Alumnos]
GO
USE [master]
GO
/****** Object:  Database [practica_2]    Script Date: 28/04/2019 13:34:50 ******/
DROP DATABASE [practica_2]
GO
/****** Object:  Database [practica_2]    Script Date: 28/04/2019 13:34:50 ******/
CREATE DATABASE [practica_2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'practica_2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SERVIDORANDRES\MSSQL\DATA\practica_2.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'practica_2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SERVIDORANDRES\MSSQL\DATA\practica_2_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [practica_2] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [practica_2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [practica_2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [practica_2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [practica_2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [practica_2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [practica_2] SET ARITHABORT OFF 
GO
ALTER DATABASE [practica_2] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [practica_2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [practica_2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [practica_2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [practica_2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [practica_2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [practica_2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [practica_2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [practica_2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [practica_2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [practica_2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [practica_2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [practica_2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [practica_2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [practica_2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [practica_2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [practica_2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [practica_2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [practica_2] SET  MULTI_USER 
GO
ALTER DATABASE [practica_2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [practica_2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [practica_2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [practica_2] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [practica_2] SET DELAYED_DURABILITY = DISABLED 
GO
USE [practica_2]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 28/04/2019 13:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumnos](
	[id_alumnos] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](40) NULL,
	[apellido_paterno] [varchar](40) NULL,
	[apellido_materno] [varchar](40) NULL,
	[nombre_completo]  AS (((([nombre]+' ')+[apellido_paterno])+' ')+[apellido_materno])
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Becarios]    Script Date: 28/04/2019 13:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Becarios](
	[id_becario] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](40) NULL,
	[apellido_paterno] [varchar](40) NULL,
	[apellido_materno] [varchar](40) NULL,
	[nombre_completo]  AS (((([nombre]+' ')+[apellido_paterno])+' ')+[apellido_materno])
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Calificacion]    Script Date: 28/04/2019 13:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calificacion](
	[id_calificacion] [int] IDENTITY(1,1) NOT NULL,
	[parcial_1] [int] NULL,
	[parcial_2] [int] NULL,
	[promedio]  AS (([parcial_1]+[parcial_2])/(2))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 28/04/2019 13:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Carrera](
	[id_carrera] [int] NOT NULL,
	[nombre_carrera] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 28/04/2019 13:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departamento](
	[id_departamento] [int] NOT NULL,
	[nombre_departamento] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 28/04/2019 13:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[id_empleado] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](40) NULL,
	[apellido_paterno] [varchar](40) NULL,
	[apellido_materno] [varchar](40) NULL,
	[fecha_ingreso] [date] NULL,
	[nombre_completo]  AS (((([nombre]+' ')+[apellido_paterno])+' ')+[apellido_materno])
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Facultad]    Script Date: 28/04/2019 13:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Facultad](
	[id_facultad] [int] NOT NULL,
	[nombre_facultad] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 28/04/2019 13:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupo](
	[id_grupo] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 28/04/2019 13:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Maestro](
	[id_maestro] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](40) NULL,
	[apellido_paterno] [varchar](40) NULL,
	[apellido_materno] [varchar](40) NULL,
	[nombre_completo]  AS (((([nombre]+' ')+[apellido_paterno])+' ')+[apellido_materno])
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 28/04/2019 13:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Materia](
	[id_materia] [int] NOT NULL,
	[nombre_materia] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Alumnos] ON 

INSERT [dbo].[Alumnos] ([id_alumnos], [nombre], [apellido_paterno], [apellido_materno]) VALUES (1, N'Andres', N'Hernandez', N'Yañez')
SET IDENTITY_INSERT [dbo].[Alumnos] OFF
SET IDENTITY_INSERT [dbo].[Becarios] ON 

INSERT [dbo].[Becarios] ([id_becario], [nombre], [apellido_paterno], [apellido_materno]) VALUES (1, N'Saul', N'Gomez', N'Davila')
SET IDENTITY_INSERT [dbo].[Becarios] OFF
SET IDENTITY_INSERT [dbo].[Calificacion] ON 

INSERT [dbo].[Calificacion] ([id_calificacion], [parcial_1], [parcial_2]) VALUES (1, 75, 90)
SET IDENTITY_INSERT [dbo].[Calificacion] OFF
SET IDENTITY_INSERT [dbo].[Empleado] ON 

INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso]) VALUES (2, N'Jose', N'Ornelas', N'Lino', CAST(N'2016-02-23' AS Date))
SET IDENTITY_INSERT [dbo].[Empleado] OFF
SET IDENTITY_INSERT [dbo].[Maestro] ON 

INSERT [dbo].[Maestro] ([id_maestro], [nombre], [apellido_paterno], [apellido_materno]) VALUES (1, N'Miguel', N'Hernandez', N'Perez')
SET IDENTITY_INSERT [dbo].[Maestro] OFF
USE [master]
GO
ALTER DATABASE [practica_2] SET  READ_WRITE 
GO
