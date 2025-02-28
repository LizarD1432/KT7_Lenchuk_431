USE [masterPoll_431_lenchuk]
GO
/****** Object:  Table [dbo].[materialType]    Script Date: 28.02.2025 14:43:36 ******/
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
/****** Object:  Table [dbo].[partnerProducts]    Script Date: 28.02.2025 14:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[partnerProducts](
	[id] [int] NOT NULL,
	[idProduct] [int] NOT NULL,
	[idProductPartner] [int] NOT NULL,
	[productAmount] [int] NOT NULL,
	[sellDate] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[partners]    Script Date: 28.02.2025 14:43:37 ******/
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
	[rating] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productPartners]    Script Date: 28.02.2025 14:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productPartners](
	[id] [int] NOT NULL,
	[productPartnersName] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productType]    Script Date: 28.02.2025 14:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productType](
	[id] [int] NOT NULL,
	[idType] [int] NOT NULL,
	[typeFactor] [decimal](18, 2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type]    Script Date: 28.02.2025 14:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type](
	[id] [int] NOT NULL,
	[typeName] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
