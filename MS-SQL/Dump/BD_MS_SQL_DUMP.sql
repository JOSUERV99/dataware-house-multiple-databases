USE [master]
GO
/****** Object:  Database [DB_MS_SQL]    Script Date: 20/1/2021 00:31:32 ******/
CREATE DATABASE [DB_MS_SQL]
GO
ALTER DATABASE [DB_MS_SQL] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_MS_SQL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_MS_SQL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_MS_SQL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_MS_SQL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_MS_SQL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_MS_SQL] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_MS_SQL] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_MS_SQL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_MS_SQL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_MS_SQL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_MS_SQL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_MS_SQL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_MS_SQL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_MS_SQL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_MS_SQL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_MS_SQL] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB_MS_SQL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_MS_SQL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_MS_SQL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_MS_SQL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_MS_SQL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_MS_SQL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_MS_SQL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_MS_SQL] SET RECOVERY FULL 
GO
ALTER DATABASE [DB_MS_SQL] SET  MULTI_USER 
GO
ALTER DATABASE [DB_MS_SQL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_MS_SQL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_MS_SQL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_MS_SQL] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_MS_SQL] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DB_MS_SQL', N'ON'
GO
ALTER DATABASE [DB_MS_SQL] SET QUERY_STORE = OFF
GO
USE [DB_MS_SQL]
GO
/****** Object:  Table [dbo].[FileLoadStatus]    Script Date: 20/1/2021 00:31:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileLoadStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [varchar](100) NULL,
	[LoadDateTime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VENTAS_PROGRA2]    Script Date: 20/1/2021 00:31:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENTAS_PROGRA2](
	[Factura] [varchar](50) NULL,
	[Fecha] [date] NULL,
	[FechaVencimiento] [date] NULL,
	[Cliente] [varchar](50) NULL,
	[Producto] [varchar](50) NULL,
	[Cantidad] [decimal](20, 4) NULL,
	[Moneda] [varchar](50) NULL,
	[Precio] [decimal](20, 4) NULL,
	[Total] [decimal](20, 4) NULL,
	[Almacen] [varchar](50) NULL,
	[Vendedor] [varchar](50) NULL,
	[TotalUSD] [decimal](20, 4) NULL,
	[Impuesto] [decimal](20, 4) NULL,
	[ImpuestoUSD] [decimal](20, 4) NULL,
	[TipoDeCambio] [decimal](20, 4) NULL,
	[Ganancia] [decimal](20, 4) NULL,
	[GananciaUSD] [decimal](20, 4) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FileLoadStatus] ADD  DEFAULT (getdate()) FOR [LoadDateTime]
GO
USE [master]
GO
ALTER DATABASE [DB_MS_SQL] SET  READ_WRITE 
GO
