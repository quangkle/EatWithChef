USE [master]
GO
/****** Object:  Database [EWC]    Script Date: 03/10/2014 16:23:21 ******/
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
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 03/10/2014 16:23:23 ******/
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
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 03/10/2014 16:23:23 ******/
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
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 03/10/2014 16:23:23 ******/
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
/****** Object:  Table [dbo].[UserProfile]    Script Date: 03/10/2014 16:23:23 ******/
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
/****** Object:  Table [dbo].[Tag]    Script Date: 03/10/2014 16:23:23 ******/
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
/****** Object:  Table [dbo].[SupplierCategory]    Script Date: 03/10/2014 16:23:23 ******/
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
/****** Object:  Table [dbo].[Menu]    Script Date: 03/10/2014 16:23:23 ******/
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
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (8, N'Menu 04/03', N'nothing', CAST(0x0000A2EA00000000 AS DateTime), 1, CAST(0x0000A2FC00000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (9, N'Menu 01/03', N'nothing', CAST(0x0000A2E100000000 AS DateTime), 1, CAST(0x0000A2E100000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (10, N'Menu 20/03', N'nothing', CAST(0x0000A2F400000000 AS DateTime), 1, CAST(0x0000A2F400000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (11, N'Menu 22/03', N'nothing', CAST(0x0000A2F600000000 AS DateTime), 1, CAST(0x0000A2F600000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Menu] OFF
/****** Object:  Table [dbo].[Chef]    Script Date: 03/10/2014 16:23:23 ******/
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
/****** Object:  Table [dbo].[IngredientCategory]    Script Date: 03/10/2014 16:23:23 ******/
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
INSERT [dbo].[IngredientCategory] ([Id], [Name], [IsAvailable]) VALUES (1, N'Thịt', 1)
INSERT [dbo].[IngredientCategory] ([Id], [Name], [IsAvailable]) VALUES (2, N'Cá', 1)
INSERT [dbo].[IngredientCategory] ([Id], [Name], [IsAvailable]) VALUES (3, N'Hải sản', 1)
INSERT [dbo].[IngredientCategory] ([Id], [Name], [IsAvailable]) VALUES (4, N'Rau & củ quả', 1)
INSERT [dbo].[IngredientCategory] ([Id], [Name], [IsAvailable]) VALUES (5, N'Trái cây', 1)
INSERT [dbo].[IngredientCategory] ([Id], [Name], [IsAvailable]) VALUES (6, N'Bột', 1)
INSERT [dbo].[IngredientCategory] ([Id], [Name], [IsAvailable]) VALUES (7, N'Phụ liệu', 1)
INSERT [dbo].[IngredientCategory] ([Id], [Name], [IsAvailable]) VALUES (8, N'Tinh bột', 1)
INSERT [dbo].[IngredientCategory] ([Id], [Name], [IsAvailable]) VALUES (9, N'Khác', 1)
SET IDENTITY_INSERT [dbo].[IngredientCategory] OFF
/****** Object:  Table [dbo].[DishCategory]    Script Date: 03/10/2014 16:23:23 ******/
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
INSERT [dbo].[DishCategory] ([Id], [Name], [Description], [Image], [IsAvailable]) VALUES (2, N'Sides', N'Discover fresh weeknight dinner', N'/Content/frontend/images/banner-img-6.jpg', 1)
INSERT [dbo].[DishCategory] ([Id], [Name], [Description], [Image], [IsAvailable]) VALUES (3, N'Thức ăn trẻ em', N'Foods good for kids', N'/Content/frontend/images/banner-img-4.jpg', 1)
INSERT [dbo].[DishCategory] ([Id], [Name], [Description], [Image], [IsAvailable]) VALUES (4, N'Món tráng miệng', N'Món tráng miệng ngon', N'/Content/frontend/images/banner-img-3.jpg', 0)
INSERT [dbo].[DishCategory] ([Id], [Name], [Description], [Image], [IsAvailable]) VALUES (5, N'Nước uống', N'Nước uống trái cây', N'/Content/frontend/images/banner-img-2.jpg', 1)
SET IDENTITY_INSERT [dbo].[DishCategory] OFF
/****** Object:  Table [dbo].[Dish]    Script Date: 03/10/2014 16:23:23 ******/
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
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (1, N'Crispy Seafood Mac & Cheese', 1, 1, N'/Images/1-Crispy-Seafood-Mac-Cheese.jpg', 50000, N'Tofu is marinated in garlic, ginger, and soy sauce over night. Then tossed in flour & corn starch mix and deep fried. Green beans are blanched and tossed in spicy peanut sauce.', N'not now', 0, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (2, N'Spicy Chicken and Andouille Gumbo', 1, 1, N'/Images/2-Spicy-Chicken-Andouille-Gumbo.jpg', 60000, N'Nullam id dolor id niltricies vehicula ut id elit. osuer e consectetu. Aliquauam sollicitudin hendrerit.', N'not now', 0, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (3, N'Ka Lua Style Smoked Pork Sirloin', 1, 1, N'/Images/3-Ka-Lua-Style-Smoked-Pork-Sirloin.jpg', 40000, N'ICROWAVE: Heat the rest of the items for 2-3 minutes (timing varies depending on your microwave) or until hot. Pour the sauce to Tofu or dip in.', N'not now', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (4, N'Grilled Flap Steak & Brussels', 1, 1, N'/Images/4-Grilled-Flap-Steak-Brussels.jpg', 65000, N'Pork shoulder braised with sweet Spanish peppers, fennel and porcini mushrooms until very tender. Finished with baby kale, butter and Parmesan to finish.', N'not now', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (5, N'Grilled Chicken Teriyaki', 1, 1, N'/Images/5-Grilled-Chicken-Teriyaki.jpg', 37000, N'Ultimate Japanese comfort food on cold winter nights! Chicken curry is cooked with yellow onions, carrots, bonito and kombu dashi. Chewy Udon noodles are done al dente. A bit of spice in curry keeps you warm all night.', N'not now', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (6, N'Nikujaga (Meat and Potato Stew)', 1, 1, N'/Images/6-Nikujaga.jpg', 48000, N'Grilled Atlantic salmon (seasoned with 70% extra virgin olive oil, 30% corn oil and kosher salt), Italian mixed greens from County Line Harvest, organic chickpeas (garbanzo beans), and organic chioggia beets (seasoned with maldon sea salt & extra virgin olive oil). Served with chunky citrus vinaigrette.', N'not now', 5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (7, N'Chermoula Marinated Pork Shoulder', 1, 1, N'/Images/7-Chermoula-Marinated-Pork-Shoulder.jpg', 52000, N'Chicken is lightly pan fried in oil. Mushroom sauce is made with sautéed mushrooms, chicken stock, herbs, garlic & marsala.', N'not now', 4.5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (8, N'Chicken & Cherry Salad Sandwich', 1, 1, N'/Images/8-Chicken-Cherry-Salad-Sandwich.jpg', 53, N'sdsd', N'dsds', 4.5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (9, N'Falafel Stuffed Eggplant', 1, 1, N'/Images/9-Falafel-Stuffed-Eggplant.jpg', 32, N'asdad', N'dadad', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (10, N'Roast Chicken with Chimichurri', 1, 1, N'/Images/10-Roast-Chicken-with-Chimichurri.jpg', 45, N'assaa', N'assasa', 5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (11, N'Farfalle with Sage-Cashew ''Cream''', 1, 1, N'/Images/11-Farfalle-with-Sage-Cashew-Cream.jpg', 434, N'sasas', N'assasas', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (12, N'Red Wine Braised Beef Bourguignon', 1, 1, N'/Images/12-Red-Wine-Braised-Beef-Bourguignon.jpg', 43, N'dsdsd', N'dsdsd', 5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (13, N'Lamb and Goat Cheese Moussaka', 1, 1, N'/Images/13-Lamb-and-Goat-Cheese-Moussaka.jpg', 43, N'dsasa', N'das', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (14, N'Grilled Salmon Winter Panzanella', 1, 1, N'/Images/14-Grilled-Salmon-Winter-Panzanella.jpg', 43, N'asa', N'sasa', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (15, N'Skuna Bay Salmon and Miso Soup', 2, 1, N'/Images/15-Skuna-Bay-Salmon-and-Miso-Soup.jpg', 45, N'assaas', N'sasas', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (16, N'Roasted Beets with Walnuts', 2, 1, N'/Images/16-Roasted-Beets-with-Walnuts.jpg', 45, N'asasa', N'sasas', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (17, N'Tangy Fried Brussels Sprouts', 2, 1, N'/Images/17-Tangy-Fried-Brussels-Sprouts.jpg', 45, N'asasa', N'sasas', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (18, N'Lentil, Chickpea and Feta Salad', 2, 1, N'/Images/18-Lentil-Chickpea-and-Feta-Salad.jpg', 56, N'sas', N'jhj', 5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (19, N'Broccoli-Cheddar Mac and Cheese', 2, 1, N'/Images/19-Broccoli-Cheddar-Mac-and-Cheese.jpg', 54, N'asas', N'sasas', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (20, N'Little Gem Lettuce & Green Salad', 2, 1, N'/Images/20-Little-Gem-Lettuce-Green-Salad.jpg', 67, N'sas', N'sasa', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (21, N'Chicken and Rice Chowder', 2, 1, N'/Images/21-Chicken-and-Rice-Chowder.jpg', 78, N'sasas', N'sasas', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (22, N'Caesar Salad with Garlic Croutons', 2, 1, N'/Images/22-Caesar-Salad-with-Garlic-Croutons.jpg', 78, N'sasas', N'sasas', 5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (23, N'Local Strawberries', 2, 1, N'/Images/23-Local-Strawberries.jpg', 43, N'dsdsd', N'dsds', 5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (24, N'Greek-Style Roasted Potatoes', 2, 1, N'/Images/24-Greek-Style-Roasted-Potatoes.jpg', 43, N'sasas', N'sasas', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (25, N'Grilled Castroville Artichokes', 2, 1, N'/Images/25-Grilled-Castroville-Artichokes.jpg', 43, N'sdasas', N'sasas', 4.5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (26, N'Roasted Tomato Soup', 2, 1, N'/Images/26-Roasted-Tomato-Soup.jpg', 44, N'asasas', N'saasas', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (27, N'Potato, Leek & Green Garlic Soup', 2, 1, N'/Images/27-Potato-Leek-Green-Garlic-Soup.jpg', 44, N'asasa', N'sasa', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (28, N'Rosemary and Sea Salt Focaccia', 2, 1, N'/Images/28-Rosemary-and-Sea-Salt-Focaccia.jpg', 46, N'sasas', N'sasas', 5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (29, N'Nicasio Square Cheese Plate', 2, 1, N'/Images/29-Nicasio-Square-Cheese-Plate.jpg', 67, N'assas', N'assas', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (30, N'California Shrimp Cocktail', 2, 1, N'/Images/30-California-Shrimp-Cocktail.jpg', 78, N'sass', N'assas', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (31, N'Spiced Carrot Masala Soup', 2, 1, N'/Images/31-Spiced-Carrot-Masala-Soup.jpg', 76, N'sasa', N'sasas', 5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (32, N'Roasted Beet & Goat Cheese Salad', 2, 1, N'/Images/32-Roasted-Beet-Goat-Cheese-Salad.jpg', 77, N'sasa', N'saasas', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (33, N'Kids Loaded Baked Potato', 3, 1, N'/Images/33-Kids-Loaded-Baked-Potato.jpg', 78, N'sasa', N'sasa', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (34, N'Roasted Chicken Drumstick', 3, 1, N'/Images/34-Roasted-Chicken-Drumstick.jpg', 77, N'asas', N'assas', 5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (35, N'Salted Caramel Buttercream Cake', 4, 1, N'/Images/35-Salted-Caramel-Buttercream-Cake.jpg', 78, N'sasas', N'assas', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (36, N'Theda''s Orange Cranberry Scone', 4, 1, N'/Images/36-Theda-Orange-Cranberry-Scone.jpg', 89, N'sasa', N'sasas', 5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (37, N'Triple Play Chocolate Pudding', 4, 1, N'/Images/37-Triple-Play-Chocolate-Pudding.jpg', 90, N'sas', N'hjhj', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (38, N'Peanut Butter Cup Cookie', 4, 1, N'/Images/38-Peanut-Butter-Cup-Cookie.jpg', 89, N'sasa', N'sasas', 5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (39, N'Mascarpone Brownie', 4, 1, N'/Images/39-Mascarpone-Brownie.jpg', 90, N'assas', N'sasas', 5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (40, N'Blueberry Bran Muffin', 4, 1, N'/Images/40-Blueberry-Bran-Muffin.jpg', 80, N'sas', N'sasas', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (41, N'Zucchini Apple Oat Bread', 4, 1, N'/Images/41-Zucchini-Apple-Oat Bread.jpg', 89, N'sas', N'sasa', 5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (42, N'Mexican Chocolate Brownie', 4, 1, N'/Images/42-Mexican-Chocolate-Brownie.jpg', 90, N'sasas', N'sasas', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (43, N'Dirty Blonde', 4, 1, N'/Images/43-Dirty-Blonde.jpg', 99, N'sasas', N'sasas', 5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (44, N'Classic Chocolate Chip Cookie', 4, 1, N'/Images/44-Classic-Chocolate-Chip-Cookie.jpg', 80, N'sasas', N'sasas', 5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (45, N'Salty Sweet Chocolate Chip Cookie', 4, 1, N'/Images/45-Salty-Sweet-Chocolate-Chip-Cookie.jpg', 80, N'sasa', N'sasas', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (46, N'G.Reedy Sauvignon Blanc', 5, 1, N'/Images/46-GReedy-Sauvignon-Blanc.jpg', 89, N'sasas', N'sasas', 5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (47, N'La Merika Cabernet Sauvignon', 5, 1, N'/Images/47-La-Merika-Cabernet-Sauvignon.jpg', 8, N'asas', N'sasas', 5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (48, N'Tesora Blend', 5, 1, N'/Images/48-Tesora-Blend.jpg', 9, N'sasas', N'sasass', 5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (49, N'Jacob''s Wonderbar', 5, 1, N'/Images/49-Jacobs-Wonderbar.jpg', 9, N'ssasa', N'sasa', 5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (50, N'Tozai Snow Maiden Sake Junmai', 5, 1, N'/Images/50-Tozai-Snow-Maiden-Sake-Junmai.jpg', 9, N'sasas', N'sasss', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (51, N'Zefiro Prosecco Brut NV', 5, 1, N'/Images/51-Zefiro-Prosecco-Brut-NV.jpg', 9, N'sasas', N'sassasa', 5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (52, N'ACE Joker Hard Cider', 5, 1, N'/Images/52-ACE-Joker-Hard-Cider.jpg', 10, N'asasas', N'sasass', 0, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (53, N'Gusto Iced Coffee', 5, 1, N'/Images/53-Gusto-Iced-Coffee.jpg', 10, N'sassa', N'sasas', 5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (54, N'Freshly Pressed Beet Juice', 5, 1, N'/Images/54-Freshly-Pressed-Beet-Juice.jpg', 10, N'sasas', N'sasas', 5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (55, N'Freshly Pressed Orange Juice', 5, 1, N'/Images/55-Freshly-Pressed-Orange-Juice.jpg', 12, N'assasa', N'sassa', 5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (56, N'Freshly Pressed Carrot Juice', 5, 1, N'/Images/56-Freshly-Pressed-Carrot-Juice.jpg', 11, N'sasas', N'assas', 5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (57, N'Freshly Pressed Kale Juice', 5, 1, N'/Images/57-Freshly-Pressed-Kale-Juice.jpg', 11, N'assa', N'sasasa', 5, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (58, N'Mixed Nut Milk', 5, 1, N'/Images/58-Mixed-Nut-Milk.jpg', 11, N'asas', N'assas', 4, 1, 0, 0, 0, 0, 0, 2014)
INSERT [dbo].[Dish] ([Id], [Name], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (59, N'Classic Almond Milk', 5, 1, N'/Images/59-Classic-Almond-Milk.jpg', 11, N'ass', N'sassa', 5, 1, 0, 0, 0, 0, 0, 2014)
SET IDENTITY_INSERT [dbo].[Dish] OFF
/****** Object:  Table [dbo].[Ingredient]    Script Date: 03/10/2014 16:23:23 ******/
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
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (1, N'Macaroni', 6, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (2, N'Sữa tươi', 7, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (3, N'Cua xanh', 3, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (4, N'Sò', 3, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (5, N'Tôm', 3, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (6, N'Pho mát', 7, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (7, N'Kem Whipping ', 7, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (8, N'Mỳ ý trắng', 6, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (9, N'Củ hành', 4, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (10, N'Muối Kosher', 7, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (11, N'Gà', 1, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (12, N'Gạo lức', 8, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (13, N'Xúc xích heo', 9, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (14, N'Đậu đỏ', 8, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (15, N'Bột năng', 7, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (16, N'Cần tây', 4, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (17, N'Bơ', 7, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (18, N'Ớt bột', 7, N'default-image.png', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (19, N'Tỏi', 7, N'default-image.png', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (20, N'Thì là', 4, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (21, N'Rau thơm', 4, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (22, N'Ớt tươi', 7, N'default-image.png', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (23, N'Thịt heo thăn', 1, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (24, N'Trái khớm', 4, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (25, N'Đường trắng', 7, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (26, N'Tamari', 7, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (27, N'Dầu ăn', 7, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (28, N'Vừng', 7, N'default-image.png', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (29, N'Xà lách', 4, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (30, N'Gừng', 4, N'default-image.png', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (31, N'Thịt bò', 1, N'default-image.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (32, N'Cải Brussels ', 4, N'de', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (33, N'Bột ngũ cốc', 6, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (34, N'Chanh', 7, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (35, N'Couscous', 8, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (36, N'Trái bơ', 4, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (37, N'Rau diếp đỏ', 4, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (38, N'Khoai tây', 4, N'de', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (39, N'Gạo trắng', 8, N'de', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (40, N'Tương cà', 7, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (41, N'Cà rốt', 4, N'de', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (42, N'Nho khô vàng', 5, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (43, N'Hạt thông', 4, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (44, N'Dầu cải', 7, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (45, N'Bánh mỳ lát', 9, N'de', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (46, N'Quả mơ khô', 4, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (47, N'Sốt Mayonnaise', 7, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (48, N'Pistachio nuts', 9, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (49, N'Rau hẹ', 4, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (50, N'Cà tím', 4, N'de', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (51, N'Đậu xanh', 8, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (52, N'Mè', 7, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (53, N'Dưa leo', 4, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (54, N'Dầu ô liu', 7, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (55, N'Rau dền', 4, N'de', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (56, N'Bầu', 4, N'de', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (57, N'Dầu cải', 7, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (58, N'Đậu Hà Lan', 8, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (59, N'Mỳ Pasta', 8, N'de', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (60, N'Bí đỏ', 4, N'de', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (61, N'Hạt điều', 8, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (62, N'Hành lá', 4, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (63, N'Cranberries', 5, N'de', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (64, N'Rượu vang đỏ', 7, N'de', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (65, N'Sốt cà chua', 7, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (66, N'Nấm rơm', 4, N'de', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (67, N'Thịt cừu', 1, N'de', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (68, N'Trứng gà', 9, N'de', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (69, N'Feta Cheese', 9, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (70, N'Cá hồi', 2, N'de', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (71, N'Củ cải trắng', 4, N'de', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (72, N'Miso', 7, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (73, N'Cải bó xôi', 4, N'de', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (74, N'Nước mắm', 7, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (75, N'Củ tím', 4, N'de', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (76, N'Giấm trắng', 7, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (77, N'Black walnuts', 4, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (78, N'Anise seed', 7, N'de', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (79, N'Cam', 5, N'de', 0, 1)
SET IDENTITY_INSERT [dbo].[Ingredient] OFF
/****** Object:  Table [dbo].[Order]    Script Date: 03/10/2014 16:23:23 ******/
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
/****** Object:  Table [dbo].[Supplier]    Script Date: 03/10/2014 16:23:23 ******/
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
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 03/10/2014 16:23:23 ******/
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
/****** Object:  Table [dbo].[IngredientDish]    Script Date: 03/10/2014 16:23:23 ******/
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
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (13, 2)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (23, 1)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (31, 2)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (33, 1)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (63, 2)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (63, 52)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (67, 1)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (67, 52)
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 03/10/2014 16:23:23 ******/
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
/****** Object:  Table [dbo].[IngredientItem]    Script Date: 03/10/2014 16:23:23 ******/
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
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (2, 1, 1, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (3, 1, 1, 1, 0)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (4, 3, 2, 1, 0)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (5, 3, 2, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (6, 1, 3, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (7, 1, 4, 1, 0)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (8, 3, 4, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (9, 1, 5, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (10, 1, 6, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (11, 3, 7, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (12, 3, 8, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (13, 1, 9, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (14, 3, 10, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (15, 1, 11, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (16, 3, 12, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (17, 3, 13, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (18, 1, 14, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (19, 3, 15, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (20, 3, 16, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (21, 3, 17, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (22, 1, 18, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (23, 1, 19, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (24, 3, 20, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (25, 1, 21, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (26, 1, 22, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (27, 1, 23, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (28, 1, 24, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (29, 3, 25, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (30, 3, 26, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (31, 1, 27, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (32, 1, 28, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (33, 3, 29, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (34, 3, 30, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (35, 1, 31, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (36, 1, 32, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (37, 3, 33, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (38, 1, 34, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (39, 1, 35, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (40, 1, 36, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (41, 3, 37, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (42, 1, 38, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (43, 3, 39, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (44, 1, 40, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (48, 1, 41, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (49, 3, 42, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (50, 3, 43, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (51, 1, 44, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (52, 1, 45, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (53, 1, 46, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (54, 1, 47, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (55, 3, 48, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (56, 1, 49, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (57, 3, 50, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (58, 3, 51, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (59, 1, 52, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (60, 1, 53, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (61, 3, 54, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (62, 1, 55, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (63, 1, 56, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (64, 3, 57, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (65, 1, 58, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (66, 3, 59, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (67, 1, 60, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (68, 3, 61, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (69, 1, 62, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (70, 3, 63, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (71, 3, 64, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (72, 1, 65, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (73, 1, 66, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (74, 3, 67, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (75, 1, 68, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (76, 3, 69, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (77, 1, 70, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (78, 3, 71, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (79, 1, 72, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (80, 3, 73, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (81, 1, 74, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (82, 3, 75, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (83, 1, 76, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (84, 3, 77, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (85, 1, 78, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (86, 3, 79, 1, 1)
SET IDENTITY_INSERT [dbo].[IngredientItem] OFF
/****** Object:  Table [dbo].[DishTag]    Script Date: 03/10/2014 16:23:23 ******/
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
/****** Object:  Table [dbo].[DishMenu]    Script Date: 03/10/2014 16:23:23 ******/
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
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (3, 8, 70000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (4, 8, 30000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (5, 8, 40000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (6, 8, 40000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (7, 8, 40000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (8, 8, 40000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (9, 8, 30000, 40)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (10, 8, 40000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (11, 8, 40000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (12, 8, 80000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (13, 8, 35000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (14, 8, 35000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (15, 8, 35000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (16, 8, 37000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (17, 8, 42000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (18, 8, 52000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (19, 8, 52000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (20, 8, 52000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (21, 8, 52000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (22, 8, 52000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (23, 8, 52000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (24, 8, 52000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (25, 8, 52000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (26, 8, 50000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (27, 8, 60000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (28, 8, 70000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (29, 8, 45000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (30, 8, 52000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (31, 8, 30000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (32, 8, 40000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (33, 8, 50000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (34, 8, 60000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (35, 8, 45000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (36, 8, 50000, 26)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (37, 8, 37000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (38, 8, 27000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (39, 8, 25000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (40, 8, 35000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (41, 8, 27000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (42, 8, 20000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (43, 8, 30000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (44, 8, 26000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (45, 8, 18000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (46, 8, 24000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (47, 8, 30000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (48, 8, 50000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (49, 8, 47000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (50, 8, 30000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (51, 8, 25000, 18)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (52, 8, 27000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (53, 8, 25000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (54, 8, 40000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (55, 8, 20000, 18)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (56, 8, 30000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (57, 8, 25000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (58, 8, 30000, 17)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (59, 8, 20000, 30)
/****** Object:  Table [dbo].[DishItem]    Script Date: 03/10/2014 16:23:23 ******/
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
INSERT [dbo].[DishItem] ([Id], [ChefID], [DishID], [OrderDetailID], [QRCode], [Quantity], [CookingTime], [IsAvailable]) VALUES (54, 1, 1, NULL, NULL, 5, CAST(0x0000A2EA010D071C AS DateTime), 1)
INSERT [dbo].[DishItem] ([Id], [ChefID], [DishID], [OrderDetailID], [QRCode], [Quantity], [CookingTime], [IsAvailable]) VALUES (55, 1, 2, NULL, NULL, 4, CAST(0x0000A2EA010D0770 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[DishItem] OFF
/****** Object:  Table [dbo].[IngredientDishItem]    Script Date: 03/10/2014 16:23:23 ******/
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
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (54, 27)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (54, 37)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (54, 74)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (55, 17)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (55, 35)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (55, 70)
/****** Object:  Default [DF__webpages___IsCon__36B12243]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [IsConfirmed]
GO
/****** Object:  Default [DF__webpages___Passw__37A5467C]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [PasswordFailuresSinceLastSuccess]
GO
/****** Object:  Default [DF_Chef_NumberOfRate]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[Chef] ADD  CONSTRAINT [DF_Chef_NumberOfRate]  DEFAULT ((0)) FOR [NumberOfRate]
GO
/****** Object:  Default [DF_Dish_Rate]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[Dish] ADD  CONSTRAINT [DF_Dish_Rate]  DEFAULT ((0)) FOR [Rate]
GO
/****** Object:  Default [DF_Dish_NumberOfRate]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[Dish] ADD  CONSTRAINT [DF_Dish_NumberOfRate]  DEFAULT ((0)) FOR [NumberOfRate]
GO
/****** Object:  Default [DF_Dish_NumOfOrderQua1]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[Dish] ADD  CONSTRAINT [DF_Dish_NumOfOrderQua1]  DEFAULT ((0)) FOR [NumOfOrderQua1]
GO
/****** Object:  Default [DF_Dish_NumOfOrderQua2]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[Dish] ADD  CONSTRAINT [DF_Dish_NumOfOrderQua2]  DEFAULT ((0)) FOR [NumOfOrderQua2]
GO
/****** Object:  Default [DF_Dish_NumOfOrderQua3]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[Dish] ADD  CONSTRAINT [DF_Dish_NumOfOrderQua3]  DEFAULT ((0)) FOR [NumOfOrderQua3]
GO
/****** Object:  Default [DF_Dish_NumOfOrderQua4]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[Dish] ADD  CONSTRAINT [DF_Dish_NumOfOrderQua4]  DEFAULT ((0)) FOR [NumOfOrderQua4]
GO
/****** Object:  Default [DF_DishItem_ChefID]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[DishItem] ADD  CONSTRAINT [DF_DishItem_ChefID]  DEFAULT ((1)) FOR [ChefID]
GO
/****** Object:  Default [DF_DishItem_IsAvailable]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[DishItem] ADD  CONSTRAINT [DF_DishItem_IsAvailable]  DEFAULT ((1)) FOR [IsAvailable]
GO
/****** Object:  ForeignKey [FK__Dish__Category__1B0907CE]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[Dish]  WITH CHECK ADD  CONSTRAINT [FK__Dish__Category__1B0907CE] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[DishCategory] ([Id])
GO
ALTER TABLE [dbo].[Dish] CHECK CONSTRAINT [FK__Dish__Category__1B0907CE]
GO
/****** Object:  ForeignKey [FK__Dish__ChefID__4AB81AF0]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[Dish]  WITH CHECK ADD  CONSTRAINT [FK__Dish__ChefID__4AB81AF0] FOREIGN KEY([ChefID])
REFERENCES [dbo].[Chef] ([UserID])
GO
ALTER TABLE [dbo].[Dish] CHECK CONSTRAINT [FK__Dish__ChefID__4AB81AF0]
GO
/****** Object:  ForeignKey [FK__Ingredien__Categ__08EA5793]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[Ingredient]  WITH CHECK ADD  CONSTRAINT [FK__Ingredien__Categ__08EA5793] FOREIGN KEY([Category])
REFERENCES [dbo].[IngredientCategory] ([Id])
GO
ALTER TABLE [dbo].[Ingredient] CHECK CONSTRAINT [FK__Ingredien__Categ__08EA5793]
GO
/****** Object:  ForeignKey [FK_Order_UserProfile]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_UserProfile] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_UserProfile]
GO
/****** Object:  ForeignKey [FK_Supplier_SupplierCategory]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_SupplierCategory] FOREIGN KEY([SupplierCategory])
REFERENCES [dbo].[SupplierCategory] ([Id])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_SupplierCategory]
GO
/****** Object:  ForeignKey [fk_RoleId]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
/****** Object:  ForeignKey [fk_UserId]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
GO
/****** Object:  ForeignKey [FK_IngredientDish_Dish]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[IngredientDish]  WITH CHECK ADD  CONSTRAINT [FK_IngredientDish_Dish] FOREIGN KEY([DishID])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[IngredientDish] CHECK CONSTRAINT [FK_IngredientDish_Dish]
GO
/****** Object:  ForeignKey [FK_IngredientDish_Ingredient]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[IngredientDish]  WITH CHECK ADD  CONSTRAINT [FK_IngredientDish_Ingredient] FOREIGN KEY([IngredientID])
REFERENCES [dbo].[Ingredient] ([Id])
GO
ALTER TABLE [dbo].[IngredientDish] CHECK CONSTRAINT [FK_IngredientDish_Ingredient]
GO
/****** Object:  ForeignKey [FK__OrderDeta__DishI__48CFD27E]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__DishI__48CFD27E] FOREIGN KEY([DishID])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__DishI__48CFD27E]
GO
/****** Object:  ForeignKey [FK__OrderDeta__Order__534D60F1]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Order__534D60F1] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__Order__534D60F1]
GO
/****** Object:  ForeignKey [FK__Ingredien__Suppl__4E88ABD4]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[IngredientItem]  WITH CHECK ADD  CONSTRAINT [FK__Ingredien__Suppl__4E88ABD4] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([Id])
GO
ALTER TABLE [dbo].[IngredientItem] CHECK CONSTRAINT [FK__Ingredien__Suppl__4E88ABD4]
GO
/****** Object:  ForeignKey [FK_IngredientItem_Ingredient]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[IngredientItem]  WITH CHECK ADD  CONSTRAINT [FK_IngredientItem_Ingredient] FOREIGN KEY([IngredientID])
REFERENCES [dbo].[Ingredient] ([Id])
GO
ALTER TABLE [dbo].[IngredientItem] CHECK CONSTRAINT [FK_IngredientItem_Ingredient]
GO
/****** Object:  ForeignKey [FK__DishTag__DishID__4CA06362]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[DishTag]  WITH CHECK ADD  CONSTRAINT [FK__DishTag__DishID__4CA06362] FOREIGN KEY([DishID])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[DishTag] CHECK CONSTRAINT [FK__DishTag__DishID__4CA06362]
GO
/****** Object:  ForeignKey [FK__DishTag__TagID__4E88ABD4]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[DishTag]  WITH CHECK ADD FOREIGN KEY([TagID])
REFERENCES [dbo].[Tag] ([Id])
GO
/****** Object:  ForeignKey [FK__DishMenu__DishID__2E1BDC42]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[DishMenu]  WITH CHECK ADD  CONSTRAINT [FK__DishMenu__DishID__2E1BDC42] FOREIGN KEY([DishID])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[DishMenu] CHECK CONSTRAINT [FK__DishMenu__DishID__2E1BDC42]
GO
/****** Object:  ForeignKey [FK__DishMenu__MenuID__2F10007B]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[DishMenu]  WITH CHECK ADD  CONSTRAINT [FK__DishMenu__MenuID__2F10007B] FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([Id])
GO
ALTER TABLE [dbo].[DishMenu] CHECK CONSTRAINT [FK__DishMenu__MenuID__2F10007B]
GO
/****** Object:  ForeignKey [FK_DishItem_Chef]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[DishItem]  WITH CHECK ADD  CONSTRAINT [FK_DishItem_Chef] FOREIGN KEY([ChefID])
REFERENCES [dbo].[Chef] ([UserID])
GO
ALTER TABLE [dbo].[DishItem] CHECK CONSTRAINT [FK_DishItem_Chef]
GO
/****** Object:  ForeignKey [FK_DishItem_Dish]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[DishItem]  WITH CHECK ADD  CONSTRAINT [FK_DishItem_Dish] FOREIGN KEY([DishID])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[DishItem] CHECK CONSTRAINT [FK_DishItem_Dish]
GO
/****** Object:  ForeignKey [FK_DishItem_OrderDetail]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[DishItem]  WITH CHECK ADD  CONSTRAINT [FK_DishItem_OrderDetail] FOREIGN KEY([OrderDetailID])
REFERENCES [dbo].[OrderDetail] ([Id])
GO
ALTER TABLE [dbo].[DishItem] CHECK CONSTRAINT [FK_DishItem_OrderDetail]
GO
/****** Object:  ForeignKey [FK_IngredientDishItem_DishItem]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[IngredientDishItem]  WITH CHECK ADD  CONSTRAINT [FK_IngredientDishItem_DishItem] FOREIGN KEY([DishItemID])
REFERENCES [dbo].[DishItem] ([Id])
GO
ALTER TABLE [dbo].[IngredientDishItem] CHECK CONSTRAINT [FK_IngredientDishItem_DishItem]
GO
/****** Object:  ForeignKey [FK_IngredientDishItem_IngredientItem]    Script Date: 03/10/2014 16:23:23 ******/
ALTER TABLE [dbo].[IngredientDishItem]  WITH CHECK ADD  CONSTRAINT [FK_IngredientDishItem_IngredientItem] FOREIGN KEY([IngredientItemID])
REFERENCES [dbo].[IngredientItem] ([Id])
GO
ALTER TABLE [dbo].[IngredientDishItem] CHECK CONSTRAINT [FK_IngredientDishItem_IngredientItem]
GO
