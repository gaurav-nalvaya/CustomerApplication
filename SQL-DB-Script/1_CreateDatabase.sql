USE [master]
GO

/****** Object:  Database [CustomerApplication]    Script Date: 02-Jul-21 6:46:50 AM ******/
CREATE DATABASE [CustomerApplication]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CustomerApplication', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\CustomerApplication.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CustomerApplication_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\CustomerApplication_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [CustomerApplication] SET COMPATIBILITY_LEVEL = 120
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CustomerApplication].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [CustomerApplication] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [CustomerApplication] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [CustomerApplication] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [CustomerApplication] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [CustomerApplication] SET ARITHABORT OFF 
GO

ALTER DATABASE [CustomerApplication] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [CustomerApplication] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [CustomerApplication] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [CustomerApplication] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [CustomerApplication] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [CustomerApplication] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [CustomerApplication] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [CustomerApplication] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [CustomerApplication] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [CustomerApplication] SET  DISABLE_BROKER 
GO

ALTER DATABASE [CustomerApplication] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [CustomerApplication] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [CustomerApplication] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [CustomerApplication] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [CustomerApplication] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [CustomerApplication] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [CustomerApplication] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [CustomerApplication] SET RECOVERY FULL 
GO

ALTER DATABASE [CustomerApplication] SET  MULTI_USER 
GO

ALTER DATABASE [CustomerApplication] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [CustomerApplication] SET DB_CHAINING OFF 
GO

ALTER DATABASE [CustomerApplication] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [CustomerApplication] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [CustomerApplication] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [CustomerApplication] SET  READ_WRITE 
GO

