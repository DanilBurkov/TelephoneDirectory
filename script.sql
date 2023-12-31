USE [master]
GO
/****** Object:  Database [telephone_dir]    Script Date: 20.06.2023 20:13:48 ******/
CREATE DATABASE [telephone_dir]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'telephone_dir', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\telephone_dir.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'telephone_dir_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\telephone_dir_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [telephone_dir] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [telephone_dir].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [telephone_dir] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [telephone_dir] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [telephone_dir] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [telephone_dir] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [telephone_dir] SET ARITHABORT OFF 
GO
ALTER DATABASE [telephone_dir] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [telephone_dir] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [telephone_dir] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [telephone_dir] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [telephone_dir] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [telephone_dir] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [telephone_dir] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [telephone_dir] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [telephone_dir] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [telephone_dir] SET  ENABLE_BROKER 
GO
ALTER DATABASE [telephone_dir] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [telephone_dir] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [telephone_dir] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [telephone_dir] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [telephone_dir] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [telephone_dir] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [telephone_dir] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [telephone_dir] SET RECOVERY FULL 
GO
ALTER DATABASE [telephone_dir] SET  MULTI_USER 
GO
ALTER DATABASE [telephone_dir] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [telephone_dir] SET DB_CHAINING OFF 
GO
ALTER DATABASE [telephone_dir] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [telephone_dir] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [telephone_dir] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [telephone_dir] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'telephone_dir', N'ON'
GO
ALTER DATABASE [telephone_dir] SET QUERY_STORE = OFF
GO
USE [telephone_dir]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 20.06.2023 20:13:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Division1Table]    Script Date: 20.06.2023 20:13:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Division1Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Division1] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Division1Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Division2Table]    Script Date: 20.06.2023 20:13:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Division2Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Division2] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Division2Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Division3Table]    Script Date: 20.06.2023 20:13:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Division3Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Division3] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Division3Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Division4Table]    Script Date: 20.06.2023 20:13:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Division4Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Division4] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Division4Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FIOTable]    Script Date: 20.06.2023 20:13:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIOTable](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [varchar](50) NOT NULL,
 CONSTRAINT [PK_FIOTable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NumberTable]    Script Date: 20.06.2023 20:13:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NumberTable](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Number_Email] [varchar](100) NOT NULL,
	[TypeID] [int] NOT NULL,
	[FIOID] [int] NOT NULL,
	[PostID] [int] NOT NULL,
	[Division1ID] [int] NOT NULL,
	[Division2ID] [int] NOT NULL,
	[Division3ID] [int] NULL,
	[Division4ID] [int] NULL,
 CONSTRAINT [PK_NumberTable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostTable]    Script Date: 20.06.2023 20:13:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostTable](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Post] [varchar](100) NOT NULL,
 CONSTRAINT [PK_PostTable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeTable]    Script Date: 20.06.2023 20:13:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeTable](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TypeTable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([ID], [Login], [Password]) VALUES (1, N'burkovdd', N'backtowork')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Division1Table] ON 

INSERT [dbo].[Division1Table] ([ID], [Division1]) VALUES (1, N'КОКС')
INSERT [dbo].[Division1Table] ([ID], [Division1]) VALUES (2, N'КОКС-ОХРАНА')
INSERT [dbo].[Division1Table] ([ID], [Division1]) VALUES (3, N'ООО"ТД"КХЗ"')
INSERT [dbo].[Division1Table] ([ID], [Division1]) VALUES (4, N'ПМХ Москва')
INSERT [dbo].[Division1Table] ([ID], [Division1]) VALUES (5, N'ПМХ-Уголь')
INSERT [dbo].[Division1Table] ([ID], [Division1]) VALUES (6, N'Подрядные организации')
INSERT [dbo].[Division1Table] ([ID], [Division1]) VALUES (7, N'ШАХТЫ')
SET IDENTITY_INSERT [dbo].[Division1Table] OFF
GO
SET IDENTITY_INSERT [dbo].[Division2Table] ON 

INSERT [dbo].[Division2Table] ([ID], [Division2]) VALUES (1, N'Коксовый')
INSERT [dbo].[Division2Table] ([ID], [Division2]) VALUES (2, N'УЗО')
INSERT [dbo].[Division2Table] ([ID], [Division2]) VALUES (3, N'ЭАЛ')
INSERT [dbo].[Division2Table] ([ID], [Division2]) VALUES (4, N'СМУ')
INSERT [dbo].[Division2Table] ([ID], [Division2]) VALUES (5, N'Заводоуправление')
INSERT [dbo].[Division2Table] ([ID], [Division2]) VALUES (6, N'СЦРКО N2')
INSERT [dbo].[Division2Table] ([ID], [Division2]) VALUES (7, N'МСЧ')
SET IDENTITY_INSERT [dbo].[Division2Table] OFF
GO
SET IDENTITY_INSERT [dbo].[Division3Table] ON 

INSERT [dbo].[Division3Table] ([ID], [Division3]) VALUES (1, N'Общецеховый персонал')
INSERT [dbo].[Division3Table] ([ID], [Division3]) VALUES (2, N'Служащие')
INSERT [dbo].[Division3Table] ([ID], [Division3]) VALUES (3, N'КРО')
INSERT [dbo].[Division3Table] ([ID], [Division3]) VALUES (4, N'Поликлиника')
INSERT [dbo].[Division3Table] ([ID], [Division3]) VALUES (5, N'Бухгалтерия')
INSERT [dbo].[Division3Table] ([ID], [Division3]) VALUES (6, N'Руководство')
INSERT [dbo].[Division3Table] ([ID], [Division3]) VALUES (7, N'ЭО')
INSERT [dbo].[Division3Table] ([ID], [Division3]) VALUES (8, N'ПКО')
SET IDENTITY_INSERT [dbo].[Division3Table] OFF
GO
SET IDENTITY_INSERT [dbo].[Division4Table] ON 

INSERT [dbo].[Division4Table] ([ID], [Division4]) VALUES (1, N'Группа технологов')
INSERT [dbo].[Division4Table] ([ID], [Division4]) VALUES (2, N'Техническая группа')
INSERT [dbo].[Division4Table] ([ID], [Division4]) VALUES (3, N'Материальная группа')
INSERT [dbo].[Division4Table] ([ID], [Division4]) VALUES (4, N'Специалисты')
INSERT [dbo].[Division4Table] ([ID], [Division4]) VALUES (5, N'Общая группа')
INSERT [dbo].[Division4Table] ([ID], [Division4]) VALUES (6, N'Руководство')
INSERT [dbo].[Division4Table] ([ID], [Division4]) VALUES (7, N'Экономисты')
SET IDENTITY_INSERT [dbo].[Division4Table] OFF
GO
SET IDENTITY_INSERT [dbo].[FIOTable] ON 

INSERT [dbo].[FIOTable] ([ID], [FIO]) VALUES (1, N'Абрамов Александр Владимирович')
INSERT [dbo].[FIOTable] ([ID], [FIO]) VALUES (2, N'Абрамов Иван Владимирович ')
INSERT [dbo].[FIOTable] ([ID], [FIO]) VALUES (3, N'Авдюшкина Анастасия Алексеевна')
INSERT [dbo].[FIOTable] ([ID], [FIO]) VALUES (4, N'Аверин Максим Владимирович')
INSERT [dbo].[FIOTable] ([ID], [FIO]) VALUES (5, N'Акулов Алексей Валерьевич')
INSERT [dbo].[FIOTable] ([ID], [FIO]) VALUES (6, N'Акшулаков Николай Нургалиевич')
INSERT [dbo].[FIOTable] ([ID], [FIO]) VALUES (7, N'Анашкина Татьяна Алексеевна')
SET IDENTITY_INSERT [dbo].[FIOTable] OFF
GO
SET IDENTITY_INSERT [dbo].[NumberTable] ON 

INSERT [dbo].[NumberTable] ([ID], [Number_Email], [TypeID], [FIOID], [PostID], [Division1ID], [Division2ID], [Division3ID], [Division4ID]) VALUES (2, N'anashkina_ta@metholding.com', 5, 7, 7, 1, 5, 7, 1)
INSERT [dbo].[NumberTable] ([ID], [Number_Email], [TypeID], [FIOID], [PostID], [Division1ID], [Division2ID], [Division3ID], [Division4ID]) VALUES (3, N'abramov_av@metholding.com', 5, 1, 1, 1, 1, 1, NULL)
INSERT [dbo].[NumberTable] ([ID], [Number_Email], [TypeID], [FIOID], [PostID], [Division1ID], [Division2ID], [Division3ID], [Division4ID]) VALUES (4, N'17-90', 2, 1, 1, 1, 1, 1, NULL)
INSERT [dbo].[NumberTable] ([ID], [Number_Email], [TypeID], [FIOID], [PostID], [Division1ID], [Division2ID], [Division3ID], [Division4ID]) VALUES (5, N'77-21-00', 3, 2, 2, 5, 2, NULL, NULL)
INSERT [dbo].[NumberTable] ([ID], [Number_Email], [TypeID], [FIOID], [PostID], [Division1ID], [Division2ID], [Division3ID], [Division4ID]) VALUES (6, N'8-961-702-25-07', 4, 2, 2, 5, 2, NULL, NULL)
INSERT [dbo].[NumberTable] ([ID], [Number_Email], [TypeID], [FIOID], [PostID], [Division1ID], [Division2ID], [Division3ID], [Division4ID]) VALUES (7, N'17-40', 1, 2, 2, 5, 2, NULL, NULL)
INSERT [dbo].[NumberTable] ([ID], [Number_Email], [TypeID], [FIOID], [PostID], [Division1ID], [Division2ID], [Division3ID], [Division4ID]) VALUES (8, N'abramov_iv@metholding.com', 5, 2, 2, 5, 2, NULL, NULL)
SET IDENTITY_INSERT [dbo].[NumberTable] OFF
GO
SET IDENTITY_INSERT [dbo].[PostTable] ON 

INSERT [dbo].[PostTable] ([ID], [Post]) VALUES (1, N'Старший мастер, занятый на горячих участках работ')
INSERT [dbo].[PostTable] ([ID], [Post]) VALUES (2, N'Начальник управления')
INSERT [dbo].[PostTable] ([ID], [Post]) VALUES (3, N'Инженер II кат. воздушной группы')
INSERT [dbo].[PostTable] ([ID], [Post]) VALUES (4, N'Начальник участка')
INSERT [dbo].[PostTable] ([ID], [Post]) VALUES (5, N'Заместитель начальника цеха по изготовлению оборудования и металлоконструкций')
INSERT [dbo].[PostTable] ([ID], [Post]) VALUES (6, N'Ведущий ревизор')
INSERT [dbo].[PostTable] ([ID], [Post]) VALUES (7, N'Ведущий инженер-конструктор')
SET IDENTITY_INSERT [dbo].[PostTable] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeTable] ON 

INSERT [dbo].[TypeTable] ([ID], [Type]) VALUES (1, N'IP')
INSERT [dbo].[TypeTable] ([ID], [Type]) VALUES (2, N'Внутренний')
INSERT [dbo].[TypeTable] ([ID], [Type]) VALUES (3, N'Служебный ')
INSERT [dbo].[TypeTable] ([ID], [Type]) VALUES (4, N'Мобильный')
INSERT [dbo].[TypeTable] ([ID], [Type]) VALUES (5, N'e-mail ')
SET IDENTITY_INSERT [dbo].[TypeTable] OFF
GO
ALTER TABLE [dbo].[NumberTable]  WITH CHECK ADD  CONSTRAINT [FK_NumberTable_Division1] FOREIGN KEY([Division1ID])
REFERENCES [dbo].[Division1Table] ([ID])
GO
ALTER TABLE [dbo].[NumberTable] CHECK CONSTRAINT [FK_NumberTable_Division1]
GO
ALTER TABLE [dbo].[NumberTable]  WITH CHECK ADD  CONSTRAINT [FK_NumberTable_Division2] FOREIGN KEY([Division2ID])
REFERENCES [dbo].[Division2Table] ([ID])
GO
ALTER TABLE [dbo].[NumberTable] CHECK CONSTRAINT [FK_NumberTable_Division2]
GO
ALTER TABLE [dbo].[NumberTable]  WITH CHECK ADD  CONSTRAINT [FK_NumberTable_Division3] FOREIGN KEY([Division3ID])
REFERENCES [dbo].[Division3Table] ([ID])
GO
ALTER TABLE [dbo].[NumberTable] CHECK CONSTRAINT [FK_NumberTable_Division3]
GO
ALTER TABLE [dbo].[NumberTable]  WITH CHECK ADD  CONSTRAINT [FK_NumberTable_Division4] FOREIGN KEY([Division4ID])
REFERENCES [dbo].[Division4Table] ([ID])
GO
ALTER TABLE [dbo].[NumberTable] CHECK CONSTRAINT [FK_NumberTable_Division4]
GO
ALTER TABLE [dbo].[NumberTable]  WITH CHECK ADD  CONSTRAINT [FK_NumberTable_FIO] FOREIGN KEY([FIOID])
REFERENCES [dbo].[FIOTable] ([ID])
GO
ALTER TABLE [dbo].[NumberTable] CHECK CONSTRAINT [FK_NumberTable_FIO]
GO
ALTER TABLE [dbo].[NumberTable]  WITH CHECK ADD  CONSTRAINT [FK_NumberTable_Post] FOREIGN KEY([PostID])
REFERENCES [dbo].[PostTable] ([ID])
GO
ALTER TABLE [dbo].[NumberTable] CHECK CONSTRAINT [FK_NumberTable_Post]
GO
ALTER TABLE [dbo].[NumberTable]  WITH CHECK ADD  CONSTRAINT [FK_NumberTable_Type] FOREIGN KEY([TypeID])
REFERENCES [dbo].[TypeTable] ([ID])
GO
ALTER TABLE [dbo].[NumberTable] CHECK CONSTRAINT [FK_NumberTable_Type]
GO
USE [master]
GO
ALTER DATABASE [telephone_dir] SET  READ_WRITE 
GO
