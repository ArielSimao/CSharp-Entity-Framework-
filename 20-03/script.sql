USE [cadastros]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 20/03/2018 22:08:48 ******/
DROP TABLE [dbo].[Usuario]
GO
USE [master]
GO
/****** Object:  Database [cadastros]    Script Date: 20/03/2018 22:08:48 ******/
DROP DATABASE [cadastros]
GO
/****** Object:  Database [cadastros]    Script Date: 20/03/2018 22:08:48 ******/
CREATE DATABASE [cadastros]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'cadastros', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\cadastros.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'cadastros_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\cadastros_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [cadastros] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [cadastros].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [cadastros] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [cadastros] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [cadastros] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [cadastros] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [cadastros] SET ARITHABORT OFF 
GO
ALTER DATABASE [cadastros] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [cadastros] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [cadastros] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [cadastros] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [cadastros] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [cadastros] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [cadastros] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [cadastros] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [cadastros] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [cadastros] SET  DISABLE_BROKER 
GO
ALTER DATABASE [cadastros] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [cadastros] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [cadastros] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [cadastros] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [cadastros] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [cadastros] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [cadastros] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [cadastros] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [cadastros] SET  MULTI_USER 
GO
ALTER DATABASE [cadastros] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [cadastros] SET DB_CHAINING OFF 
GO
ALTER DATABASE [cadastros] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [cadastros] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [cadastros] SET DELAYED_DURABILITY = DISABLED 
GO
USE [cadastros]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 20/03/2018 22:08:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[senha] [varchar](10) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([id], [nome], [email], [senha]) VALUES (1, N'Genivaldo', N'genivaldo@hotmail.com', N'123')
INSERT [dbo].[Usuario] ([id], [nome], [email], [senha]) VALUES (2, N'Erick', N'erick@gmail.com', N'345')
INSERT [dbo].[Usuario] ([id], [nome], [email], [senha]) VALUES (3, N'Mauricio das Neves', N'mauricio@hotmail.com', N'3265')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
USE [master]
GO
ALTER DATABASE [cadastros] SET  READ_WRITE 
GO
