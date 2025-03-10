USE [masterPoll_431_lenchuk]
GO
/****** Object:  Table [dbo].[adress]    Script Date: 05.03.2025 16:43:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adress](
	[id] [int] NOT NULL,
	[idIndex] [int] NOT NULL,
	[idArea] [int] NOT NULL,
	[idCity] [int] NOT NULL,
	[idStreet] [int] NOT NULL,
	[house] [int] NOT NULL,
 CONSTRAINT [PK_adress] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[area]    Script Date: 05.03.2025 16:43:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[area](
	[id] [int] NOT NULL,
	[areaName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_area] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[city]    Script Date: 05.03.2025 16:43:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[city](
	[id] [int] NOT NULL,
	[cityName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_city] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[indexes]    Script Date: 05.03.2025 16:43:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[indexes](
	[id] [int] NOT NULL,
	[indexesName] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_indexes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mainProducts]    Script Date: 05.03.2025 16:43:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mainProducts](
	[id] [int] NOT NULL,
	[idType] [int] NOT NULL,
	[idProducts] [int] NOT NULL,
	[article] [nvarchar](50) NOT NULL,
	[minPriceForPartner] [decimal](18, 2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materialType]    Script Date: 05.03.2025 16:43:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materialType](
	[id] [int] NOT NULL,
	[type] [nvarchar](50) NOT NULL,
	[breakPercentage] [decimal](18, 4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[partnerProducts]    Script Date: 05.03.2025 16:43:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[partnerProducts](
	[id] [int] NOT NULL,
	[idProduct] [int] NOT NULL,
	[idProductPartner] [int] NOT NULL,
	[productAmount] [int] NOT NULL,
	[sellDate] [date] NOT NULL,
 CONSTRAINT [PK_partnerProducts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[partners]    Script Date: 05.03.2025 16:43:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[partners](
	[id] [int] NOT NULL,
	[idPartnerType] [int] NOT NULL,
	[idProductPartner] [int] NOT NULL,
	[director] [nvarchar](100) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
	[idAdress] [nvarchar](50) NOT NULL,
	[INN] [nvarchar](50) NOT NULL,
	[rating] [int] NOT NULL,
 CONSTRAINT [PK_partners] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[partnerType]    Script Date: 05.03.2025 16:43:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[partnerType](
	[id] [int] NOT NULL,
	[partnerTypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_partnerType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productPartners]    Script Date: 05.03.2025 16:43:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productPartners](
	[id] [int] NOT NULL,
	[productPartnersName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_productPartners] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 05.03.2025 16:43:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] NOT NULL,
	[productsName] [nvarchar](90) NOT NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productType]    Script Date: 05.03.2025 16:43:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productType](
	[id] [int] NOT NULL,
	[idType] [int] NOT NULL,
	[typeFactor] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_productType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[street]    Script Date: 05.03.2025 16:43:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[street](
	[id] [int] NOT NULL,
	[streetName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_street] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type]    Script Date: 05.03.2025 16:43:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type](
	[id] [int] NOT NULL,
	[typeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[adress] ([id], [idIndex], [idArea], [idCity], [idStreet], [house]) VALUES (1, 5, 3, 5, 1, 15)
INSERT [dbo].[adress] ([id], [idIndex], [idArea], [idCity], [idStreet], [house]) VALUES (2, 2, 1, 3, 5, 18)
INSERT [dbo].[adress] ([id], [idIndex], [idArea], [idCity], [idStreet], [house]) VALUES (3, 3, 4, 1, 2, 21)
INSERT [dbo].[adress] ([id], [idIndex], [idArea], [idCity], [idStreet], [house]) VALUES (4, 1, 5, 2, 4, 51)
INSERT [dbo].[adress] ([id], [idIndex], [idArea], [idCity], [idStreet], [house]) VALUES (5, 4, 2, 4, 3, 122)
GO
INSERT [dbo].[area] ([id], [areaName]) VALUES (1, N' Архангельская область')
INSERT [dbo].[area] ([id], [areaName]) VALUES (2, N' Белгородская область')
INSERT [dbo].[area] ([id], [areaName]) VALUES (3, N' Кемеровская область')
INSERT [dbo].[area] ([id], [areaName]) VALUES (4, N' Ленинградская область')
INSERT [dbo].[area] ([id], [areaName]) VALUES (5, N' Московская область')
GO
INSERT [dbo].[city] ([id], [cityName]) VALUES (1, N' город Приморск')
INSERT [dbo].[city] ([id], [cityName]) VALUES (2, N' город Реутов')
INSERT [dbo].[city] ([id], [cityName]) VALUES (3, N' город Северодвинск')
INSERT [dbo].[city] ([id], [cityName]) VALUES (4, N' город Старый Оскол')
INSERT [dbo].[city] ([id], [cityName]) VALUES (5, N' город Юрга')
GO
INSERT [dbo].[indexes] ([id], [indexesName]) VALUES (1, N'143960')
INSERT [dbo].[indexes] ([id], [indexesName]) VALUES (2, N'164500')
INSERT [dbo].[indexes] ([id], [indexesName]) VALUES (3, N'188910')
INSERT [dbo].[indexes] ([id], [indexesName]) VALUES (4, N'309500')
INSERT [dbo].[indexes] ([id], [indexesName]) VALUES (5, N'652050')
GO
INSERT [dbo].[mainProducts] ([id], [idType], [idProducts], [article], [minPriceForPartner]) VALUES (1, 3, 4, N'8758385', CAST(4456.90 AS Decimal(18, 2)))
INSERT [dbo].[mainProducts] ([id], [idType], [idProducts], [article], [minPriceForPartner]) VALUES (2, 3, 1, N'8858958', CAST(7330.99 AS Decimal(18, 2)))
INSERT [dbo].[mainProducts] ([id], [idType], [idProducts], [article], [minPriceForPartner]) VALUES (3, 1, 2, N'7750282', CAST(1799.33 AS Decimal(18, 2)))
INSERT [dbo].[mainProducts] ([id], [idType], [idProducts], [article], [minPriceForPartner]) VALUES (4, 1, 3, N'7028748', CAST(3890.41 AS Decimal(18, 2)))
INSERT [dbo].[mainProducts] ([id], [idType], [idProducts], [article], [minPriceForPartner]) VALUES (5, 4, 5, N'5012543', CAST(5450.59 AS Decimal(18, 2)))
GO
INSERT [dbo].[materialType] ([id], [type], [breakPercentage]) VALUES (1, N'Тип материала 1', CAST(0.0010 AS Decimal(18, 4)))
INSERT [dbo].[materialType] ([id], [type], [breakPercentage]) VALUES (2, N'Тип материала 2', CAST(0.0095 AS Decimal(18, 4)))
INSERT [dbo].[materialType] ([id], [type], [breakPercentage]) VALUES (3, N'Тип материала 3', CAST(0.0028 AS Decimal(18, 4)))
INSERT [dbo].[materialType] ([id], [type], [breakPercentage]) VALUES (4, N'Тип материала 4', CAST(0.0055 AS Decimal(18, 4)))
INSERT [dbo].[materialType] ([id], [type], [breakPercentage]) VALUES (5, N'Тип материала 5', CAST(0.0034 AS Decimal(18, 4)))
GO
INSERT [dbo].[partnerProducts] ([id], [idProduct], [idProductPartner], [productAmount], [sellDate]) VALUES (1, 4, 1, 15500, CAST(N'2023-03-23' AS Date))
INSERT [dbo].[partnerProducts] ([id], [idProduct], [idProductPartner], [productAmount], [sellDate]) VALUES (2, 2, 1, 12350, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[partnerProducts] ([id], [idProduct], [idProductPartner], [productAmount], [sellDate]) VALUES (3, 3, 1, 37400, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[partnerProducts] ([id], [idProduct], [idProductPartner], [productAmount], [sellDate]) VALUES (4, 1, 3, 35000, CAST(N'2022-12-02' AS Date))
INSERT [dbo].[partnerProducts] ([id], [idProduct], [idProductPartner], [productAmount], [sellDate]) VALUES (5, 5, 3, 1250, CAST(N'2023-05-17' AS Date))
INSERT [dbo].[partnerProducts] ([id], [idProduct], [idProductPartner], [productAmount], [sellDate]) VALUES (6, 2, 3, 1000, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[partnerProducts] ([id], [idProduct], [idProductPartner], [productAmount], [sellDate]) VALUES (7, 4, 3, 7550, CAST(N'2024-07-01' AS Date))
INSERT [dbo].[partnerProducts] ([id], [idProduct], [idProductPartner], [productAmount], [sellDate]) VALUES (8, 4, 5, 7250, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[partnerProducts] ([id], [idProduct], [idProductPartner], [productAmount], [sellDate]) VALUES (9, 1, 5, 2500, CAST(N'2024-07-05' AS Date))
INSERT [dbo].[partnerProducts] ([id], [idProduct], [idProductPartner], [productAmount], [sellDate]) VALUES (10, 3, 4, 59050, CAST(N'2023-03-20' AS Date))
INSERT [dbo].[partnerProducts] ([id], [idProduct], [idProductPartner], [productAmount], [sellDate]) VALUES (11, 2, 4, 37200, CAST(N'2024-03-12' AS Date))
INSERT [dbo].[partnerProducts] ([id], [idProduct], [idProductPartner], [productAmount], [sellDate]) VALUES (12, 5, 4, 4500, CAST(N'2024-05-14' AS Date))
INSERT [dbo].[partnerProducts] ([id], [idProduct], [idProductPartner], [productAmount], [sellDate]) VALUES (13, 2, 2, 50000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[partnerProducts] ([id], [idProduct], [idProductPartner], [productAmount], [sellDate]) VALUES (14, 3, 2, 670000, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[partnerProducts] ([id], [idProduct], [idProductPartner], [productAmount], [sellDate]) VALUES (15, 4, 2, 35000, CAST(N'2024-04-15' AS Date))
INSERT [dbo].[partnerProducts] ([id], [idProduct], [idProductPartner], [productAmount], [sellDate]) VALUES (16, 1, 2, 25000, CAST(N'2024-06-12' AS Date))
GO
INSERT [dbo].[partners] ([id], [idPartnerType], [idProductPartner], [director], [email], [phone], [idAdress], [INN], [rating]) VALUES (1, 1, 1, N'Иванова Александра Ивановна', N'aleksandraivanova@ml.ru', N'(493) 123-4567', N'5', N'2222455179', 7)
INSERT [dbo].[partners] ([id], [idPartnerType], [idProductPartner], [director], [email], [phone], [idAdress], [INN], [rating]) VALUES (2, 3, 3, N'Петров Василий Петрович', N'vppetrov@vl.ru', N'(987) 123-5678', N'2', N'3333888520', 7)
INSERT [dbo].[partners] ([id], [idPartnerType], [idProductPartner], [director], [email], [phone], [idAdress], [INN], [rating]) VALUES (3, 4, 5, N'Соловьев Андрей Николаевич', N'ansolovev@st.ru', N'(812) 223-3200', N'3', N'4440391035', 7)
INSERT [dbo].[partners] ([id], [idPartnerType], [idProductPartner], [director], [email], [phone], [idAdress], [INN], [rating]) VALUES (4, 2, 4, N'Воробьева Екатерина Валерьевна', N'ekaterina.vorobeva@ml.ru', N'(444) 222-3311', N'1', N'1111520857', 5)
INSERT [dbo].[partners] ([id], [idPartnerType], [idProductPartner], [director], [email], [phone], [idAdress], [INN], [rating]) VALUES (5, 1, 2, N'Степанов Степан Сергеевич', N'stepanov@stepan.ru', N'(912) 888-3333', N'4', N'5552431140', 10)
GO
INSERT [dbo].[partnerType] ([id], [partnerTypeName]) VALUES (1, N'ЗАО')
INSERT [dbo].[partnerType] ([id], [partnerTypeName]) VALUES (2, N'ОАО')
INSERT [dbo].[partnerType] ([id], [partnerTypeName]) VALUES (3, N'ООО')
INSERT [dbo].[partnerType] ([id], [partnerTypeName]) VALUES (4, N'ПАО')
GO
INSERT [dbo].[productPartners] ([id], [productPartnersName]) VALUES (1, N'База Строитель')
INSERT [dbo].[productPartners] ([id], [productPartnersName]) VALUES (2, N'МонтажПро')
INSERT [dbo].[productPartners] ([id], [productPartnersName]) VALUES (3, N'Паркет 29')
INSERT [dbo].[productPartners] ([id], [productPartnersName]) VALUES (4, N'Ремонт и отделка')
INSERT [dbo].[productPartners] ([id], [productPartnersName]) VALUES (5, N'Стройсервис')
GO
INSERT [dbo].[products] ([id], [productsName]) VALUES (1, N'Инженерная доска Дуб Французская елка однополосная 12 мм')
INSERT [dbo].[products] ([id], [productsName]) VALUES (2, N'Ламинат Дуб дымчато-белый 33 класс 12 мм')
INSERT [dbo].[products] ([id], [productsName]) VALUES (3, N'Ламинат Дуб серый 32 класс 8 мм с фаской')
INSERT [dbo].[products] ([id], [productsName]) VALUES (4, N'Паркетная доска Ясень темный однополосная 14 мм')
INSERT [dbo].[products] ([id], [productsName]) VALUES (5, N'Пробковое напольное клеевое покрытие 32 класс 4 мм')
GO
INSERT [dbo].[productType] ([id], [idType], [typeFactor]) VALUES (1, 1, CAST(2.35 AS Decimal(18, 2)))
INSERT [dbo].[productType] ([id], [idType], [typeFactor]) VALUES (2, 2, CAST(5.15 AS Decimal(18, 2)))
INSERT [dbo].[productType] ([id], [idType], [typeFactor]) VALUES (3, 3, CAST(4.34 AS Decimal(18, 2)))
INSERT [dbo].[productType] ([id], [idType], [typeFactor]) VALUES (4, 4, CAST(1.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[street] ([id], [streetName]) VALUES (1, N' ул. Лесная')
INSERT [dbo].[street] ([id], [streetName]) VALUES (2, N' ул. Парковая')
INSERT [dbo].[street] ([id], [streetName]) VALUES (3, N' ул. Рабочая')
INSERT [dbo].[street] ([id], [streetName]) VALUES (4, N' ул. Свободы')
INSERT [dbo].[street] ([id], [streetName]) VALUES (5, N' ул. Строителей')
GO
INSERT [dbo].[type] ([id], [typeName]) VALUES (1, N'Ламинат')
INSERT [dbo].[type] ([id], [typeName]) VALUES (2, N'Массивная доска')
INSERT [dbo].[type] ([id], [typeName]) VALUES (3, N'Паркетная доска')
INSERT [dbo].[type] ([id], [typeName]) VALUES (4, N'Пробковое покрытие')
GO
ALTER TABLE [dbo].[adress]  WITH CHECK ADD  CONSTRAINT [FK_adress_area] FOREIGN KEY([idArea])
REFERENCES [dbo].[area] ([id])
GO
ALTER TABLE [dbo].[adress] CHECK CONSTRAINT [FK_adress_area]
GO
ALTER TABLE [dbo].[adress]  WITH CHECK ADD  CONSTRAINT [FK_adress_city] FOREIGN KEY([idCity])
REFERENCES [dbo].[city] ([id])
GO
ALTER TABLE [dbo].[adress] CHECK CONSTRAINT [FK_adress_city]
GO
ALTER TABLE [dbo].[adress]  WITH CHECK ADD  CONSTRAINT [FK_adress_indexes] FOREIGN KEY([idIndex])
REFERENCES [dbo].[indexes] ([id])
GO
ALTER TABLE [dbo].[adress] CHECK CONSTRAINT [FK_adress_indexes]
GO
ALTER TABLE [dbo].[adress]  WITH CHECK ADD  CONSTRAINT [FK_adress_street] FOREIGN KEY([idStreet])
REFERENCES [dbo].[street] ([id])
GO
ALTER TABLE [dbo].[adress] CHECK CONSTRAINT [FK_adress_street]
GO
ALTER TABLE [dbo].[mainProducts]  WITH CHECK ADD  CONSTRAINT [FK_mainProducts_products] FOREIGN KEY([idProducts])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[mainProducts] CHECK CONSTRAINT [FK_mainProducts_products]
GO
ALTER TABLE [dbo].[mainProducts]  WITH CHECK ADD  CONSTRAINT [FK_mainProducts_type] FOREIGN KEY([idType])
REFERENCES [dbo].[type] ([id])
GO
ALTER TABLE [dbo].[mainProducts] CHECK CONSTRAINT [FK_mainProducts_type]
GO
ALTER TABLE [dbo].[partnerProducts]  WITH CHECK ADD  CONSTRAINT [FK_partnerProducts_productPartners] FOREIGN KEY([idProductPartner])
REFERENCES [dbo].[productPartners] ([id])
GO
ALTER TABLE [dbo].[partnerProducts] CHECK CONSTRAINT [FK_partnerProducts_productPartners]
GO
ALTER TABLE [dbo].[partnerProducts]  WITH CHECK ADD  CONSTRAINT [FK_partnerProducts_products] FOREIGN KEY([idProduct])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[partnerProducts] CHECK CONSTRAINT [FK_partnerProducts_products]
GO
ALTER TABLE [dbo].[partners]  WITH CHECK ADD  CONSTRAINT [FK_partners_partners] FOREIGN KEY([id])
REFERENCES [dbo].[partners] ([id])
GO
ALTER TABLE [dbo].[partners] CHECK CONSTRAINT [FK_partners_partners]
GO
ALTER TABLE [dbo].[partners]  WITH CHECK ADD  CONSTRAINT [FK_partners_partnerType] FOREIGN KEY([idPartnerType])
REFERENCES [dbo].[partnerType] ([id])
GO
ALTER TABLE [dbo].[partners] CHECK CONSTRAINT [FK_partners_partnerType]
GO
ALTER TABLE [dbo].[partners]  WITH CHECK ADD  CONSTRAINT [FK_partners_productPartners] FOREIGN KEY([idProductPartner])
REFERENCES [dbo].[productPartners] ([id])
GO
ALTER TABLE [dbo].[partners] CHECK CONSTRAINT [FK_partners_productPartners]
GO
ALTER TABLE [dbo].[productType]  WITH CHECK ADD  CONSTRAINT [FK_productType_type] FOREIGN KEY([idType])
REFERENCES [dbo].[type] ([id])
GO
ALTER TABLE [dbo].[productType] CHECK CONSTRAINT [FK_productType_type]
GO
