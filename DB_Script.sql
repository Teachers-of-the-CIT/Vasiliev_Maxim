USE [DemoDataBaseTemplate]
GO
/****** Object:  Table [dbo].[GetPoint]    Script Date: 11/5/2022 12:03:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GetPoint](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IndexNumber] [int] NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_GetPoint] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/5/2022 12:03:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NumberOrder] [int] NOT NULL,
	[DateOrder] [date] NOT NULL,
	[DateDelivery] [date] NOT NULL,
	[PointGet] [int] NOT NULL,
	[FCs] [nvarchar](max) NULL,
	[CodeGet] [int] NOT NULL,
	[Status] [nvarchar](30) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ArticleProduct] [nvarchar](7) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/5/2022 12:03:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Article] [nvarchar](7) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[MeushereUnit] [nvarchar](max) NOT NULL,
	[Price] [int] NOT NULL,
	[MaxDiscount] [int] NOT NULL,
	[Manufacter] [nvarchar](max) NOT NULL,
	[Provider] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](max) NOT NULL,
	[Discount] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [image] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Article] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/5/2022 12:03:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Role] [nvarchar](max) NOT NULL,
	[FCs] [nvarchar](max) NOT NULL,
	[Login] [nvarchar](max) NOT NULL,
	[Pass] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GetPoint] ON 

INSERT [dbo].[GetPoint] ([Id], [IndexNumber], [Address]) VALUES (1, 344288, N'г. Ангарск, ул. Чехова, 1')
SET IDENTITY_INSERT [dbo].[GetPoint] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [NumberOrder], [DateOrder], [DateDelivery], [PointGet], [FCs], [CodeGet], [Status], [Quantity], [ArticleProduct]) VALUES (21, 1, CAST(N'2022-05-04' AS Date), CAST(N'2022-05-10' AS Date), 24, N'Новиков Матвей Маркович', 201, N'Новый ', 2, N'А112Т4')
INSERT [dbo].[Order] ([Id], [NumberOrder], [DateOrder], [DateDelivery], [PointGet], [FCs], [CodeGet], [Status], [Quantity], [ArticleProduct]) VALUES (22, 1, CAST(N'2022-05-04' AS Date), CAST(N'2022-05-10' AS Date), 24, N'Новиков Матвей Маркович', 201, N'Новый ', 2, N'F893T5')
INSERT [dbo].[Order] ([Id], [NumberOrder], [DateOrder], [DateDelivery], [PointGet], [FCs], [CodeGet], [Status], [Quantity], [ArticleProduct]) VALUES (23, 2, CAST(N'2022-05-05' AS Date), CAST(N'2022-05-11' AS Date), 25, N'', 202, N'Новый ', 1, N'E530Y6')
INSERT [dbo].[Order] ([Id], [NumberOrder], [DateOrder], [DateDelivery], [PointGet], [FCs], [CodeGet], [Status], [Quantity], [ArticleProduct]) VALUES (24, 2, CAST(N'2022-05-05' AS Date), CAST(N'2022-05-11' AS Date), 25, N'', 202, N'Новый ', 2, N'F346G5')
INSERT [dbo].[Order] ([Id], [NumberOrder], [DateOrder], [DateDelivery], [PointGet], [FCs], [CodeGet], [Status], [Quantity], [ArticleProduct]) VALUES (25, 3, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 26, N'Соловьев Пётр Никитич', 203, N'Новый ', 1, N'J432E4')
INSERT [dbo].[Order] ([Id], [NumberOrder], [DateOrder], [DateDelivery], [PointGet], [FCs], [CodeGet], [Status], [Quantity], [ArticleProduct]) VALUES (26, 3, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 26, N'Соловьев Пётр Никитич', 203, N'Новый ', 2, N'D344Y7')
INSERT [dbo].[Order] ([Id], [NumberOrder], [DateOrder], [DateDelivery], [PointGet], [FCs], [CodeGet], [Status], [Quantity], [ArticleProduct]) VALUES (27, 4, CAST(N'2022-05-07' AS Date), CAST(N'2022-05-13' AS Date), 27, N'', 204, N'Новый ', 1, N'E245R5')
INSERT [dbo].[Order] ([Id], [NumberOrder], [DateOrder], [DateDelivery], [PointGet], [FCs], [CodeGet], [Status], [Quantity], [ArticleProduct]) VALUES (28, 4, CAST(N'2022-05-07' AS Date), CAST(N'2022-05-13' AS Date), 27, N'', 204, N'Новый ', 2, N'D378D3')
INSERT [dbo].[Order] ([Id], [NumberOrder], [DateOrder], [DateDelivery], [PointGet], [FCs], [CodeGet], [Status], [Quantity], [ArticleProduct]) VALUES (29, 5, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 28, N'Васильева Софья Глебовна', 205, N'Новый ', 3, N'H732R5')
INSERT [dbo].[Order] ([Id], [NumberOrder], [DateOrder], [DateDelivery], [PointGet], [FCs], [CodeGet], [Status], [Quantity], [ArticleProduct]) VALUES (30, 5, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 28, N'Васильева Софья Глебовна', 205, N'Новый ', 2, N'R464G6')
INSERT [dbo].[Order] ([Id], [NumberOrder], [DateOrder], [DateDelivery], [PointGet], [FCs], [CodeGet], [Status], [Quantity], [ArticleProduct]) VALUES (31, 6, CAST(N'2022-05-09' AS Date), CAST(N'2022-05-15' AS Date), 29, N'', 206, N'Новый ', 3, N'K535G6')
INSERT [dbo].[Order] ([Id], [NumberOrder], [DateOrder], [DateDelivery], [PointGet], [FCs], [CodeGet], [Status], [Quantity], [ArticleProduct]) VALUES (32, 6, CAST(N'2022-05-09' AS Date), CAST(N'2022-05-15' AS Date), 29, N'', 206, N'Новый ', 3, N'E573G6')
INSERT [dbo].[Order] ([Id], [NumberOrder], [DateOrder], [DateDelivery], [PointGet], [FCs], [CodeGet], [Status], [Quantity], [ArticleProduct]) VALUES (33, 7, CAST(N'2022-05-10' AS Date), CAST(N'2022-05-16' AS Date), 30, N'', 207, N'Новый ', 5, N'G532R5')
INSERT [dbo].[Order] ([Id], [NumberOrder], [DateOrder], [DateDelivery], [PointGet], [FCs], [CodeGet], [Status], [Quantity], [ArticleProduct]) VALUES (34, 7, CAST(N'2022-05-10' AS Date), CAST(N'2022-05-16' AS Date), 30, N'', 207, N'Новый ', 6, N'F344S4')
INSERT [dbo].[Order] ([Id], [NumberOrder], [DateOrder], [DateDelivery], [PointGet], [FCs], [CodeGet], [Status], [Quantity], [ArticleProduct]) VALUES (35, 8, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-17' AS Date), 31, N'', 208, N'Новый ', 5, N'D526R4')
INSERT [dbo].[Order] ([Id], [NumberOrder], [DateOrder], [DateDelivery], [PointGet], [FCs], [CodeGet], [Status], [Quantity], [ArticleProduct]) VALUES (36, 8, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-17' AS Date), 31, N'', 208, N'Новый ', 4, N'S753T5')
INSERT [dbo].[Order] ([Id], [NumberOrder], [DateOrder], [DateDelivery], [PointGet], [FCs], [CodeGet], [Status], [Quantity], [ArticleProduct]) VALUES (37, 9, CAST(N'2022-05-12' AS Date), CAST(N'2022-05-18' AS Date), 32, N'Львов Роман Павлович', 209, N'Новый ', 3, N'V472S3')
INSERT [dbo].[Order] ([Id], [NumberOrder], [DateOrder], [DateDelivery], [PointGet], [FCs], [CodeGet], [Status], [Quantity], [ArticleProduct]) VALUES (38, 9, CAST(N'2022-05-12' AS Date), CAST(N'2022-05-18' AS Date), 32, N'Львов Роман Павлович', 209, N'Новый ', 3, N'A436H7')
INSERT [dbo].[Order] ([Id], [NumberOrder], [DateOrder], [DateDelivery], [PointGet], [FCs], [CodeGet], [Status], [Quantity], [ArticleProduct]) VALUES (39, 10, CAST(N'2022-05-13' AS Date), CAST(N'2022-05-19' AS Date), 33, N'', 210, N'Завершен', 4, N'O875F6')
INSERT [dbo].[Order] ([Id], [NumberOrder], [DateOrder], [DateDelivery], [PointGet], [FCs], [CodeGet], [Status], [Quantity], [ArticleProduct]) VALUES (40, 10, CAST(N'2022-05-13' AS Date), CAST(N'2022-05-19' AS Date), 33, N'', 210, N'Завершен', 1, N'E479G6')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'A436H7', N'Туалетная вода', N'шт.', 1000, 15, N'Dilis Parfum', N'Летуаль', N'Мужской парфюм', 4, 12, N'Туалетная вода Dilis Parfum Aqua Cool, 100 мл', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'C323R4', N'Парфюмерная вода', N'шт.', 4100, 25, N'TRUSSARDI', N'Летуаль', N'Мужской парфюм', 4, 8, N'Парфюмерная вода TRUSSARDI Donna Trussardi (2011), 50 мл', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'D344Y7', N'Парфюмерная вода', N'шт.', 223, 10, N'Today Parfum', N'Летуаль', N'Женский парфюм', 5, 16, N'Парфюмерная вода Today Parfum Prestige №6 Eclat, 17 мл', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'D378D3', N'Туалетная вода', N'шт.', 1500, 10, N'Dilis Parfum', N'Летуаль', N'Женский парфюм', 3, 16, N'Духи Dilis Parfum Classic Collection №18, 30 мл', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'D526R4', N'Парфюмерная вода', N'шт.', 3600, 10, N'DOLCE & GABBANA', N'Летуаль', N'Женский парфюм', 3, 6, N'Парфюмерная вода DOLCE & GABBANA Dolce&Gabbana pour', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'D634D4', N'Туалетная вода', N'шт.', 367, 15, N'Paris Line', N'Рив Гош', N'Мужской парфюм', 2, 14, N'Туалетная вода Paris Line Parfums Dollar Diamond, 100 мл', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'E245R5', N'Туалетная вода', N'шт.', 1000, 15, N'Dilis Parfum', N'Рив Гош', N'Женский парфюм', 5, 2, N'Туалетная вода Dilis Parfum Mila, 100 мл', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'E479G6', N'Туалетная вода', N'шт.', 6100, 25, N'HUGO BOSS', N'Рив Гош', N'Мужской парфюм', 5, 3, N'Туалетная вода HUGO BOSS Boss Bottled, 100 мл', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'E530Y6', N'Парфюмерная вода', N'шт.', 519, 15, N'Parfums Constantine', N'Летуаль', N'Женский парфюм', 3, 9, N'Парфюмерная вода Parfums Constantine Mademoiselle 5, 50 мл', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'E573G6', N'Духи', N'шт.', 1087, 15, N'Dilis Parfum', N'Рив Гош', N'Женский парфюм', 5, 13, N'Духи Dilis Parfum Classic Collection №34, 30 мл', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'F344S4', N'Туалетная вода', N'шт.', 546, 5, N'Today Parfum', N'Рив Гош', N'Женский парфюм', 2, 9, N'Туалетная вода Today Parfum Cola Cherry, 50 мл', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'F346G5', N'Туалетная вода', N'шт.', 450, 5, N'Today Parfum', N'Рив Гош', N'Женский парфюм', 3, 18, N'Туалетная вода Today Parfum G-Club Egoist, 100 мл', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'F893T5', N'Туалетная вода', N'шт.', 327, 15, N'Paris Line', N'Рив Гош', N'Женский парфюм', 2, 14, N'Туалетная вода Paris Line Parfums Cosa Nostra Platinum, 100 мл', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'G532R5', N'Парфюмерная вода', N'шт.', 640, 10, N'Parfums Constantine', N'Летуаль', N'Мужской парфюм', 3, 16, N'Парфюмерная вода Parfums Constantine New York Perfume Six, 50 мл', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'G832G6', N'Туалетная вода', N'шт.', 368, 10, N'Paris Line', N'Рив Гош', N'Женский парфюм', 4, 7, N'Туалетная вода Paris Line Parfums Vodka Extreme, 100 мл', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'H647R5', N'Туалетная вода', N'шт.', 555, 10, N'Parfums Constantine', N'Рив Гош', N'Женский парфюм', 4, 6, N'Туалетная вода Parfums Constantine Gentleman №3, 100 мл', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'H732R5', N'Туалетная вода', N'шт.', 500, 15, N'Paris Line', N'Рив Гош', N'Женский парфюм', 5, 7, N'Туалетная вода Paris Line Parfums Cosa Nostra, 100 мл', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'J432E4', N'Туалетная вода', N'шт.', 341, 5, N'Paris Line', N'Рив Гош', N'Женский парфюм', 2, 4, N'Туалетная вода Paris Line Parfums Dollar, 100 мл', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'K535G6', N'Парфюмерная вода', N'шт.', 1200, 15, N'Yves de Sistelle', N'Рив Гош', N'Женский парфюм', 2, 5, N'Парфюмерная вода Yves de Sistelle Incidence pour Femme, 65 мл', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'K742T5', N'Туалетная вода', N'шт.', 900, 15, N'Dilis Parfum', N'Летуаль', N'Мужской парфюм', 4, 6, N'Туалетная вода Dilis Parfum Cool&Grey, 100 мл', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'L533E4', N'Туалетная вода', N'шт.', 3900, 15, N'HUGO BOSS', N'Рив Гош', N'Мужской парфюм', 4, 15, N'Туалетная вода HUGO BOSS Boss Bottled, 50 мл', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'O875F6', N'Парфюмерная вода', N'шт.', 600, 10, N'Dilis Parfum', N'Рив Гош', N'Мужской парфюм', 2, 5, N'Dilis Parfum Мужской Walker Breeze', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'R464G6', N'Духи', N'шт.', 290, 5, N'Dilis Parfum', N'Летуаль', N'Женский парфюм', 2, 11, N'Духи Dilis Parfum Ночная Фиалка, 9.5 мл', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'R563E3', N'Туалетная вода', N'шт.', 418, 5, N'Today Parfum', N'Летуаль', N'Мужской парфюм', 4, 9, N'Туалетная вода Today Parfum G-Club Millioner, 100 мл', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'S346H6', N'Туалетная вода', N'шт.', 1000, 10, N'Dilis Parfum', N'Летуаль', N'Мужской парфюм', 4, 12, N'Туалетная вода Dilis Parfum Steelman Zone, 100 мл', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'S753T5', N'Парфюмерная вода', N'шт.', 5200, 5, N'DOLCE & GABBANA', N'Летуаль', N'Женский парфюм', 4, 3, N'Парфюмерная вода DOLCE & GABBANA Dolce Shine, 75 мл', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'V324R5', N'Парфюмерная вода', N'шт.', 519, 5, N'Parfums Constantine', N'Летуаль', N'Женский парфюм', 3, 5, N'Парфюмерная вода Parfums Constantine Mademoiselle 7, 50 мл', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'V472S3', N'Парфюмерная вода', N'шт.', 2640, 30, N'LACOSTE', N'Рив Гош', N'Мужской парфюм', 4, 7, N'Парфюмерная вода LACOSTE Lacoste pour Femme, 30 мл', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'V493E3', N'Туалетная вода', N'шт.', 3200, 10, N'DOLCE & GABBANA', N'Летуаль', N'Женский парфюм', 2, 8, N'Туалетная вода DOLCE & GABBANA 3 L''Imperatrice, 50 мл', NULL)
INSERT [dbo].[Product] ([Article], [Name], [MeushereUnit], [Price], [MaxDiscount], [Manufacter], [Provider], [Category], [Discount], [Quantity], [Description], [Image]) VALUES (N'А112Т4', N'Одеколон', N'шт.', 660, 30, N'Dragon', N'Летуаль', N'Мужской парфюм', 5, 6, N'Одеколон Dragon Parfums Dragon Noir, 100 мл', NULL)
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Role], [FCs], [Login], [Pass]) VALUES (1, N'Администратор', N'Федоров Глеб Михайлович', N'o@outlook.com', N'2L6KZG')
INSERT [dbo].[User] ([Id], [Role], [FCs], [Login], [Pass]) VALUES (2, N'Администратор', N'Семенова Софья Дмитриевна', N'hr6zdl@yandex.ru', N'uzWC67')
INSERT [dbo].[User] ([Id], [Role], [FCs], [Login], [Pass]) VALUES (3, N'Администратор', N'Васильев Егор Германович', N'kaft93x@outlook.com', N'8ntwUp')
INSERT [dbo].[User] ([Id], [Role], [FCs], [Login], [Pass]) VALUES (4, N'Менеджер', N'Смирнова Ирина Александровна', N'dcu@yandex.ru', N'YOyhfR')
INSERT [dbo].[User] ([Id], [Role], [FCs], [Login], [Pass]) VALUES (5, N'Менеджер', N'Петров Андрей Владимирович', N'19dn@outlook.com', N'RSbvHv')
INSERT [dbo].[User] ([Id], [Role], [FCs], [Login], [Pass]) VALUES (6, N'Менеджер', N'Егоров Максим Андреевич', N'pa5h@mail.ru', N'rwVDh9')
INSERT [dbo].[User] ([Id], [Role], [FCs], [Login], [Pass]) VALUES (7, N'Клиент', N'Никитин Артур Алексеевич', N'281av0@gmail.com', N'LdNyos')
INSERT [dbo].[User] ([Id], [Role], [FCs], [Login], [Pass]) VALUES (8, N'Клиент', N'Киселев Максим Сергеевич', N'8edmfh@outlook.com', N'gynQMT')
INSERT [dbo].[User] ([Id], [Role], [FCs], [Login], [Pass]) VALUES (9, N'Клиент', N'Борисов Тимур Егорович', N'sfn13i@mail.ru', N'AtnDjr')
INSERT [dbo].[User] ([Id], [Role], [FCs], [Login], [Pass]) VALUES (10, N'Клиент', N'Климов Арсений Тимурович', N'g0orc3x1@outlook.com', N'JlFRCZ')
INSERT [dbo].[User] ([Id], [Role], [FCs], [Login], [Pass]) VALUES (11, N'Клиент', N'VasMax', N'max', N'123')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Product] FOREIGN KEY([ArticleProduct])
REFERENCES [dbo].[Product] ([Article])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Product]
GO
