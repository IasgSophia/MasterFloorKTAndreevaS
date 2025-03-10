USE [master]
GO
/****** Object:  Database [database]    Script Date: 28.02.2025 14:27:28 ******/
CREATE DATABASE [database]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'database', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\database.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'database_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\database_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [database] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [database].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [database] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [database] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [database] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [database] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [database] SET ARITHABORT OFF 
GO
ALTER DATABASE [database] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [database] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [database] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [database] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [database] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [database] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [database] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [database] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [database] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [database] SET  DISABLE_BROKER 
GO
ALTER DATABASE [database] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [database] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [database] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [database] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [database] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [database] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [database] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [database] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [database] SET  MULTI_USER 
GO
ALTER DATABASE [database] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [database] SET DB_CHAINING OFF 
GO
ALTER DATABASE [database] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [database] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [database] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [database] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [database] SET QUERY_STORE = OFF
GO
USE [database]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 28.02.2025 14:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Area](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Area] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 28.02.2025 14:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House]    Script Date: 28.02.2025 14:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_House] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Index]    Script Date: 28.02.2025 14:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Index](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Index] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 28.02.2025 14:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[Id] [int] NOT NULL,
	[MaterialType] [nvarchar](50) NOT NULL,
	[PercentWithoutMistakes] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_MaterialType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner]    Script Date: 28.02.2025 14:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner](
	[Id] [int] NOT NULL,
	[PartnerTypeId] [int] NOT NULL,
	[PartnerNameId] [int] NOT NULL,
	[DirectorLastName] [nvarchar](100) NOT NULL,
	[DirectorFirstName] [nvarchar](100) NOT NULL,
	[DirectorMiddleName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[PartnerPhone] [nvarchar](100) NOT NULL,
	[PartnerAdressId] [int] NOT NULL,
	[INN] [nvarchar](100) NOT NULL,
	[Rating] [int] NOT NULL,
 CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerAdress]    Script Date: 28.02.2025 14:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerAdress](
	[Id] [int] NOT NULL,
	[IndexId] [int] NOT NULL,
	[AreaId] [int] NOT NULL,
	[CityId] [int] NOT NULL,
	[StreetId] [int] NOT NULL,
	[HouseId] [int] NOT NULL,
 CONSTRAINT [PK_PartnerAdress] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerName]    Script Date: 28.02.2025 14:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerName](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PartnerName] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerProducts]    Script Date: 28.02.2025 14:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerProducts](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](300) NOT NULL,
	[PartnerNameId] [int] NOT NULL,
	[ProductAmount] [int] NOT NULL,
	[SellDate] [datetime] NOT NULL,
 CONSTRAINT [PK_PartnerProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerType]    Script Date: 28.02.2025 14:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerType](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PartnerType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 28.02.2025 14:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] NOT NULL,
	[ProductTypeId] [int] NOT NULL,
	[PartnerProductsId] [int] NOT NULL,
	[Article] [int] NOT NULL,
	[MinCostForPartner] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 28.02.2025 14:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Percent] [decimal](5, 2) NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 28.02.2025 14:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Area] ([Id], [Name]) VALUES (1, N'Архангельская область')
INSERT [dbo].[Area] ([Id], [Name]) VALUES (2, N'Белгородская область')
INSERT [dbo].[Area] ([Id], [Name]) VALUES (3, N'Кемеровская область')
INSERT [dbo].[Area] ([Id], [Name]) VALUES (4, N'Ленинградская область')
INSERT [dbo].[Area] ([Id], [Name]) VALUES (5, N'Московская область')
GO
INSERT [dbo].[City] ([Id], [Name]) VALUES (1, N'город Приморск')
INSERT [dbo].[City] ([Id], [Name]) VALUES (2, N'город Реутов')
INSERT [dbo].[City] ([Id], [Name]) VALUES (3, N'город Северодвинск')
INSERT [dbo].[City] ([Id], [Name]) VALUES (4, N'город Старый Оскол')
INSERT [dbo].[City] ([Id], [Name]) VALUES (5, N'город Юрга')
GO
INSERT [dbo].[House] ([Id], [Name]) VALUES (1, N'15')
INSERT [dbo].[House] ([Id], [Name]) VALUES (2, N'18')
INSERT [dbo].[House] ([Id], [Name]) VALUES (3, N'21')
INSERT [dbo].[House] ([Id], [Name]) VALUES (4, N'51')
INSERT [dbo].[House] ([Id], [Name]) VALUES (5, N'122')
GO
INSERT [dbo].[Index] ([Id], [Name]) VALUES (1, N'143960')
INSERT [dbo].[Index] ([Id], [Name]) VALUES (2, N'164500')
INSERT [dbo].[Index] ([Id], [Name]) VALUES (3, N'188910')
INSERT [dbo].[Index] ([Id], [Name]) VALUES (4, N'309500')
INSERT [dbo].[Index] ([Id], [Name]) VALUES (5, N'652050')
GO
INSERT [dbo].[MaterialType] ([Id], [MaterialType], [PercentWithoutMistakes]) VALUES (1, N'Тип материала 1', CAST(0.10 AS Decimal(10, 2)))
INSERT [dbo].[MaterialType] ([Id], [MaterialType], [PercentWithoutMistakes]) VALUES (2, N'Тип материала 2', CAST(0.95 AS Decimal(10, 2)))
INSERT [dbo].[MaterialType] ([Id], [MaterialType], [PercentWithoutMistakes]) VALUES (3, N'Тип материала 3', CAST(0.28 AS Decimal(10, 2)))
INSERT [dbo].[MaterialType] ([Id], [MaterialType], [PercentWithoutMistakes]) VALUES (4, N'Тип материала 4', CAST(0.55 AS Decimal(10, 2)))
INSERT [dbo].[MaterialType] ([Id], [MaterialType], [PercentWithoutMistakes]) VALUES (5, N'Тип материала 5', CAST(0.34 AS Decimal(10, 2)))
GO
INSERT [dbo].[Partner] ([Id], [PartnerTypeId], [PartnerNameId], [DirectorLastName], [DirectorFirstName], [DirectorMiddleName], [Email], [PartnerPhone], [PartnerAdressId], [INN], [Rating]) VALUES (1, 1, 1, N'Иванова', N'Александра', N'Ивановна', N'aleksandraivanova@ml.ru', N'+7 493 123 45 67', 1, N'2222455179', 7)
INSERT [dbo].[Partner] ([Id], [PartnerTypeId], [PartnerNameId], [DirectorLastName], [DirectorFirstName], [DirectorMiddleName], [Email], [PartnerPhone], [PartnerAdressId], [INN], [Rating]) VALUES (2, 3, 3, N'Петров', N'Василий', N'Петрович', N'vppetrov@vl.ru', N'+7 987 123 56 78', 2, N'3333888520', 7)
INSERT [dbo].[Partner] ([Id], [PartnerTypeId], [PartnerNameId], [DirectorLastName], [DirectorFirstName], [DirectorMiddleName], [Email], [PartnerPhone], [PartnerAdressId], [INN], [Rating]) VALUES (3, 4, 5, N'Соловьев', N'Андрей', N'Николаевич', N'ansolovev@st.ru', N'+7 812 223 32 00', 3, N'4440391035', 7)
INSERT [dbo].[Partner] ([Id], [PartnerTypeId], [PartnerNameId], [DirectorLastName], [DirectorFirstName], [DirectorMiddleName], [Email], [PartnerPhone], [PartnerAdressId], [INN], [Rating]) VALUES (4, 2, 4, N'Воробьева', N'Екатерина', N'Валерьевна', N'ekaterina.vorobeva@ml.ru', N'+7 444 222 33 11', 4, N'1111520857', 5)
INSERT [dbo].[Partner] ([Id], [PartnerTypeId], [PartnerNameId], [DirectorLastName], [DirectorFirstName], [DirectorMiddleName], [Email], [PartnerPhone], [PartnerAdressId], [INN], [Rating]) VALUES (5, 1, 2, N'Степанов', N'Степан', N'Сергеевич', N'stepanov@stepan.ru', N'+7 912 888 33 33', 5, N'5552431140', 10)
GO
INSERT [dbo].[PartnerAdress] ([Id], [IndexId], [AreaId], [CityId], [StreetId], [HouseId]) VALUES (1, 5, 3, 5, 1, 1)
INSERT [dbo].[PartnerAdress] ([Id], [IndexId], [AreaId], [CityId], [StreetId], [HouseId]) VALUES (2, 2, 1, 3, 5, 2)
INSERT [dbo].[PartnerAdress] ([Id], [IndexId], [AreaId], [CityId], [StreetId], [HouseId]) VALUES (3, 3, 4, 1, 2, 3)
INSERT [dbo].[PartnerAdress] ([Id], [IndexId], [AreaId], [CityId], [StreetId], [HouseId]) VALUES (4, 1, 5, 2, 4, 4)
INSERT [dbo].[PartnerAdress] ([Id], [IndexId], [AreaId], [CityId], [StreetId], [HouseId]) VALUES (5, 4, 2, 4, 3, 5)
GO
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (1, N'База Строитель')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (2, N'МонтажПро')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (3, N'Паркет 29')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (4, N'Ремонт и отделка')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (5, N'Стройсервис')
GO
INSERT [dbo].[PartnerProducts] ([Id], [Name], [PartnerNameId], [ProductAmount], [SellDate]) VALUES (1, N'Инженерная доска Дуб Французская елка однополосная 12 мм', 3, 35000, CAST(N'2022-12-02T00:00:00.000' AS DateTime))
INSERT [dbo].[PartnerProducts] ([Id], [Name], [PartnerNameId], [ProductAmount], [SellDate]) VALUES (2, N'Инженерная доска Дуб Французская елка однополосная 12 мм', 5, 2500, CAST(N'2024-07-05T00:00:00.000' AS DateTime))
INSERT [dbo].[PartnerProducts] ([Id], [Name], [PartnerNameId], [ProductAmount], [SellDate]) VALUES (3, N'Инженерная доска Дуб Французская елка однополосная 12 мм', 2, 25000, CAST(N'2024-06-12T00:00:00.000' AS DateTime))
INSERT [dbo].[PartnerProducts] ([Id], [Name], [PartnerNameId], [ProductAmount], [SellDate]) VALUES (4, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', 1, 12350, CAST(N'2023-12-18T00:00:00.000' AS DateTime))
INSERT [dbo].[PartnerProducts] ([Id], [Name], [PartnerNameId], [ProductAmount], [SellDate]) VALUES (5, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', 3, 1000, CAST(N'2024-06-07T00:00:00.000' AS DateTime))
INSERT [dbo].[PartnerProducts] ([Id], [Name], [PartnerNameId], [ProductAmount], [SellDate]) VALUES (6, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', 4, 37200, CAST(N'2024-03-12T00:00:00.000' AS DateTime))
INSERT [dbo].[PartnerProducts] ([Id], [Name], [PartnerNameId], [ProductAmount], [SellDate]) VALUES (7, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', 2, 50000, CAST(N'2023-09-19T00:00:00.000' AS DateTime))
INSERT [dbo].[PartnerProducts] ([Id], [Name], [PartnerNameId], [ProductAmount], [SellDate]) VALUES (8, N'Ламинат Дуб серый 32 класс 8 мм с фаской', 1, 37400, CAST(N'2024-06-07T00:00:00.000' AS DateTime))
INSERT [dbo].[PartnerProducts] ([Id], [Name], [PartnerNameId], [ProductAmount], [SellDate]) VALUES (9, N'Ламинат Дуб серый 32 класс 8 мм с фаской', 4, 59050, CAST(N'2023-03-20T00:00:00.000' AS DateTime))
INSERT [dbo].[PartnerProducts] ([Id], [Name], [PartnerNameId], [ProductAmount], [SellDate]) VALUES (10, N'Ламинат Дуб серый 32 класс 8 мм с фаской', 2, 670000, CAST(N'2023-11-10T00:00:00.000' AS DateTime))
INSERT [dbo].[PartnerProducts] ([Id], [Name], [PartnerNameId], [ProductAmount], [SellDate]) VALUES (11, N'Паркетная доска Ясень темный однополосная 14 мм', 1, 15500, CAST(N'2023-03-23T00:00:00.000' AS DateTime))
INSERT [dbo].[PartnerProducts] ([Id], [Name], [PartnerNameId], [ProductAmount], [SellDate]) VALUES (12, N'Паркетная доска Ясень темный однополосная 14 мм', 3, 7550, CAST(N'2024-07-01T00:00:00.000' AS DateTime))
INSERT [dbo].[PartnerProducts] ([Id], [Name], [PartnerNameId], [ProductAmount], [SellDate]) VALUES (13, N'Паркетная доска Ясень темный однополосная 14 мм', 5, 7250, CAST(N'2023-01-22T00:00:00.000' AS DateTime))
INSERT [dbo].[PartnerProducts] ([Id], [Name], [PartnerNameId], [ProductAmount], [SellDate]) VALUES (14, N'Паркетная доска Ясень темный однополосная 14 мм', 2, 35000, CAST(N'2024-04-15T00:00:00.000' AS DateTime))
INSERT [dbo].[PartnerProducts] ([Id], [Name], [PartnerNameId], [ProductAmount], [SellDate]) VALUES (15, N'Пробковое напольное клеевое покрытие 32 класс 4 мм', 3, 1250, CAST(N'2023-05-17T00:00:00.000' AS DateTime))
INSERT [dbo].[PartnerProducts] ([Id], [Name], [PartnerNameId], [ProductAmount], [SellDate]) VALUES (16, N'Пробковое напольное клеевое покрытие 32 класс 4 мм', 4, 4500, CAST(N'2024-05-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PartnerType] ([Id], [Name]) VALUES (1, N'ЗАО')
INSERT [dbo].[PartnerType] ([Id], [Name]) VALUES (2, N'ОАО')
INSERT [dbo].[PartnerType] ([Id], [Name]) VALUES (3, N'ООО')
INSERT [dbo].[PartnerType] ([Id], [Name]) VALUES (4, N'ПАО')
GO
INSERT [dbo].[Products] ([Id], [ProductTypeId], [PartnerProductsId], [Article], [MinCostForPartner]) VALUES (1, 3, 14, 8758385, CAST(4456.90 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([Id], [ProductTypeId], [PartnerProductsId], [Article], [MinCostForPartner]) VALUES (2, 3, 3, 8858958, CAST(7330.99 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([Id], [ProductTypeId], [PartnerProductsId], [Article], [MinCostForPartner]) VALUES (3, 1, 7, 7750282, CAST(1799.33 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([Id], [ProductTypeId], [PartnerProductsId], [Article], [MinCostForPartner]) VALUES (4, 1, 10, 7028748, CAST(3890.41 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([Id], [ProductTypeId], [PartnerProductsId], [Article], [MinCostForPartner]) VALUES (5, 4, 16, 5012543, CAST(5450.59 AS Decimal(10, 2)))
GO
INSERT [dbo].[ProductType] ([Id], [Name], [Percent]) VALUES (1, N'Ламинат', CAST(2.35 AS Decimal(5, 2)))
INSERT [dbo].[ProductType] ([Id], [Name], [Percent]) VALUES (2, N'Массивная доска', CAST(5.15 AS Decimal(5, 2)))
INSERT [dbo].[ProductType] ([Id], [Name], [Percent]) VALUES (3, N'Паркетная доска', CAST(4.34 AS Decimal(5, 2)))
INSERT [dbo].[ProductType] ([Id], [Name], [Percent]) VALUES (4, N'Пробковое покрытие', CAST(1.50 AS Decimal(5, 2)))
GO
INSERT [dbo].[Street] ([Id], [Name]) VALUES (1, N'ул. Лесная')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (2, N'ул. Парковая')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (3, N'ул. Рабочая')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (4, N'ул. Свободы')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (5, N'ул. Строителей')
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_PartnerAdress] FOREIGN KEY([PartnerAdressId])
REFERENCES [dbo].[PartnerAdress] ([Id])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_PartnerAdress]
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_PartnerName] FOREIGN KEY([PartnerNameId])
REFERENCES [dbo].[PartnerName] ([Id])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_PartnerName]
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_PartnerType] FOREIGN KEY([PartnerTypeId])
REFERENCES [dbo].[PartnerType] ([Id])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_PartnerType]
GO
ALTER TABLE [dbo].[PartnerAdress]  WITH CHECK ADD  CONSTRAINT [FK_PartnerAdress_Area] FOREIGN KEY([AreaId])
REFERENCES [dbo].[Area] ([Id])
GO
ALTER TABLE [dbo].[PartnerAdress] CHECK CONSTRAINT [FK_PartnerAdress_Area]
GO
ALTER TABLE [dbo].[PartnerAdress]  WITH CHECK ADD  CONSTRAINT [FK_PartnerAdress_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([Id])
GO
ALTER TABLE [dbo].[PartnerAdress] CHECK CONSTRAINT [FK_PartnerAdress_City]
GO
ALTER TABLE [dbo].[PartnerAdress]  WITH CHECK ADD  CONSTRAINT [FK_PartnerAdress_House] FOREIGN KEY([HouseId])
REFERENCES [dbo].[House] ([Id])
GO
ALTER TABLE [dbo].[PartnerAdress] CHECK CONSTRAINT [FK_PartnerAdress_House]
GO
ALTER TABLE [dbo].[PartnerAdress]  WITH CHECK ADD  CONSTRAINT [FK_PartnerAdress_Index] FOREIGN KEY([IndexId])
REFERENCES [dbo].[Index] ([Id])
GO
ALTER TABLE [dbo].[PartnerAdress] CHECK CONSTRAINT [FK_PartnerAdress_Index]
GO
ALTER TABLE [dbo].[PartnerAdress]  WITH CHECK ADD  CONSTRAINT [FK_PartnerAdress_Street] FOREIGN KEY([StreetId])
REFERENCES [dbo].[Street] ([Id])
GO
ALTER TABLE [dbo].[PartnerAdress] CHECK CONSTRAINT [FK_PartnerAdress_Street]
GO
ALTER TABLE [dbo].[PartnerProducts]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProducts_PartnerName] FOREIGN KEY([PartnerNameId])
REFERENCES [dbo].[PartnerName] ([Id])
GO
ALTER TABLE [dbo].[PartnerProducts] CHECK CONSTRAINT [FK_PartnerProducts_PartnerName]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_PartnerProducts] FOREIGN KEY([PartnerProductsId])
REFERENCES [dbo].[PartnerProducts] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_PartnerProducts]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductType] FOREIGN KEY([ProductTypeId])
REFERENCES [dbo].[ProductType] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductType]
GO
USE [master]
GO
ALTER DATABASE [database] SET  READ_WRITE 
GO
