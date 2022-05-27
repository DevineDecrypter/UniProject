USE [master]
GO
/****** Object:  Database [Safaroo]    Script Date: 12/27/2021 01:36:36 ق.ظ ******/
CREATE DATABASE [Safaroo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Safaroo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Safaroo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Safaroo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Safaroo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Safaroo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Safaroo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Safaroo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Safaroo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Safaroo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Safaroo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Safaroo] SET ARITHABORT OFF 
GO
ALTER DATABASE [Safaroo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Safaroo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Safaroo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Safaroo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Safaroo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Safaroo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Safaroo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Safaroo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Safaroo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Safaroo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Safaroo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Safaroo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Safaroo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Safaroo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Safaroo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Safaroo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Safaroo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Safaroo] SET RECOVERY FULL 
GO
ALTER DATABASE [Safaroo] SET  MULTI_USER 
GO
ALTER DATABASE [Safaroo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Safaroo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Safaroo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Safaroo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Safaroo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Safaroo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Safaroo', N'ON'
GO
ALTER DATABASE [Safaroo] SET QUERY_STORE = OFF
GO
USE [Safaroo]
GO
/****** Object:  Table [dbo].[Airport]    Script Date: 12/27/2021 01:36:37 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Airport](
	[FlightID] [nvarchar](50) NOT NULL,
	[FlightName] [nchar](10) NOT NULL,
	[FlightType] [nchar](10) NOT NULL,
	[SourceID] [int] NOT NULL,
	[DestinationID] [int] NOT NULL,
 CONSTRAINT [PK_Airport] PRIMARY KEY CLUSTERED 
(
	[FlightID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 12/27/2021 01:36:37 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[TourismID] [int] NOT NULL,
	[TourismIName] [nchar](10) NOT NULL,
	[DestinationID] [int] NOT NULL,
	[Picture] [image] NOT NULL,
	[Article] [nvarchar](max) NOT NULL,
	[AuthorID] [nchar](10) NOT NULL,
	[AuthorName] [nchar](10) NOT NULL,
	[Date] [date] NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[TourismID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 12/27/2021 01:36:37 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[NationalID] [int] NOT NULL,
	[CustomerName] [nvarchar](50) NOT NULL,
	[Tell] [int] NOT NULL,
 CONSTRAINT [PK_Customer_1] PRIMARY KEY CLUSTERED 
(
	[NationalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerTicket]    Script Date: 12/27/2021 01:36:37 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerTicket](
	[CustomerID] [int] NOT NULL,
	[CustomerName] [nchar](10) NOT NULL,
	[NationalID] [int] NOT NULL,
	[Tell] [int] NOT NULL,
	[SourceID] [int] NOT NULL,
	[DestinationID] [int] NOT NULL,
	[HotelID] [int] NOT NULL,
	[ResidenceID] [int] NOT NULL,
	[TypeOfTransportID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Destination]    Script Date: 12/27/2021 01:36:37 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Destination](
	[DestinationID] [int] NOT NULL,
	[Destination] [nvarchar](50) NOT NULL,
	[HotelID] [int] NOT NULL,
	[TypeOfTransport] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Destination] PRIMARY KEY CLUSTERED 
(
	[DestinationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 12/27/2021 01:36:37 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel](
	[HotelID] [int] NOT NULL,
	[HotelName] [nvarchar](50) NOT NULL,
	[NumberCity] [int] NOT NULL,
 CONSTRAINT [PK_Hotel] PRIMARY KEY CLUSTERED 
(
	[HotelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mainheder]    Script Date: 12/27/2021 01:36:37 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mainheder](
	[AuthorID] [int] NOT NULL,
	[AuthorName] [nchar](10) NOT NULL,
	[TourismID] [int] NOT NULL,
	[NumberOfWork] [int] NOT NULL,
	[Effects] [nchar](10) NOT NULL,
	[Photo] [image] NOT NULL,
 CONSTRAINT [PK_Mainheder] PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Residence]    Script Date: 12/27/2021 01:36:37 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Residence](
	[ResidenceID] [int] NOT NULL,
	[ResidenceName] [nvarchar](50) NOT NULL,
	[NumberCity] [int] NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Residence] PRIMARY KEY CLUSTERED 
(
	[ResidenceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Source]    Script Date: 12/27/2021 01:36:37 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Source](
	[SourceID] [int] NOT NULL,
	[SourceName] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Source] PRIMARY KEY CLUSTERED 
(
	[SourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Terminal]    Script Date: 12/27/2021 01:36:37 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Terminal](
	[BusID] [nvarchar](50) NOT NULL,
	[BusName] [nchar](10) NOT NULL,
	[TypeOfBus] [nchar](10) NOT NULL,
	[SourceID] [int] NOT NULL,
	[DestinationID] [int] NOT NULL,
 CONSTRAINT [PK_Terminal] PRIMARY KEY CLUSTERED 
(
	[BusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Train]    Script Date: 12/27/2021 01:36:37 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Train](
	[TrainID] [nvarchar](50) NOT NULL,
	[TrainName] [nchar](10) NOT NULL,
	[TypeOfTrain] [nchar](10) NOT NULL,
	[SourceID] [int] NOT NULL,
	[DestinationID] [int] NOT NULL,
 CONSTRAINT [PK_Train] PRIMARY KEY CLUSTERED 
(
	[TrainID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TravelTour]    Script Date: 12/27/2021 01:36:37 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TravelTour](
	[TourID] [int] NOT NULL,
	[SourceID] [int] NOT NULL,
	[Origin] [nchar](10) NOT NULL,
	[DestinationID] [int] NOT NULL,
	[ResidenceID] [int] NOT NULL,
	[TypeOfTransportID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TravelTour] PRIMARY KEY CLUSTERED 
(
	[TourID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfTransport]    Script Date: 12/27/2021 01:36:37 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfTransport](
	[TypeOfTransportID] [nvarchar](50) NOT NULL,
	[BusID] [nvarchar](50) NOT NULL,
	[TrainID] [nvarchar](50) NOT NULL,
	[FlightID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypeOfTransport] PRIMARY KEY CLUSTERED 
(
	[TypeOfTransportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Airport] ([FlightID], [FlightName], [FlightType], [SourceID], [DestinationID]) VALUES (N'1100', N'ata       ', N'boeing    ', 1, 10)
GO
INSERT [dbo].[Airport] ([FlightID], [FlightName], [FlightType], [SourceID], [DestinationID]) VALUES (N'1200', N'ata       ', N'boeing    ', 10, 28)
GO
INSERT [dbo].[Airport] ([FlightID], [FlightName], [FlightType], [SourceID], [DestinationID]) VALUES (N'1300', N'ata       ', N'airbus    ', 28, 21)
GO
INSERT [dbo].[Airport] ([FlightID], [FlightName], [FlightType], [SourceID], [DestinationID]) VALUES (N'1400', N'varesh    ', N'airbus    ', 10, 8)
GO
INSERT [dbo].[Airport] ([FlightID], [FlightName], [FlightType], [SourceID], [DestinationID]) VALUES (N'1500', N'aseman    ', N'airbus    ', 10, 21)
GO
INSERT [dbo].[Airport] ([FlightID], [FlightName], [FlightType], [SourceID], [DestinationID]) VALUES (N'1600', N'ata       ', N'boeing    ', 10, 1)
GO
INSERT [dbo].[Customer] ([NationalID], [CustomerName], [Tell]) VALUES (1232456, N'Ahmad', 912585994)
GO
INSERT [dbo].[Customer] ([NationalID], [CustomerName], [Tell]) VALUES (14785236, N'Hadi', 98456321)
GO
INSERT [dbo].[Customer] ([NationalID], [CustomerName], [Tell]) VALUES (25843695, N'Ehsan', 990810684)
GO
INSERT [dbo].[Customer] ([NationalID], [CustomerName], [Tell]) VALUES (32145686, N'samaneh', 90201874)
GO
INSERT [dbo].[CustomerTicket] ([CustomerID], [CustomerName], [NationalID], [Tell], [SourceID], [DestinationID], [HotelID], [ResidenceID], [TypeOfTransportID]) VALUES (850, N'Hadi      ', 14785236, 98456321, 1, 1, 130, 554, N'700')
GO
INSERT [dbo].[Destination] ([DestinationID], [Destination], [HotelID], [TypeOfTransport]) VALUES (1, N'kish', 130, N'Airplane')
GO
INSERT [dbo].[Destination] ([DestinationID], [Destination], [HotelID], [TypeOfTransport]) VALUES (10, N'tehran', 125, N'otobos')
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (100, N'Almas2', 28)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (101, N'MadineAlreza', 28)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (102, N'MojalalDarvish', 28)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (103, N'Parsis', 28)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (104, N'AlmasNovin', 28)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (105, N'Almas', 28)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (106, N'Kiyana', 28)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (107, N'NeginPasrgad', 28)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (108, N'Javad', 28)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (109, N'Sarina', 28)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (110, N'SeeNor', 28)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (111, N'Pardisan', 28)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (112, N'Homa2', 28)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (113, N'QasreTalaee', 28)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (114, N'InternationalQasr', 28)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (115, N'Iran', 28)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (116, N'Aban', 28)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (117, N'Homa', 21)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (118, N'Talar', 21)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (119, N'TakhtJamshid', 21)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (120, N'Zandiy', 21)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (121, N'Chamran', 21)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (122, N'Ariyana', 21)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (123, N'Hafez', 21)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (124, N'Atana', 10)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (125, N'Homa', 10)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (126, N'Aran', 10)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (127, N'Bahar', 10)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (128, N'Sadaf', 1)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (129, N'Iran', 1)
GO
INSERT [dbo].[Hotel] ([HotelID], [HotelName], [NumberCity]) VALUES (130, N'Toranj', 1)
GO
INSERT [dbo].[Residence] ([ResidenceID], [ResidenceName], [NumberCity], [Address]) VALUES (554, N'kish', 1, N'kish')
GO
INSERT [dbo].[Source] ([SourceID], [SourceName]) VALUES (1, N'kish      ')
GO
INSERT [dbo].[Source] ([SourceID], [SourceName]) VALUES (8, N'yazd      ')
GO
INSERT [dbo].[Source] ([SourceID], [SourceName]) VALUES (9, N'mashhad   ')
GO
INSERT [dbo].[Source] ([SourceID], [SourceName]) VALUES (10, N'tehran    ')
GO
INSERT [dbo].[Source] ([SourceID], [SourceName]) VALUES (21, N'shiraz    ')
GO
INSERT [dbo].[Source] ([SourceID], [SourceName]) VALUES (28, N'mashhad   ')
GO
INSERT [dbo].[Terminal] ([BusID], [BusName], [TypeOfBus], [SourceID], [DestinationID]) VALUES (N'500', N'asreiran  ', N'vip       ', 28, 10)
GO
INSERT [dbo].[Terminal] ([BusID], [BusName], [TypeOfBus], [SourceID], [DestinationID]) VALUES (N'501', N'iranalvad ', N'vip       ', 10, 21)
GO
INSERT [dbo].[Terminal] ([BusID], [BusName], [TypeOfBus], [SourceID], [DestinationID]) VALUES (N'502', N'sirosafar ', N'vip       ', 21, 10)
GO
INSERT [dbo].[Terminal] ([BusID], [BusName], [TypeOfBus], [SourceID], [DestinationID]) VALUES (N'503', N'asreiran  ', N'vip       ', 28, 21)
GO
INSERT [dbo].[Terminal] ([BusID], [BusName], [TypeOfBus], [SourceID], [DestinationID]) VALUES (N'504', N'asareiran ', N'vip       ', 10, 28)
GO
INSERT [dbo].[Terminal] ([BusID], [BusName], [TypeOfBus], [SourceID], [DestinationID]) VALUES (N'505', N'sirosafar ', N'vip       ', 21, 28)
GO
INSERT [dbo].[Terminal] ([BusID], [BusName], [TypeOfBus], [SourceID], [DestinationID]) VALUES (N'506', N'sirosafar ', N'vip       ', 8, 10)
GO
INSERT [dbo].[Terminal] ([BusID], [BusName], [TypeOfBus], [SourceID], [DestinationID]) VALUES (N'507', N'sirosafar ', N'vip       ', 8, 21)
GO
INSERT [dbo].[Terminal] ([BusID], [BusName], [TypeOfBus], [SourceID], [DestinationID]) VALUES (N'508', N'sirosafar ', N'vip       ', 8, 28)
GO
INSERT [dbo].[Train] ([TrainID], [TrainName], [TypeOfTrain], [SourceID], [DestinationID]) VALUES (N'800', N'fadak     ', N'cope      ', 28, 10)
GO
INSERT [dbo].[Train] ([TrainID], [TrainName], [TypeOfTrain], [SourceID], [DestinationID]) VALUES (N'801', N'fadak     ', N'cope      ', 28, 8)
GO
INSERT [dbo].[Train] ([TrainID], [TrainName], [TypeOfTrain], [SourceID], [DestinationID]) VALUES (N'802', N'fadak     ', N'cope      ', 28, 21)
GO
INSERT [dbo].[Train] ([TrainID], [TrainName], [TypeOfTrain], [SourceID], [DestinationID]) VALUES (N'803', N'reja      ', N'otobosi   ', 8, 10)
GO
INSERT [dbo].[Train] ([TrainID], [TrainName], [TypeOfTrain], [SourceID], [DestinationID]) VALUES (N'804', N'reja      ', N'otobosi   ', 8, 28)
GO
INSERT [dbo].[Train] ([TrainID], [TrainName], [TypeOfTrain], [SourceID], [DestinationID]) VALUES (N'805', N'reja      ', N'otobosi   ', 8, 21)
GO
INSERT [dbo].[Train] ([TrainID], [TrainName], [TypeOfTrain], [SourceID], [DestinationID]) VALUES (N'806', N'hastiya   ', N'cope      ', 10, 28)
GO
INSERT [dbo].[Train] ([TrainID], [TrainName], [TypeOfTrain], [SourceID], [DestinationID]) VALUES (N'807', N'hastiya   ', N'cope      ', 10, 8)
GO
INSERT [dbo].[Train] ([TrainID], [TrainName], [TypeOfTrain], [SourceID], [DestinationID]) VALUES (N'808', N'hastiya   ', N'cope      ', 10, 21)
GO
INSERT [dbo].[TypeOfTransport] ([TypeOfTransportID], [BusID], [TrainID], [FlightID]) VALUES (N'700', N'500', N'800', N'1600')
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Destination] FOREIGN KEY([DestinationID])
REFERENCES [dbo].[Destination] ([DestinationID])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_Destination]
GO
ALTER TABLE [dbo].[CustomerTicket]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Destination] FOREIGN KEY([DestinationID])
REFERENCES [dbo].[Destination] ([DestinationID])
GO
ALTER TABLE [dbo].[CustomerTicket] CHECK CONSTRAINT [FK_Customer_Destination]
GO
ALTER TABLE [dbo].[CustomerTicket]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Hotel] FOREIGN KEY([HotelID])
REFERENCES [dbo].[Hotel] ([HotelID])
GO
ALTER TABLE [dbo].[CustomerTicket] CHECK CONSTRAINT [FK_Customer_Hotel]
GO
ALTER TABLE [dbo].[CustomerTicket]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Source] FOREIGN KEY([SourceID])
REFERENCES [dbo].[Source] ([SourceID])
GO
ALTER TABLE [dbo].[CustomerTicket] CHECK CONSTRAINT [FK_Customer_Source]
GO
ALTER TABLE [dbo].[CustomerTicket]  WITH CHECK ADD  CONSTRAINT [FK_CustomerTicket_Customer] FOREIGN KEY([NationalID])
REFERENCES [dbo].[Customer] ([NationalID])
GO
ALTER TABLE [dbo].[CustomerTicket] CHECK CONSTRAINT [FK_CustomerTicket_Customer]
GO
ALTER TABLE [dbo].[CustomerTicket]  WITH CHECK ADD  CONSTRAINT [FK_CustomerTicket_Residence] FOREIGN KEY([ResidenceID])
REFERENCES [dbo].[Residence] ([ResidenceID])
GO
ALTER TABLE [dbo].[CustomerTicket] CHECK CONSTRAINT [FK_CustomerTicket_Residence]
GO
ALTER TABLE [dbo].[CustomerTicket]  WITH CHECK ADD  CONSTRAINT [FK_CustomerTicket_TypeOfTransport] FOREIGN KEY([TypeOfTransportID])
REFERENCES [dbo].[TypeOfTransport] ([TypeOfTransportID])
GO
ALTER TABLE [dbo].[CustomerTicket] CHECK CONSTRAINT [FK_CustomerTicket_TypeOfTransport]
GO
ALTER TABLE [dbo].[Mainheder]  WITH CHECK ADD  CONSTRAINT [FK_Mainheder_Blog] FOREIGN KEY([TourismID])
REFERENCES [dbo].[Blog] ([TourismID])
GO
ALTER TABLE [dbo].[Mainheder] CHECK CONSTRAINT [FK_Mainheder_Blog]
GO
ALTER TABLE [dbo].[TravelTour]  WITH CHECK ADD  CONSTRAINT [FK_TravelTour_Destination] FOREIGN KEY([DestinationID])
REFERENCES [dbo].[Destination] ([DestinationID])
GO
ALTER TABLE [dbo].[TravelTour] CHECK CONSTRAINT [FK_TravelTour_Destination]
GO
ALTER TABLE [dbo].[TravelTour]  WITH CHECK ADD  CONSTRAINT [FK_TravelTour_Residence] FOREIGN KEY([ResidenceID])
REFERENCES [dbo].[Residence] ([ResidenceID])
GO
ALTER TABLE [dbo].[TravelTour] CHECK CONSTRAINT [FK_TravelTour_Residence]
GO
ALTER TABLE [dbo].[TravelTour]  WITH CHECK ADD  CONSTRAINT [FK_TravelTour_TypeOfTransport] FOREIGN KEY([TypeOfTransportID])
REFERENCES [dbo].[TypeOfTransport] ([TypeOfTransportID])
GO
ALTER TABLE [dbo].[TravelTour] CHECK CONSTRAINT [FK_TravelTour_TypeOfTransport]
GO
ALTER TABLE [dbo].[TypeOfTransport]  WITH CHECK ADD  CONSTRAINT [FK_TypeOfTransport_Airport] FOREIGN KEY([FlightID])
REFERENCES [dbo].[Airport] ([FlightID])
GO
ALTER TABLE [dbo].[TypeOfTransport] CHECK CONSTRAINT [FK_TypeOfTransport_Airport]
GO
ALTER TABLE [dbo].[TypeOfTransport]  WITH CHECK ADD  CONSTRAINT [FK_TypeOfTransport_Terminal] FOREIGN KEY([BusID])
REFERENCES [dbo].[Terminal] ([BusID])
GO
ALTER TABLE [dbo].[TypeOfTransport] CHECK CONSTRAINT [FK_TypeOfTransport_Terminal]
GO
ALTER TABLE [dbo].[TypeOfTransport]  WITH CHECK ADD  CONSTRAINT [FK_TypeOfTransport_Train] FOREIGN KEY([TrainID])
REFERENCES [dbo].[Train] ([TrainID])
GO
ALTER TABLE [dbo].[TypeOfTransport] CHECK CONSTRAINT [FK_TypeOfTransport_Train]
GO
USE [master]
GO
ALTER DATABASE [Safaroo] SET  READ_WRITE 
GO
