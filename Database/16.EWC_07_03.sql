USE [master]
GO
/****** Object:  Database [EWC]    Script Date: 03/07/2014 10:42:28 ******/
CREATE DATABASE [EWC] ON  PRIMARY 
( NAME = N'EWC', FILENAME = N'C:\Users\Lubu\Dropbox\SQL Server 2010 R2 - DB Backup\Data\EWC.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EWC_log', FILENAME = N'C:\Users\Lubu\Dropbox\SQL Server 2010 R2 - DB Backup\Log\EWC_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EWC] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EWC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EWC] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [EWC] SET ANSI_NULLS OFF
GO
ALTER DATABASE [EWC] SET ANSI_PADDING OFF
GO
ALTER DATABASE [EWC] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [EWC] SET ARITHABORT OFF
GO
ALTER DATABASE [EWC] SET AUTO_CLOSE ON
GO
ALTER DATABASE [EWC] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [EWC] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [EWC] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [EWC] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [EWC] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [EWC] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [EWC] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [EWC] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [EWC] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [EWC] SET  DISABLE_BROKER
GO
ALTER DATABASE [EWC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [EWC] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [EWC] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [EWC] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [EWC] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [EWC] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [EWC] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [EWC] SET  READ_WRITE
GO
ALTER DATABASE [EWC] SET RECOVERY SIMPLE
GO
ALTER DATABASE [EWC] SET  MULTI_USER
GO
ALTER DATABASE [EWC] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [EWC] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'EWC', N'ON'
GO
USE [EWC]
GO
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 03/07/2014 10:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 03/07/2014 10:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_OAuthMembership](
	[Provider] [nvarchar](30) NOT NULL,
	[ProviderUserId] [nvarchar](100) NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Provider] ASC,
	[ProviderUserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 03/07/2014 10:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Membership](
	[UserId] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[ConfirmationToken] [nvarchar](128) NULL,
	[IsConfirmed] [bit] NULL,
	[LastPasswordFailureDate] [datetime] NULL,
	[PasswordFailuresSinceLastSuccess] [int] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordChangedDate] [datetime] NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[PasswordVerificationToken] [nvarchar](128) NULL,
	[PasswordVerificationTokenExpirationDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 03/07/2014 10:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](56) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Telephone] [nvarchar](20) NULL,
	[Address] [nvarchar](max) NULL,
	[IsFemale] [bit] NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK__UserProf__1788CC4C571DF1D5] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__UserProf__C9F2845659FA5E80] UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserProfile] ON
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FullName], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (1, N'camvan', N'Cẩm Vân', N'camvan@gmail.com', N'0938228754', N'Q1, Hồ Chí Minh', 1, CAST(0x1A080B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FullName], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (4, N'dau bep nguyen van a', N'aaaa', N'aaaaa', N'3123', N'aaaaa', 1, CAST(0x09A90B00 AS Date), 1)
SET IDENTITY_INSERT [dbo].[UserProfile] OFF
/****** Object:  Table [dbo].[Tag]    Script Date: 03/07/2014 10:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tag] ON
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (1, N'Nothing')
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (2, N'something')
SET IDENTITY_INSERT [dbo].[Tag] OFF
/****** Object:  Table [dbo].[SupplierCategory]    Script Date: 03/07/2014 10:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[IsAvailable] [bit] NULL,
 CONSTRAINT [PK_SupplierCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SupplierCategory] ON
INSERT [dbo].[SupplierCategory] ([Id], [Name], [IsAvailable]) VALUES (1, N'Big Commercial', 1)
INSERT [dbo].[SupplierCategory] ([Id], [Name], [IsAvailable]) VALUES (2, N'Small Commercial', 1)
SET IDENTITY_INSERT [dbo].[SupplierCategory] OFF
/****** Object:  Table [dbo].[Menu]    Script Date: 03/07/2014 10:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ApplyDate] [datetime] NOT NULL,
	[IsAvailable] [bit] NOT NULL,
	[ClosedTimeSession] [datetime] NOT NULL,
 CONSTRAINT [PK__Menu__3214EC07182C9B23] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Menu] ON
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (1, N'Menu ngày 21/02/2014', N'Menu', CAST(0x0000A2E500000000 AS DateTime), 1, CAST(0x0000A2DF00000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (2, N'Menu 29/01', N'nothing', CAST(0x0000A2C200000000 AS DateTime), 0, CAST(0x0000A2C200000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (3, N'Menu 07/02', N'nothing', CAST(0x0000A2CB00000000 AS DateTime), 0, CAST(0x0000A2CB00000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (4, N'Menu 31/01', N'nothing', CAST(0x0000A2C400000000 AS DateTime), 0, CAST(0x0000A2C400000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (5, N'Menu 06/02', N'nothing', CAST(0x0000A2CA00000000 AS DateTime), 0, CAST(0x0000A2CA00000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (6, N'Menu 26/02', N'nothing', CAST(0x0000A2FA00000000 AS DateTime), 1, CAST(0x0000A2FA00000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (7, N'Menu 27/02', N'nothing', CAST(0x0000A2FB00000000 AS DateTime), 0, CAST(0x0000A2FB00000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (8, N'Menu 04/03', N'nothing', CAST(0x0000A2E400000000 AS DateTime), 1, CAST(0x0000A2FC00000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (9, N'Menu 01/03', N'nothing', CAST(0x0000A2E100000000 AS DateTime), 1, CAST(0x0000A2E100000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (10, N'Menu 20/03', N'nothing', CAST(0x0000A2F400000000 AS DateTime), 1, CAST(0x0000A2F400000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (11, N'Menu 22/03', N'nothing', CAST(0x0000A2F600000000 AS DateTime), 1, CAST(0x0000A2F600000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Menu] OFF
/****** Object:  Table [dbo].[Chef]    Script Date: 03/07/2014 10:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chef](
	[UserID] [int] NOT NULL,
	[ImageURL] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Rate] [float] NOT NULL,
	[NumberOfRate] [int] NOT NULL,
 CONSTRAINT [PK__Chef__1788CCAC0519C6AF] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Chef] ([UserID], [ImageURL], [Description], [Rate], [NumberOfRate]) VALUES (1, NULL, N'Cẩm Vân chef', 4.5, 0)
INSERT [dbo].[Chef] ([UserID], [ImageURL], [Description], [Rate], [NumberOfRate]) VALUES (2, NULL, N'nguyen van a', 4, 0)
/****** Object:  Table [dbo].[IngredientCategory]    Script Date: 03/07/2014 10:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IngredientCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[IsAvailable] [bit] NOT NULL,
 CONSTRAINT [PK__Ingredie__3214EC2703317E3D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[IngredientCategory] ON
INSERT [dbo].[IngredientCategory] ([Id], [Name], [IsAvailable]) VALUES (1, N'Meat', 1)
INSERT [dbo].[IngredientCategory] ([Id], [Name], [IsAvailable]) VALUES (2, N'Vegetables', 1)
SET IDENTITY_INSERT [dbo].[IngredientCategory] OFF
/****** Object:  Table [dbo].[DishCategory]    Script Date: 03/07/2014 10:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DishCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NOT NULL,
	[IsAvailable] [bit] NOT NULL,
 CONSTRAINT [PK__DishCate__3214EC07117F9D94] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DishCategory] ON
INSERT [dbo].[DishCategory] ([Id], [Name], [Description], [Image], [IsAvailable]) VALUES (1, N'Món ăn chính', N'Nullam id dolor id niltricies vehicula ut id elit. osuer e consectetu. Aliquauam sollicitudin hendrerit.', N'/Content/frontend/images/banner-img-5.jpg', 1)
INSERT [dbo].[DishCategory] ([Id], [Name], [Description], [Image], [IsAvailable]) VALUES (3, N'Sides', N'Discover fresh weeknight dinner', N'/Content/frontend/images/banner-img-6.jpg', 1)
INSERT [dbo].[DishCategory] ([Id], [Name], [Description], [Image], [IsAvailable]) VALUES (4, N'Thức ăn trẻ em', N'Foods good for kids', N'/Content/frontend/images/banner-img-4.jpg', 1)
INSERT [dbo].[DishCategory] ([Id], [Name], [Description], [Image], [IsAvailable]) VALUES (5, N'Món tráng miệng', N'Món tráng miệng ngon', N'/Content/frontend/images/banner-img-3.jpg', 0)
INSERT [dbo].[DishCategory] ([Id], [Name], [Description], [Image], [IsAvailable]) VALUES (6, N'Nước uống', N'Nước uống trái cây', N'/Content/frontend/images/banner-img-2.jpg', 1)
SET IDENTITY_INSERT [dbo].[DishCategory] OFF
/****** Object:  Table [dbo].[Dish]    Script Date: 03/07/2014 10:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dish](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[ChefID] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Price] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CookingGuide] [nvarchar](max) NOT NULL,
	[Rate] [float] NOT NULL,
	[IsAvailable] [bit] NOT NULL,
	[NumberOfRate] [int] NOT NULL,
	[NumOfOrderQua1] [int] NOT NULL,
	[NumOfOrderQua2] [int] NOT NULL,
	[NumOfOrderQua3] [int] NOT NULL,
	[NumOfOrderQua4] [int] NOT NULL,
	[Year] [int] NOT NULL,
 CONSTRAINT [PK__Dish__3214EC0721B6055D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Dish] ON
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (1, N'Gà quay', 1, 1, N'default-image.png', 50000, N'Tofu is marinated in garlic, ginger, and soy sauce over night. Then tossed in flour & corn starch mix and deep fried. Green beans are blanched and tossed in spicy peanut sauce.', N'not now', 4.5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (2, N'Bò bít tết', 1, 1, N'default-image.png', 60000, N'Nullam id dolor id niltricies vehicula ut id elit. osuer e consectetu. Aliquauam sollicitudin hendrerit.', N'not now', 5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (3, N'Bò nướng', 1, 1, N'default-image.png', 40000, N'ICROWAVE: Heat the rest of the items for 2-3 minutes (timing varies depending on your microwave) or until hot. Pour the sauce to Tofu or dip in.', N'not now', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (4, N'Cà ri gà', 1, 1, N'default-image.png', 65000, N'Pork shoulder braised with sweet Spanish peppers, fennel and porcini mushrooms until very tender. Finished with baby kale, butter and Parmesan to finish.', N'not now', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (5, N'Cơm chiên', 1, 1, N'default-image.png', 37000, N'Ultimate Japanese comfort food on cold winter nights! Chicken curry is cooked with yellow onions, carrots, bonito and kombu dashi. Chewy Udon noodles are done al dente. A bit of spice in curry keeps you warm all night.', N'not now', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (6, N'Xà lách trộn', 1, 1, N'default-image.png', 48000, N'Grilled Atlantic salmon (seasoned with 70% extra virgin olive oil, 30% corn oil and kosher salt), Italian mixed greens from County Line Harvest, organic chickpeas (garbanzo beans), and organic chioggia beets (seasoned with maldon sea salt & extra virgin olive oil). Served with chunky citrus vinaigrette.', N'not now', 5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (7, N'Gà rán', 1, 1, N'default-image.png', 52000, N'Chicken is lightly pan fried in oil. Mushroom sauce is made with sautéed mushrooms, chicken stock, herbs, garlic & marsala.', N'not now', 4.5, 1, 0, 0, 0, 0, 0, 2014)
SET IDENTITY_INSERT [dbo].[Dish] OFF
/****** Object:  Table [dbo].[Ingredient]    Script Date: 03/07/2014 10:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredient](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Category] [int] NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[IsTracibility] [bit] NOT NULL,
	[IsAvailable] [bit] NOT NULL,
 CONSTRAINT [PK__Ingredie__3214EC07276EDEB3] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ingredient] ON
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (4, N'Bò gân', 1, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (5, N'Bò thịt', 1, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (6, N'Rau sống', 2, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (9, N'Giò heo', 1, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (10, N'Thịt heo nạc', 1, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (12, N'Thịt heo ba rọi', 1, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (13, N'Đùi gà', 1, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (14, N'Cánh gà', 1, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (15, N'Chân gà', 1, N'default-image.png', 1, 1)
SET IDENTITY_INSERT [dbo].[Ingredient] OFF
/****** Object:  Table [dbo].[Order]    Script Date: 03/07/2014 10:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ReceiverName] [nvarchar](250) NOT NULL,
	[ReceiverPhone] [nvarchar](20) NOT NULL,
	[ReceiverAddress] [nvarchar](max) NOT NULL,
	[ReceiverEmail] [nvarchar](max) NOT NULL,
	[TotalPayment] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[DeliveryDate] [datetime] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[OrderStatus] [int] NULL,
 CONSTRAINT [PK__Order__3214EC072D27B809] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT [dbo].[Order] ([Id], [UserID], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus]) VALUES (3, 1, N'aaaa', N'42424324324', N'dfsfzdfdfs', N'sfdsfdsf@sadfdsfds.com', 1111, CAST(0x0000A2F700000000 AS DateTime), CAST(0x0000A2F700000000 AS DateTime), N'nothing', 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
/****** Object:  Table [dbo].[Supplier]    Script Date: 03/07/2014 10:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Latitude] [float] NOT NULL,
	[Longitude] [float] NOT NULL,
	[IsAvailable] [bit] NOT NULL,
	[SupplierCategory] [int] NOT NULL,
 CONSTRAINT [PK__Supplier__3214EC07239E4DCF] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON
INSERT [dbo].[Supplier] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [IsAvailable], [SupplierCategory]) VALUES (1, N'Vissan', N'nothing', N'123213123', 123, 123, 1, 1)
INSERT [dbo].[Supplier] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [IsAvailable], [SupplierCategory]) VALUES (3, N'Nông Trại XXX', N'nothing', N'123123123', 123, 123, 1, 1)
SET IDENTITY_INSERT [dbo].[Supplier] OFF
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 03/07/2014 10:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_UsersInRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IngredientDish]    Script Date: 03/07/2014 10:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IngredientDish](
	[IngredientID] [int] NOT NULL,
	[DishID] [int] NOT NULL,
 CONSTRAINT [PK_IngredientDish] PRIMARY KEY CLUSTERED 
(
	[IngredientID] ASC,
	[DishID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (4, 1)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (4, 2)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (5, 1)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (5, 2)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (6, 1)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (6, 2)
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 03/07/2014 10:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [int] NOT NULL,
	[DishID] [int] NOT NULL,
 CONSTRAINT [PK__OrderDet__3214EC0730F848ED] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (1, 3, 5, 1000000, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (2, 3, 4, 11113, 2)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
/****** Object:  Table [dbo].[IngredientItem]    Script Date: 03/07/2014 10:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IngredientItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SupplierID] [int] NOT NULL,
	[IngredientID] [int] NOT NULL,
	[IsAvailable] [bit] NOT NULL,
	[IsDefaultSupplier] [bit] NOT NULL,
 CONSTRAINT [PK__Ingredie__3214EC072B3F6F97] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[IngredientItem] ON
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (1, 1, 4, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (2, 1, 5, 1, 0)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (3, 3, 6, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (4, 3, 4, 1, 0)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (5, 3, 5, 1, 1)
SET IDENTITY_INSERT [dbo].[IngredientItem] OFF
/****** Object:  Table [dbo].[DishTag]    Script Date: 03/07/2014 10:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DishTag](
	[DishID] [int] NOT NULL,
	[TagID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DishID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DishMenu]    Script Date: 03/07/2014 10:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DishMenu](
	[DishID] [int] NOT NULL,
	[MenuID] [int] NOT NULL,
	[DishPrice] [int] NOT NULL,
	[Quota] [int] NOT NULL,
 CONSTRAINT [PK__DishMenu__041AA2552C3393D0] PRIMARY KEY CLUSTERED 
(
	[DishID] ASC,
	[MenuID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (1, 8, 50000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (2, 8, 60000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (3, 1, 70000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (3, 2, 30000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (3, 3, 40000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (3, 4, 40000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (3, 7, 40000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (3, 8, 40000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (3, 9, 30000, 40)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (3, 10, 40000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (3, 11, 40000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (4, 8, 80000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (5, 1, 35000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (5, 6, 35000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (5, 8, 35000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (6, 8, 37000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (7, 1, 42000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (7, 2, 52000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (7, 3, 52000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (7, 4, 52000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (7, 7, 52000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (7, 8, 52000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (7, 9, 52000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (7, 10, 52000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (7, 11, 52000, 30)
/****** Object:  Table [dbo].[DishItem]    Script Date: 03/07/2014 10:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DishItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ChefID] [int] NOT NULL,
	[DishID] [int] NOT NULL,
	[OrderDetailID] [int] NULL,
	[QRCode] [nvarchar](max) NULL,
	[Quantity] [int] NOT NULL,
	[CookingTime] [datetime] NULL,
	[IsAvailable] [bit] NOT NULL,
 CONSTRAINT [PK__DishItem__3214EC070519C6AF] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DishItem] ON
INSERT [dbo].[DishItem] ([Id], [ChefID], [DishID], [OrderDetailID], [QRCode], [Quantity], [CookingTime], [IsAvailable]) VALUES (48, 1, 1, NULL, NULL, 5, CAST(0x0000A2E000AA39DA AS DateTime), 1)
INSERT [dbo].[DishItem] ([Id], [ChefID], [DishID], [OrderDetailID], [QRCode], [Quantity], [CookingTime], [IsAvailable]) VALUES (49, 1, 2, NULL, NULL, 4, CAST(0x0000A2E000AA3AEE AS DateTime), 1)
INSERT [dbo].[DishItem] ([Id], [ChefID], [DishID], [OrderDetailID], [QRCode], [Quantity], [CookingTime], [IsAvailable]) VALUES (50, 1, 2, NULL, N'00d4e869-bd9d-47fb-89cb-b95ab6ff5099.gif', 5, CAST(0x0000A2E000AA4C74 AS DateTime), 1)
INSERT [dbo].[DishItem] ([Id], [ChefID], [DishID], [OrderDetailID], [QRCode], [Quantity], [CookingTime], [IsAvailable]) VALUES (51, 1, 2, NULL, N'1990f2b3-c439-4e47-b155-71be3b66d3da.gif', 5, CAST(0x0000A2E000AB3062 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[DishItem] OFF
/****** Object:  Table [dbo].[IngredientDishItem]    Script Date: 03/07/2014 10:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IngredientDishItem](
	[DishItemID] [int] NOT NULL,
	[IngredientItemID] [int] NOT NULL,
 CONSTRAINT [PK_IngredientDishItem] PRIMARY KEY CLUSTERED 
(
	[DishItemID] ASC,
	[IngredientItemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (48, 1)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (48, 3)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (48, 5)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (49, 1)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (49, 3)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (49, 5)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (50, 1)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (50, 3)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (50, 5)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (51, 1)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (51, 3)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (51, 5)
/****** Object:  Default [DF__webpages___IsCon__36B12243]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [IsConfirmed]
GO
/****** Object:  Default [DF__webpages___Passw__37A5467C]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [PasswordFailuresSinceLastSuccess]
GO
/****** Object:  Default [DF_Chef_NumberOfRate]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[Chef] ADD  CONSTRAINT [DF_Chef_NumberOfRate]  DEFAULT ((0)) FOR [NumberOfRate]
GO
/****** Object:  Default [DF_Dish_Rate]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[Dish] ADD  CONSTRAINT [DF_Dish_Rate]  DEFAULT ((0)) FOR [Rate]
GO
/****** Object:  Default [DF_Dish_NumberOfRate]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[Dish] ADD  CONSTRAINT [DF_Dish_NumberOfRate]  DEFAULT ((0)) FOR [NumberOfRate]
GO
/****** Object:  Default [DF_Dish_NumOfOrderQua1]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[Dish] ADD  CONSTRAINT [DF_Dish_NumOfOrderQua1]  DEFAULT ((0)) FOR [NumOfOrderQua1]
GO
/****** Object:  Default [DF_Dish_NumOfOrderQua2]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[Dish] ADD  CONSTRAINT [DF_Dish_NumOfOrderQua2]  DEFAULT ((0)) FOR [NumOfOrderQua2]
GO
/****** Object:  Default [DF_Dish_NumOfOrderQua3]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[Dish] ADD  CONSTRAINT [DF_Dish_NumOfOrderQua3]  DEFAULT ((0)) FOR [NumOfOrderQua3]
GO
/****** Object:  Default [DF_Dish_NumOfOrderQua4]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[Dish] ADD  CONSTRAINT [DF_Dish_NumOfOrderQua4]  DEFAULT ((0)) FOR [NumOfOrderQua4]
GO
/****** Object:  Default [DF_DishItem_ChefID]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[DishItem] ADD  CONSTRAINT [DF_DishItem_ChefID]  DEFAULT ((1)) FOR [ChefID]
GO
/****** Object:  Default [DF_DishItem_IsAvailable]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[DishItem] ADD  CONSTRAINT [DF_DishItem_IsAvailable]  DEFAULT ((1)) FOR [IsAvailable]
GO
/****** Object:  ForeignKey [FK__Dish__Category__1B0907CE]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[Dish]  WITH CHECK ADD  CONSTRAINT [FK__Dish__Category__1B0907CE] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[DishCategory] ([Id])
GO
ALTER TABLE [dbo].[Dish] CHECK CONSTRAINT [FK__Dish__Category__1B0907CE]
GO
/****** Object:  ForeignKey [FK__Dish__ChefID__4AB81AF0]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[Dish]  WITH CHECK ADD  CONSTRAINT [FK__Dish__ChefID__4AB81AF0] FOREIGN KEY([ChefID])
REFERENCES [dbo].[Chef] ([UserID])
GO
ALTER TABLE [dbo].[Dish] CHECK CONSTRAINT [FK__Dish__ChefID__4AB81AF0]
GO
/****** Object:  ForeignKey [FK__Ingredien__Categ__08EA5793]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[Ingredient]  WITH CHECK ADD  CONSTRAINT [FK__Ingredien__Categ__08EA5793] FOREIGN KEY([Category])
REFERENCES [dbo].[IngredientCategory] ([Id])
GO
ALTER TABLE [dbo].[Ingredient] CHECK CONSTRAINT [FK__Ingredien__Categ__08EA5793]
GO
/****** Object:  ForeignKey [FK_Order_UserProfile]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_UserProfile] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_UserProfile]
GO
/****** Object:  ForeignKey [FK_Supplier_SupplierCategory]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_SupplierCategory] FOREIGN KEY([SupplierCategory])
REFERENCES [dbo].[SupplierCategory] ([Id])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_SupplierCategory]
GO
/****** Object:  ForeignKey [fk_RoleId]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
/****** Object:  ForeignKey [fk_UserId]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
GO
/****** Object:  ForeignKey [FK_IngredientDish_Dish]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[IngredientDish]  WITH CHECK ADD  CONSTRAINT [FK_IngredientDish_Dish] FOREIGN KEY([DishID])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[IngredientDish] CHECK CONSTRAINT [FK_IngredientDish_Dish]
GO
/****** Object:  ForeignKey [FK_IngredientDish_Ingredient]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[IngredientDish]  WITH CHECK ADD  CONSTRAINT [FK_IngredientDish_Ingredient] FOREIGN KEY([IngredientID])
REFERENCES [dbo].[Ingredient] ([Id])
GO
ALTER TABLE [dbo].[IngredientDish] CHECK CONSTRAINT [FK_IngredientDish_Ingredient]
GO
/****** Object:  ForeignKey [FK__OrderDeta__DishI__48CFD27E]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__DishI__48CFD27E] FOREIGN KEY([DishID])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__DishI__48CFD27E]
GO
/****** Object:  ForeignKey [FK__OrderDeta__Order__534D60F1]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Order__534D60F1] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__Order__534D60F1]
GO
/****** Object:  ForeignKey [FK__Ingredien__Suppl__4E88ABD4]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[IngredientItem]  WITH CHECK ADD  CONSTRAINT [FK__Ingredien__Suppl__4E88ABD4] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([Id])
GO
ALTER TABLE [dbo].[IngredientItem] CHECK CONSTRAINT [FK__Ingredien__Suppl__4E88ABD4]
GO
/****** Object:  ForeignKey [FK_IngredientItem_Ingredient]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[IngredientItem]  WITH CHECK ADD  CONSTRAINT [FK_IngredientItem_Ingredient] FOREIGN KEY([IngredientID])
REFERENCES [dbo].[Ingredient] ([Id])
GO
ALTER TABLE [dbo].[IngredientItem] CHECK CONSTRAINT [FK_IngredientItem_Ingredient]
GO
/****** Object:  ForeignKey [FK__DishTag__DishID__4CA06362]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[DishTag]  WITH CHECK ADD  CONSTRAINT [FK__DishTag__DishID__4CA06362] FOREIGN KEY([DishID])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[DishTag] CHECK CONSTRAINT [FK__DishTag__DishID__4CA06362]
GO
/****** Object:  ForeignKey [FK__DishTag__TagID__4E88ABD4]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[DishTag]  WITH CHECK ADD FOREIGN KEY([TagID])
REFERENCES [dbo].[Tag] ([Id])
GO
/****** Object:  ForeignKey [FK__DishMenu__DishID__2E1BDC42]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[DishMenu]  WITH CHECK ADD  CONSTRAINT [FK__DishMenu__DishID__2E1BDC42] FOREIGN KEY([DishID])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[DishMenu] CHECK CONSTRAINT [FK__DishMenu__DishID__2E1BDC42]
GO
/****** Object:  ForeignKey [FK__DishMenu__MenuID__2F10007B]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[DishMenu]  WITH CHECK ADD  CONSTRAINT [FK__DishMenu__MenuID__2F10007B] FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([Id])
GO
ALTER TABLE [dbo].[DishMenu] CHECK CONSTRAINT [FK__DishMenu__MenuID__2F10007B]
GO
/****** Object:  ForeignKey [FK_DishItem_Chef]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[DishItem]  WITH CHECK ADD  CONSTRAINT [FK_DishItem_Chef] FOREIGN KEY([ChefID])
REFERENCES [dbo].[Chef] ([UserID])
GO
ALTER TABLE [dbo].[DishItem] CHECK CONSTRAINT [FK_DishItem_Chef]
GO
/****** Object:  ForeignKey [FK_DishItem_Dish]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[DishItem]  WITH CHECK ADD  CONSTRAINT [FK_DishItem_Dish] FOREIGN KEY([DishID])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[DishItem] CHECK CONSTRAINT [FK_DishItem_Dish]
GO
/****** Object:  ForeignKey [FK_DishItem_OrderDetail]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[DishItem]  WITH CHECK ADD  CONSTRAINT [FK_DishItem_OrderDetail] FOREIGN KEY([OrderDetailID])
REFERENCES [dbo].[OrderDetail] ([Id])
GO
ALTER TABLE [dbo].[DishItem] CHECK CONSTRAINT [FK_DishItem_OrderDetail]
GO
/****** Object:  ForeignKey [FK_IngredientDishItem_DishItem]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[IngredientDishItem]  WITH CHECK ADD  CONSTRAINT [FK_IngredientDishItem_DishItem] FOREIGN KEY([DishItemID])
REFERENCES [dbo].[DishItem] ([Id])
GO
ALTER TABLE [dbo].[IngredientDishItem] CHECK CONSTRAINT [FK_IngredientDishItem_DishItem]
GO
/****** Object:  ForeignKey [FK_IngredientDishItem_IngredientItem]    Script Date: 03/07/2014 10:42:29 ******/
ALTER TABLE [dbo].[IngredientDishItem]  WITH CHECK ADD  CONSTRAINT [FK_IngredientDishItem_IngredientItem] FOREIGN KEY([IngredientItemID])
REFERENCES [dbo].[IngredientItem] ([Id])
GO
ALTER TABLE [dbo].[IngredientDishItem] CHECK CONSTRAINT [FK_IngredientDishItem_IngredientItem]
GO
