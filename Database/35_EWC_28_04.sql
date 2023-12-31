USE [master]
GO
/****** Object:  Database [EWC]    Script Date: 04/28/2014 17:09:13 ******/
CREATE DATABASE [EWC] ON  PRIMARY 
( NAME = N'EWC', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLSERVER2008\MSSQL\DATA\EWC.mdf' , SIZE = 3328KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EWC_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLSERVER2008\MSSQL\DATA\EWC_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
USE [EWC]
GO
/****** Object:  Table [dbo].[IngredientCategory]    Script Date: 04/28/2014 17:09:17 ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 04/28/2014 17:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] NOT NULL,
	[ImageURL] [nvarchar](max) NULL,
	[CustomerType] [int] NOT NULL,
	[TotalOrderValue] [int] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Customer] ([CustomerId], [ImageURL], [CustomerType], [TotalOrderValue]) VALUES (5, N'/Content/frontend/images/chef-img-1.jpg', 1, 231500)
INSERT [dbo].[Customer] ([CustomerId], [ImageURL], [CustomerType], [TotalOrderValue]) VALUES (11, N'/Content/frontend/images/chef-img-1.jpg', 2, 500000)
INSERT [dbo].[Customer] ([CustomerId], [ImageURL], [CustomerType], [TotalOrderValue]) VALUES (12, N'/Content/frontend/images/chef-img-1.jpg', 1, 120000)
INSERT [dbo].[Customer] ([CustomerId], [ImageURL], [CustomerType], [TotalOrderValue]) VALUES (21, N'/Content/frontend/images/chef-img-1.jpg', 2, 670000)
INSERT [dbo].[Customer] ([CustomerId], [ImageURL], [CustomerType], [TotalOrderValue]) VALUES (22, N'/Content/frontend/images/chef-img-1.jpg', 1, 160000)
INSERT [dbo].[Customer] ([CustomerId], [ImageURL], [CustomerType], [TotalOrderValue]) VALUES (23, N'/Content/frontend/images/chef-img-1.jpg', 1, 170000)
INSERT [dbo].[Customer] ([CustomerId], [ImageURL], [CustomerType], [TotalOrderValue]) VALUES (24, N'/Content/frontend/images/chef-img-1.jpg', 1, 80000)
INSERT [dbo].[Customer] ([CustomerId], [ImageURL], [CustomerType], [TotalOrderValue]) VALUES (26, N'/Content/frontend/images/chef-img-1.jpg', 1, 110000)
INSERT [dbo].[Customer] ([CustomerId], [ImageURL], [CustomerType], [TotalOrderValue]) VALUES (28, N'/Content/frontend/images/chef-img-1.jpg', 1, 65000)
INSERT [dbo].[Customer] ([CustomerId], [ImageURL], [CustomerType], [TotalOrderValue]) VALUES (29, N'/Content/frontend/images/chef-img-1.jpg', 1, 300000)
INSERT [dbo].[Customer] ([CustomerId], [ImageURL], [CustomerType], [TotalOrderValue]) VALUES (30, N'/Content/frontend/images/chef-img-1.jpg', 2, 830000)
INSERT [dbo].[Customer] ([CustomerId], [ImageURL], [CustomerType], [TotalOrderValue]) VALUES (31, N'/Content/frontend/images/chef-img-1.jpg', 2, 1120000)
INSERT [dbo].[Customer] ([CustomerId], [ImageURL], [CustomerType], [TotalOrderValue]) VALUES (32, N'/Content/frontend/images/chef-img-1.jpg', 1, 32000)
INSERT [dbo].[Customer] ([CustomerId], [ImageURL], [CustomerType], [TotalOrderValue]) VALUES (37, N'/Content/images/customer-default-image.png', 1, 0)
/****** Object:  Table [dbo].[CurrencyRatio]    Script Date: 04/28/2014 17:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurrencyRatio](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CurrencyName] [nvarchar](20) NOT NULL,
	[VNDUnitValue] [int] NOT NULL,
	[IsAvailable] [bit] NOT NULL,
 CONSTRAINT [PK_CurrencyRatio] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CurrencyRatio] ON
INSERT [dbo].[CurrencyRatio] ([Id], [CurrencyName], [VNDUnitValue], [IsAvailable]) VALUES (1, N'USD', 21000, 1)
SET IDENTITY_INSERT [dbo].[CurrencyRatio] OFF
/****** Object:  Table [dbo].[Chef]    Script Date: 04/28/2014 17:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chef](
	[UserID] [int] NOT NULL,
	[ImageURL] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK__Chef__1788CCAC0519C6AF] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Chef] ([UserID], [ImageURL], [Description]) VALUES (1, N'/Content/frontend/images/chef-img-1.jpg', N'Bà là đầu bếp nữ nổi tiếng từng được mời sang Mỹ, Australia, Trung Quốc… để giảng dạy các món ăn Việt Nam. Công việc nấu nướng trở thành nỗi đam mê lớn trong bà. Bà luôn tìm tòi, nghiên cứu để tạo ra nhiều món ăn mới.')
INSERT [dbo].[Chef] ([UserID], [ImageURL], [Description]) VALUES (4, N'/Content/frontend/images/chef-img-1.jpg', N'Nguyễn Văn Đậu')
INSERT [dbo].[Chef] ([UserID], [ImageURL], [Description]) VALUES (10, N'/Content/frontend/images/chef-img-1.jpg', N'no')
INSERT [dbo].[Chef] ([UserID], [ImageURL], [Description]) VALUES (18, N'/Content/frontend/images/chef-img-1.jpg', N'no')
INSERT [dbo].[Chef] ([UserID], [ImageURL], [Description]) VALUES (36, N'/Content/frontend/images/chef-img-1.jpg', N'Nguyễn Văn Đậu')
/****** Object:  Table [dbo].[DishCategory]    Script Date: 04/28/2014 17:09:17 ******/
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
INSERT [dbo].[DishCategory] ([Id], [Name], [Description], [Image], [IsAvailable]) VALUES (1, N'Món ăn chính', N'Nullam id dolor id niltricies vehicula ut id elit. osuer e consectetu. Aliquauam sollicitudin hendrerit.', N'/Images/14-Grilled-Salmon-Winter-Panzanella.jpg', 1)
INSERT [dbo].[DishCategory] ([Id], [Name], [Description], [Image], [IsAvailable]) VALUES (2, N'Món phụ', N'Discover fresh weeknight dinner', N'/Content/frontend/images/banner-img-6.jpg', 1)
INSERT [dbo].[DishCategory] ([Id], [Name], [Description], [Image], [IsAvailable]) VALUES (3, N'Thức ăn trẻ em', N'Foods good for kids', N'/Content/frontend/images/banner-img-4.jpg', 1)
INSERT [dbo].[DishCategory] ([Id], [Name], [Description], [Image], [IsAvailable]) VALUES (4, N'Món tráng miệng', N'Món tráng miệng ngon', N'/Images/40-Blueberry-Bran-Muffin.jpg', 1)
INSERT [dbo].[DishCategory] ([Id], [Name], [Description], [Image], [IsAvailable]) VALUES (5, N'Nước uống', N'Nước uống trái cây', N'/Content/frontend/images/banner-img-2.jpg', 1)
SET IDENTITY_INSERT [dbo].[DishCategory] OFF
/****** Object:  Table [dbo].[Skill]    Script Date: 04/28/2014 17:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SkillName] [nvarchar](250) NULL,
 CONSTRAINT [PK_Skill] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Skill] ON
INSERT [dbo].[Skill] ([Id], [SkillName]) VALUES (1, N'Làm Bánh')
INSERT [dbo].[Skill] ([Id], [SkillName]) VALUES (2, N'Ẩm thực Trung Hoa')
INSERT [dbo].[Skill] ([Id], [SkillName]) VALUES (3, N'Tráng Miệng')
INSERT [dbo].[Skill] ([Id], [SkillName]) VALUES (4, N'Ẩm thực Miền Bắc')
INSERT [dbo].[Skill] ([Id], [SkillName]) VALUES (5, N'Ẩm thực Miền Trung')
INSERT [dbo].[Skill] ([Id], [SkillName]) VALUES (6, N'Ẩm thực Miền Nam')
SET IDENTITY_INSERT [dbo].[Skill] OFF
/****** Object:  Table [dbo].[Menu]    Script Date: 04/28/2014 17:09:17 ******/
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
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (1, N'Menu ngày 21/02/2014', N'Menu', CAST(0x0000A2E500000000 AS DateTime), 0, CAST(0x0000A2E500000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (2, N'Menu 29/01', N'nothing', CAST(0x0000A2C200000000 AS DateTime), 0, CAST(0x0000A2C200000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (3, N'Menu 07/02', N'nothing', CAST(0x0000A2CB00000000 AS DateTime), 0, CAST(0x0000A2CB00000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (4, N'Menu 31/01', N'nothing', CAST(0x0000A2C400000000 AS DateTime), 0, CAST(0x0000A2C400000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (5, N'Menu 06/02', N'nothing', CAST(0x0000A2CA00000000 AS DateTime), 0, CAST(0x0000A2CA00000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (6, N'Menu 26/02', N'nothing', CAST(0x0000A2F800000000 AS DateTime), 0, CAST(0x0000A2F800000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (7, N'Menu 27/02', N'nothing', CAST(0x0000A2ED00000000 AS DateTime), 0, CAST(0x0000A2ED00000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (8, N'Menu 04/03', N'nothing', CAST(0x0000A2FF00000000 AS DateTime), 0, CAST(0x0000A2FC00000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (9, N'Menu 01/03', N'nothing', CAST(0x0000A2E100000000 AS DateTime), 0, CAST(0x0000A2E100000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (10, N'Menu 20/03', N'nothing', CAST(0x0000A2F400000000 AS DateTime), 0, CAST(0x0000A2F400000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (11, N'Menu 22/03', N'nothing', CAST(0x0000A2F600000000 AS DateTime), 0, CAST(0x0000A2F600000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (12, N'Menu 04/04', N'nothing', CAST(0x0000A30300000000 AS DateTime), 1, CAST(0x0000A3030107AC00 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (13, N'Thực Đơn 05/04', N'nothing', CAST(0x0000A30400000000 AS DateTime), 1, CAST(0x0000A304011826C0 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (14, N'Thực Đơn 06/04', N'nothing', CAST(0x0000A30500000000 AS DateTime), 1, CAST(0x0000A305011826C0 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (15, N'Thực Đơn 07/04', N'nothing', CAST(0x0000A30600000000 AS DateTime), 1, CAST(0x0000A306010FE960 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (16, N'Thực Đơn 09/04', N'nothing', CAST(0x0000A30800000000 AS DateTime), 1, CAST(0x0000A308011826C0 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (17, N'Thực Đơn 08/04', N'nothing', CAST(0x0000A30700000000 AS DateTime), 1, CAST(0x0000A30701140810 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (18, N'Thực Đơn 10/04', N'nothing', CAST(0x0000A30C00000000 AS DateTime), 1, CAST(0x0000A3090107AC00 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (19, N'Thực Đơn 11/04', N'nothing', CAST(0x0000A30D00000000 AS DateTime), 1, CAST(0x0000A30A0107AC00 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (20, N'Thực Đơn 12/04', N'nothing', CAST(0x0000A30E00000000 AS DateTime), 1, CAST(0x0000A30E00F73140 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (21, N'Thực Đơn 13/04', N'nothing', CAST(0x0000A30F00000000 AS DateTime), 1, CAST(0x0000A30F0128A180 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (22, N'Thực Đơn 01/04', N'nothing', CAST(0x0000A30000000000 AS DateTime), 1, CAST(0x0000A30000F73140 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (24, N'Thực Đơn 02/04', N'nothign', CAST(0x0000A30100000000 AS DateTime), 1, CAST(0x0000A3010128A180 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (25, N'Thực Đơn 03/04', N'nothing', CAST(0x0000A30200000000 AS DateTime), 1, CAST(0x0000A30200F73140 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (26, N'Thực Đơn 10/04', N'nothing', CAST(0x0000A30900000000 AS DateTime), 1, CAST(0x0000A30900F73140 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (27, N'Thực Đơn 11/04', N'nothing', CAST(0x0000A30A00000000 AS DateTime), 1, CAST(0x0000A30A0107AC00 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (28, N'ThựcĐơn 12/04', N'nothing', CAST(0x0000A30B00000000 AS DateTime), 1, CAST(0x0000A30B011826C0 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (29, N'ThựcĐơn 17/04', N'nothing', CAST(0x0000A31000000000 AS DateTime), 1, CAST(0x0000A31001391C40 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (30, N'Menu 18/04', N'nothing', CAST(0x0000A31100000000 AS DateTime), 0, CAST(0x0000A31100F73140 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (31, N'Menu 19/04', N'nothing', CAST(0x0000A31200000000 AS DateTime), 0, CAST(0x0000A3120107AC00 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (32, N'Thực Đơn 18/04', N'nothing', CAST(0x0000A31100000000 AS DateTime), 1, CAST(0x0000A311011826C0 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (33, N'Menu 10/05', N'nothing', CAST(0x0000A30B00000000 AS DateTime), 1, CAST(0x0000A3270107AC00 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (34, N'Menu 19/04', N'nothing', CAST(0x0000A31B00000000 AS DateTime), 1, CAST(0x0000A3120107AC00 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (35, N'Thực Đơn 20/04', N'nothing', CAST(0x0000A31C00000000 AS DateTime), 1, CAST(0x0000A313011826C0 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (36, N'Thực Đơn 21/04', N'nothing', CAST(0x0000A31D00000000 AS DateTime), 1, CAST(0x0000A314011826C0 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (37, N'Thực Đơn 22/04', N'nothing', CAST(0x0000A31E00000000 AS DateTime), 1, CAST(0x0000A315011826C0 AS DateTime))
SET IDENTITY_INSERT [dbo].[Menu] OFF
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 04/28/2014 17:09:17 ******/
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
SET IDENTITY_INSERT [dbo].[webpages_Roles] ON
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (2, N'Chef')
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (4, N'Customer')
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (3, N'Staff')
SET IDENTITY_INSERT [dbo].[webpages_Roles] OFF
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 04/28/2014 17:09:17 ******/
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
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 04/28/2014 17:09:17 ******/
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
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1, CAST(0x0000A2F30082511C AS DateTime), NULL, 1, NULL, 0, N'ABcSTbV71qQu2rabbhHq1v1nqhx9uUw90wb1VP+LVXauqi5NUNyQKm1sSdEMdqPeMg==', CAST(0x0000A2F30082511C AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (33, CAST(0x0000A3140034BC9B AS DateTime), NULL, 1, NULL, 0, N'AGrfcLstsyNwJZaz7lyFS8QM5MLVVvWrzJeVgmYSKC7E0xScsDJeqqAJ4G2SBcIBNQ==', CAST(0x0000A3140034BC9B AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (34, CAST(0x0000A31400360597 AS DateTime), NULL, 1, NULL, 0, N'AIGHsTLN0noiTBv3f62hDMLVFHjaA/7Hzh8Tq8EzuCibIgRkwYYP9PitBdWWDip0RA==', CAST(0x0000A31400360597 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (35, CAST(0x0000A318008660DE AS DateTime), NULL, 1, NULL, 0, N'AD1FFR0TiS2wYNzQrE3RCg4XAMjpJryYXzLgva3WzWXP6uGhV8M6cSv4BiQynMHf5Q==', CAST(0x0000A318008660DE AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (36, CAST(0x0000A318008AE0EC AS DateTime), NULL, 1, NULL, 0, N'ACsIft46NfkGJQIhAUD5PQ0bdJ/WRO4Wi4mC8s5lJXHi5H9qgq0VPJ6EDCTJj9Htow==', CAST(0x0000A318008AE0EC AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (37, CAST(0x0000A31A00503AA1 AS DateTime), NULL, 1, NULL, 0, N'AMjAIGA+ewaZxFYJrIbXyqOXcbXHET/95HJM4EGIQ5/O2GDkpWuqukDa9KFKsEXmyQ==', CAST(0x0000A31A00503AA1 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (38, CAST(0x0000A31B001B507D AS DateTime), NULL, 1, NULL, 0, N'AFomlnSOcH82p6AalLiTtKQ0YjfKAu75pOXqR+aJoBvXowww+7/ZAEutX6McZXHuRQ==', CAST(0x0000A31B001B507D AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (39, CAST(0x0000A31B001B761D AS DateTime), NULL, 1, NULL, 0, N'ANd0aOhXqPDC3EFOZAUZ2IKv+Yfgftnm8uGhvvsCKCqILaPz09iR3eEw2MWt9Eo2xQ==', CAST(0x0000A31B001B761D AS DateTime), N'', NULL, NULL)
/****** Object:  Table [dbo].[UserProfile]    Script Date: 04/28/2014 17:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](56) NOT NULL,
	[Firstname] [nvarchar](50) NULL,
	[Lastname] [nvarchar](50) NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Telephone] [nvarchar](20) NULL,
	[Address] [nvarchar](max) NULL,
	[IsFemale] [bit] NULL,
	[DateOfBirth] [date] NULL,
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
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Firstname], [Lastname], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (1, N'camvan', N'Cẩm Vân', N'Nguyễn ZDoan', N'camvan@gmail.com', N'0938228754', N'Q1, Hồ Chí Minh', 1, CAST(0x1A080B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Firstname], [Lastname], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (4, N'nguyenvandau', N'Văn Đậu', N'Nguyễn', N'DauDo@gmail.com', N'0935102212', N'239 Phan Xích Long', 0, CAST(0x5C1A0B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Firstname], [Lastname], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (5, N'nhantt2', N'Thành Nhân', N'Nguyễn', N'nhantt2@gmail.com', N'0938228754', N'692 Lạc Long Quân', 0, CAST(0x1B190B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Firstname], [Lastname], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (10, N'nguyen92', N'Thảo Nguyên', N'Nguyễn', N'nguyenhttn@gmail.com', N'0923412390', N'Trường Sa Q3, Hồ Chí Minh', 0, CAST(0x7F170B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Firstname], [Lastname], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (11, N'yenchi', N'Yến Chi', N'Trần', N'yenchi@gmail.com', N'0917333120', N'189 Cách Mạng Tháng Tám', 1, CAST(0xB21C0B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Firstname], [Lastname], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (12, N'TuanMinh', N'Minh Tuấn', N'Trần', N'tuanMT@gmail.com', N'0912330122', N'29 Tô Ký, Quận 12', 0, CAST(0x67880A00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Firstname], [Lastname], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (13, N'ThangTT09', N'Thanh Thắng', N'Tô', N'thangtt09@yahoo.com', N'0128310298', N'593 Nguyễn Thiện Thuật, Q8', 0, CAST(0x18180B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Firstname], [Lastname], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (15, N'HyNQ91', N'Quốc Hy', N'Nguyễn', N'hyhynq@gmail.com', N'0123063711', N'91 Phan Huy Ích ', 0, CAST(0xA3190B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Firstname], [Lastname], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (16, N'KhanhNQ', N'Quốc Khánh', N'Nguyễn', N'Khanh1829@yahoo.com', N'0998033312', N'88 Nguyễn Trãi, Q1', 0, CAST(0xCD150B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Firstname], [Lastname], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (18, N'NguyenTrang', N'Thảo Trang', N'Nguyễn', N'TrangNT91@yahoo.com', N'0121773578', N'201 Nguyễn Thị Minh Khai, Q1', 1, CAST(0x5B0D0B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Firstname], [Lastname], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (19, N'NNNgan', N'Ngọc Ngân', N'Nguyễn', N'Ngan0918@gmail.com', N'0976666542', N'196 Trần Quốc Toản', 1, CAST(0xC6190B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Firstname], [Lastname], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (21, N'MyMy', N'My My', N'Hoàng', N'MyMy1908@yahoo.com', N'0937109103', N'08 Nguyễn Thiện Thuật', 1, CAST(0x17140B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Firstname], [Lastname], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (22, N'NPTai', N'Phú Tài', N'Nguyễn', N'taiNP111@gmail.com', N'0841246789', N'16 Nguyễn thị Minh Khai', 0, CAST(0x1C170B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Firstname], [Lastname], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (23, N'ngocchi', N'Ngọc Chí', N'Lê', N'ngocchi18q@yahoo.com', N'0944921454', N'433 Trường Sơn, Hồ Chí Minh', 0, CAST(0xCA070B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Firstname], [Lastname], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (24, N'TuanTai', N'Tuấn Tài', N'Nguyễn', N'taiTTDD@gmail.com', N'0832574596', N'177 Âu Cơ, Hồ Chí Minh', 0, CAST(0xCA160B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Firstname], [Lastname], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (26, N'HoaHoa', N'Ngọc Hoa', N'Đỗ', N'HoaTrinh@yahoo.com', N'0968750933', N'210 Tôn Thất Thiệp, Hồ Chí Minh', 1, CAST(0xBA1B0B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Firstname], [Lastname], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (28, N'HuyenDD', N'Đỗ Huyền', N'Nguyễn', N'HDD90@yahoo.com', N'0935681920', N'840 Trường Trinh, Hồ Chí Minh', 1, CAST(0x240F0B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Firstname], [Lastname], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (29, N'TuCam', N'Cẩm Tú', N'Lê', N'TuCam@gmail.com', N'0957129651', N'93 Phạm Văn Chiêu, Hồ Chí Minh', 1, CAST(0x56130B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Firstname], [Lastname], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (30, N'NgaHuyen', N'Huyền Nga', N'Trần', N'NgaNTN@yahoo.com', N'0140935891', N'666 Võ Thị Sáu', 1, CAST(0x150C0B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Firstname], [Lastname], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (31, N'Toan83', N'Minh Toàn', N'Võ', N'toanKT@gmail.com', N'0909020211', N'122 Xô Viết Nghệ Tĩnh, Hồ Chí Minh', 0, CAST(0xD80C0B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Firstname], [Lastname], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (32, N'VoNgon', N'Quốc Ngôn', N'Võ', N'Ngonvp@yahoo.com', N'0168222342', N'34 Bắc Hải, Quận 3, Hồ Chí Mình', 0, CAST(0xA2040B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Firstname], [Lastname], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (34, N'liemdtse60725@fpt.edu.vn', N'Liêm', N'Đỗ', N'liemdtse60725@fpt.edu.vn', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Firstname], [Lastname], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (35, N'nhantt2@gmail.com', N'Nguyen', N'Nhan', N'nhantt2@gmail.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Firstname], [Lastname], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (36, N'daubep@eatwithchef.com', N'Nguyen', N'Nhan', N'daubep@eatwithchef.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Firstname], [Lastname], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (37, N'khachhang@eatwithchef.com', N'Nhân', N'Nguyễn Thành', N'khachhang@eatwithchef.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Firstname], [Lastname], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (38, N'admin@eatwithchef.com', N'Trị', N'Quản', N'admin@eatwithchef.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Firstname], [Lastname], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (39, N'nhanvien@eatwithchef.com', N'viên', N'Nhân', N'nhanvien@eatwithchef.com', NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[UserProfile] OFF
/****** Object:  Table [dbo].[Tag]    Script Date: 04/28/2014 17:09:17 ******/
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
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (1, N'Món ăn chay')
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (2, N'Ít béo')
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (3, N'Giảm cân')
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (4, N'Giảm cholesterol')
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (5, N'Ít tinh bột')
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (6, N'Nhiều đường')
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (7, N'Vị chua')
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (8, N'Vị Cay')
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (9, N'Chất béo')
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (10, N'Có Cồn')
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (11, N'Vị ngọt')
SET IDENTITY_INSERT [dbo].[Tag] OFF
/****** Object:  Table [dbo].[SupplierCategory]    Script Date: 04/28/2014 17:09:17 ******/
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
INSERT [dbo].[SupplierCategory] ([Id], [Name], [IsAvailable]) VALUES (1, N'Quy mô lớn', 1)
INSERT [dbo].[SupplierCategory] ([Id], [Name], [IsAvailable]) VALUES (2, N'Quy mô nhỏ', 1)
INSERT [dbo].[SupplierCategory] ([Id], [Name], [IsAvailable]) VALUES (3, N'Quy mô vừa', 1)
SET IDENTITY_INSERT [dbo].[SupplierCategory] OFF
/****** Object:  Table [dbo].[Supplier]    Script Date: 04/28/2014 17:09:17 ******/
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
INSERT [dbo].[Supplier] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [IsAvailable], [SupplierCategory]) VALUES (1, N'Vissan', N'Võ Văn Tần, Da Nang, Vietnam', N'123213123', 16.0670527, 108.20347930000004, 1, 1)
INSERT [dbo].[Supplier] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [IsAvailable], [SupplierCategory]) VALUES (3, N'Nông Trại Châu Thành', N'Âu Cơ, Ho Chi Minh City, Vietnam', N'123123123', 10.7859476, 106.64164119999998, 1, 1)
INSERT [dbo].[Supplier] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [IsAvailable], [SupplierCategory]) VALUES (4, N'NULLCông Ty TNHH Rau Sạch Châu Nhuận Phát', N'133A Nơ Trang Long, phường 12, Thành phố Hồ Chí Minh, quận Bình Thạnh, Hồ Chí Minh, Việt Nam', N'0909939698', 10.8230989, 106.6296638, 1, 2)
INSERT [dbo].[Supplier] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [IsAvailable], [SupplierCategory]) VALUES (5, N'Vựa trái cây Thiên Lộc Việt', N'898 Quang Trung, phường 8, Ho Chi Minh, quận Gò Vấp, Ho Chi Minh City, Viet Nam', N'0948928638', 10.8417496, 106.64388469999994, 1, 2)
INSERT [dbo].[Supplier] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [IsAvailable], [SupplierCategory]) VALUES (6, N'Công Ty TNHH sản xuất TM DV Đại Hàn Kim', N'304/39 Trường Chinh, phường 13, Thành phố Hồ Chí Minh, quận Tân Bình, Ho Chi Minh City, Vietnam', N'0837652061', 10.7975712, 106.64470289999996, 1, 2)
INSERT [dbo].[Supplier] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [IsAvailable], [SupplierCategory]) VALUES (9, N'Doanh Nghiệp Tư Nhân Châu Long', N'117 Lý Nam Đế, Phước Long, tp. Nha Trang, Khánh Hòa, Viet Nam', N'0583711478', 12.2145672, 109.19499280000002, 1, 2)
INSERT [dbo].[Supplier] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [IsAvailable], [SupplierCategory]) VALUES (10, N'Công Ty TNHH Công Nghệ Tề Trang', N'115 Lê Trọng Tấn, Sơn Kỳ, Ho Chi Minh, Tân Phú, Ho Chi Minh City, Viet Nam', N'0838108564', 10.8057225, 106.6290146, 1, 2)
INSERT [dbo].[Supplier] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [IsAvailable], [SupplierCategory]) VALUES (12, N'Công Ty TNHH Thương Mại Ngọc Kim Châu', N'172 Phó Cơ Điều, Ho Chi Minh City, Quận 11, Viet Nam', N'0838554006', 10.7602924, 106.6570329, 1, 2)
INSERT [dbo].[Supplier] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [IsAvailable], [SupplierCategory]) VALUES (13, N'NULLCông Ty TNHH Thực Phẩm Sơn Thái', N'4 Đường Số 23, Hiệp Bình Chánh, Ho Chi Minh, Thủ Đức, Ho Chi Minh City, Viet Nam', N'0837261218', 10.8303344, 106.72442610000007, 1, 3)
INSERT [dbo].[Supplier] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [IsAvailable], [SupplierCategory]) VALUES (14, N'Công Ty TNHH Hương Liệu Phụ Gia Thực Phẩm Hồng Á', N'198 Lãnh Binh Thăng, Ho Chi Minh, Quận 11, Ho Chi Minh City, Viet Nam', N'0839627524', 10.7625585, 106.65323490000004, 1, 3)
INSERT [dbo].[Supplier] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [IsAvailable], [SupplierCategory]) VALUES (15, N'Công Ty Cổ Phần Phát Triển Nông Nghiệp Toàn Long', N'23/6 Nguyễn Ảnh Thủ, Bà Điểm, Thành phố Hồ Chí Minh, Hóc Môn, Hồ Chí Minh, Viet Nam', N'0944772277', 10.8534849, 106.60569550000002, 1, 3)
INSERT [dbo].[Supplier] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [IsAvailable], [SupplierCategory]) VALUES (16, N'Công Ty TNHH Sản Xuất Thương Mại Tân Đông', N'80 Ngô Chí Quốc, Bình Chiểu, Ho Chi Minh, Thủ Đức, Ho Chi Minh City, Viet Nam', N'0837290461', 10.876897, 106.72575110000004, 1, 1)
SET IDENTITY_INSERT [dbo].[Supplier] OFF
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 04/28/2014 17:09:17 ******/
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
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (1, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (4, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (5, 4)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (10, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (11, 4)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (12, 4)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (13, 3)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (15, 3)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (16, 3)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (18, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (19, 3)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (21, 4)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (22, 4)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (23, 4)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (24, 4)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (26, 4)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (28, 4)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (29, 4)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (30, 4)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (31, 4)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (32, 4)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (36, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (37, 4)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (38, 1)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (38, 4)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (39, 3)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (39, 4)
/****** Object:  Table [dbo].[Dish]    Script Date: 04/28/2014 17:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dish](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Url] [nvarchar](250) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[ChefID] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Price] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CookingGuide] [nvarchar](max) NOT NULL,
	[Rate] [float] NOT NULL,
	[IsAvailable] [bit] NOT NULL,
	[NumberOfRate] [int] NOT NULL,
	[NumberOfLike] [int] NOT NULL,
 CONSTRAINT [PK__Dish__3214EC0721B6055D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Dish] ON
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (1, N'Hải sản chiên giòn với pho mát', N'hai-san-chien-gion-voi-pho-mat', 1, 36, N'/Images/Dish/1-Crispy-Seafood-Mac-Cheese.jpg', 50000, N'R&acirc;u mực, t&ocirc;m tươi v&agrave; thịt cua xanh t&aacute;ch nhỏ được chi&ecirc;n l&ecirc;n. Trộn điều với c&agrave; rốt sắt nhỏ v&agrave; một &iacute;t rau cần t&acirc;y c&ugrave;ng tỏi bằm.<br />
M&oacute;n ăn được n&ecirc;m gia vị vừa phải, kh&ocirc;ng qu&aacute; mặn hay qu&aacute; ngọt.<br />
Hương vị biển cả sẽ mang đến cho bạn một buổi tối tuyệt vời !', N'_ Với l&ograve; nướng: Đặt trong l&ograve; ở nhiệt độ 100 độ trong khoảng 5 ph&uacute;t cho đến khi thức ăn đủ n&oacute;ng.<br />
_ Với l&ograve; vi s&oacute;ng: H&acirc;m n&oacute;ng ở nhiệt độ vừa phải, khoảng 50 độ trong 3 ph&uacute;t l&agrave; th&iacute;ch hợp.', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (2, N'Gà ướp cay', N'ga-uop-cay', 1, 36, N'/Images/Dish/2-Spicy-Chicken-Andouille-Gumbo.jpg', 38000, N'Ch&acirc;n g&agrave; v&agrave; đ&ugrave;i được sẵn ướp với ớt, rau m&ugrave;i, h&agrave;nh t&acirc;y, tỏi, gừng v&agrave; nước cốt chanh. Trộn th&ecirc;m v&agrave;o gỏi đu đủ một &iacute;t rau ng&ograve;.<br />
Một m&oacute;n ăn hấp dẫn với m&ugrave;i vị đậm đ&agrave; sẽ l&agrave; một điều th&uacute; vị cho bữa trưa của bạn !', N'Để g&ograve;i đu đủ v&agrave; rau ng&ograve; l&ecirc;n sau khi đ&atilde; sơ chế m&oacute;n ăn<br />
_Với l&ograve; nướng: Đặt trong b&aacute;t sứ v&agrave; để v&agrave;o l&ograve; nướng. L&agrave;m n&oacute;ng đến 80 trong 8-10 ph&uacute;t, hoặc cho đến khi n&oacute;ng.<br />
_Với L&ograve; vi s&oacute;ng: Đặt ở nhiệt độ vừa phải trong 2-3 ph&uacute;t, hoặc cho đến khi n&oacute;ng.<br />
Thưởng thức !', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (3, N'Thịt lợn hun khói Kalua', N'thit-lon-hun-khoi-kalua', 1, 36, N'/Images/Dish/3-Ka-Lua-Style-Smoked-Pork-Sirloin.jpg', 40000, N'Thịt lợn nạc thăn ướp với muối v&agrave; rau ng&ograve;, được bao bọc bởi thịt x&ocirc;ng kh&oacute;i, nhồi với t&eacute;p tỏi, sau đ&oacute; nấu l&ecirc;n.<br />
Ăn k&egrave;m với cơm chi&ecirc;n dứa v&agrave; rau x&agrave; l&aacute;ch tươi.&nbsp;<br />
&nbsp;', N'_Với l&ograve; nướng: &nbsp;H&acirc;m n&oacute;ng thịt lợn từ 8-10 ph&uacute;t, b&ecirc;n trong 5-7 ph&uacute;t, cho đến khi n&oacute;ng đủ.<br />
<br />
_Với l&ograve; vi s&oacute;ng: chỉnh nhiệt độ sau mỗi 30 gi&acirc;y cho đến khi đạt độ n&oacute;ng mong muốn, t&ugrave;y theo từng loại l&ograve; kh&aacute;c nhau.<br />
<br />
Tận hưởng!', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (4, N'Bít tết Brussels', N'bit-tet-brussels', 1, 1, N'/Images/Dish/4-Grilled-Flap-Steak-Brussels.jpg', 65000, N'Thị b&ograve; nướng với ngọn lửa vừa phải. Thịt được ướp với tương ớt, muối kosher v&agrave; bơ. Củ h&agrave;nh đỏ được tẩm với giấm rượu vang trắng, gia vị, muối v&agrave; đường. Gia vị thấm v&agrave;o từ đầu đến tận tủy xương của thịt, h&atilde;y tận hưởng!', N'_Với L&ograve; nướng: Đặt tất cả c&aacute;c th&agrave;nh phần của m&oacute;n ăn l&ecirc;n tấm nướng v&agrave; để nhiệt độ vừa phải trong khoảng 15-20 gi&acirc;y.<br />
_Với L&ograve; Vi S&oacute;ng: H&acirc;m n&oacute;ng tất cả c&aacute;c th&agrave;nh phần của m&oacute;n ăn trong 45 gi&acirc;y đến 1 ph&uacute;t.<br />
_Đổ nước sốt thịt v&agrave; tận hưởng !', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (5, N'Gà nướng Teriyaki', N'ga-nuong-teriyaki', 1, 1, N'/Images/Dish/5-Grilled-Chicken-Teriyaki.jpg', 57000, N'G&agrave; được ướp trong nước tương, tỏi, gừng v&agrave; ớt đỏ rồi&nbsp;nấu với nước dừa. &nbsp;Ăn k&egrave;m với shushi cuộn. Trộn th&ecirc;m một &iacute;t b&ocirc;ng cải xanh. bơ, c&agrave; rốt, dưa gừng v&agrave; cần t&acirc;y. Một sự kết hợp ho&agrave;n hảo của ẩm thực phương đ&ocirc;ng, đem lại cho bạn một bữa ăn hấp dẫn v&agrave; th&uacute; vị !', N'_Với L&ograve; Nướng: Đặt tr&ecirc;n vỉ nướng. Để nhiệt độ 150 độ v&agrave; chờ trong v&ograve;ng 3-5 ph&uacute;t, bạn sẽ c&oacute; một m&oacute;n ăn ho&agrave;n chỉnh.<br />
_Với L&ograve; Vi S&oacute;ng : Để nhiệt độ vừa phải, h&acirc;m n&oacute;ng trong khoảng 5 ph&uacute;t hoặc đến khi bạn thấy vừa &yacute;.<br />
_ Sẽ ngon hơn khi tận hưởng m&oacute;n ăn với một &iacute;t rượu nhẹ.', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (6, N'Thịt hầm khoai tây Nikujaga', N'thit-ham-khoai-tay-nikujaga', 1, 1, N'/Images/Dish/6-Nikujaga.jpg', 39000, N'Hương vị mới đến từ nhật bản. Thịt heo được hầm với khoai t&acirc;y cắt nhỏ v&agrave; đậu h&agrave; lan.&nbsp;<br />
D&ugrave;ng với cơm trắng v&agrave; nước tương tamari, m&ugrave;i vị quen thuộc pha ch&uacute;t lạ lẫm sẽ l&agrave; lựa chọn th&uacute; vị cho bữa trưa của bạn !<br />
&nbsp;', N'_Với bếp lửa: Đặt m&oacute;n ăn v&agrave;o nồi, hầm tr&ecirc;n lửa vừa phải khoảng 3-5 ph&uacute;t.<br />
_Với l&ograve; vi s&oacute;ng: H&acirc;m n&oacute;ng thức ăn ở thời gian vừa phải cho đến khi thấy vừa đủ n&oacute;ng để d&ugrave;ng.<br />
Thưởng thức !', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (7, N'Thịt lợn ướp Chermoula', N'thit-lon-uop-chermoula', 1, 1, N'/Images/Dish/7-Chermoula-Marinated-Pork-Shoulder.jpg', 52000, N'Thịt lợn ba chỉ được ướp trong chermoula (một hỗn hợp xốt của c&aacute;c loại thảo mộc, dầu &ocirc; liu, nước cốt chanh, chanh muối, tỏi, th&igrave; l&agrave;, v&agrave; muối). M&oacute;n ăn n&agrave;y được phủ l&ecirc;n một &iacute;t nho kh&ocirc; v&agrave;ng, h&agrave;nh l&aacute; v&agrave; nước d&ugrave;ng.<br />
Nước sốt chermoula được đầu bếp học theo phong c&aacute;ch của Ph&aacute;p sẽ mang đến cho m&oacute;n thịt lợn hương vị đậm đ&agrave; kh&oacute; qu&ecirc;n. C&ograve;n chờ g&igrave; nữa m&agrave; kh&ocirc;ng đặt n&oacute; cho bữa tối của bạn !&nbsp;', N'H&acirc;m n&oacute;ng nước chan d&ugrave;ng cho thịt lợn kh&aacute;c chỗ với m&oacute;n ăn với nhiệt độ ri&ecirc;ng biệt.<br />
<br />
_ L&ograve; nướng: L&agrave;m n&oacute;ng đến 150 độ. Đặt thịt lợn trong l&ograve; cho đến khi nhiệt độ mong muốn, v&agrave;o khoảng 8-12 ph&uacute;t.<br />
<br />
_ L&ograve; vi s&oacute;ng: H&acirc;m n&oacute;ng thịt lợn với nhiệt độ vừa phải. H&acirc;m n&oacute;ng nước chan trong khoảng 30-60 gi&acirc;y đến khi thấy vừa đủ.<br />
<br />
Chan nước d&ugrave;ng l&ecirc;n m&oacute;n ăn v&agrave; thưởng thức !', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (8, N'Sandwich gà xà lách cùng quả anh đào', N'sandwich-ga-xa-lach-cung-qua-anh-dao', 1, 1, N'/Images/Dish/8-Chicken-Cherry-Salad-Sandwich.jpg', 36000, N'Đ&ocirc;i khi, bạn chỉ muốn c&oacute; một chiếc b&aacute;nh sandwich cho bữa ăn tối đơn giản để tiết kiệm thời gian qu&yacute; b&aacute;u của m&igrave;nh.<br />
M&oacute;n b&aacute;nh n&agrave;y được kẹp với salad g&agrave; c&oacute; chứa tr&aacute;i anh&nbsp;đ&agrave;o kh&ocirc;, v&agrave; hạt hồ trần, cần t&acirc;y, v&agrave; một &iacute;t mayonnaise nhẹ.<br />
Đơn giản m&agrave; vẫn giữ được hương vị ngon l&agrave;nh. H&atilde;y tận hưởng bữa tối đơn giản của bạn với m&oacute;n ăn n&agrave;y !', N'_ Kh&ocirc;ng cần sơ chế.<br />
_ C&oacute; thể h&acirc;m n&oacute;ng với l&ograve; vi s&oacute;ng trong khoảng 30 gi&acirc;y để giữ lại độ ấm.<br />
_ Ngon hơn khi d&ugrave;ng chung với c&aacute;c loại đồ uống lạnh.', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (9, N'Falafel nhồi cà tím', N'falafel-nhoi-ca-tim', 1, 1, N'/Images/Dish/9-Falafel-Stuffed-Eggplant.jpg', 29000, N'C&agrave; t&iacute;m được nướng l&ecirc;n v&agrave; nhồi với đậu xanh v&agrave; gia vị. Trộn chung với dưa chuột th&aacute;i l&aacute;t, củ h&agrave;nh đỏ v&agrave; cần t&acirc;y.<br />
Ăn k&egrave;m với nước chấm tamari.', N'Chuẩn bị một &iacute;t cần t&acirc;y v&agrave; dưa chuột để ăn k&egrave;m.<br />
<br />
Với L&ograve; Nướng: Đặt tr&ecirc;n tấm nướng. L&agrave;m n&oacute;ng đến 160 độ. Chờ trong khoảng 4-6 ph&uacute;t.<br />
<br />
Với L&ograve; Vi S&oacute;ng: Nhiệt độ vừa phải trong 5-10 ph&uacute;t (thời gian thay đổi t&ugrave;y theo l&ograve; vi s&oacute;ng của bạn).<br />
<br />
Rưới nước tương Tamari v&agrave;o trong c&agrave; t&iacute;m v&agrave; tận hưởng!', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (10, N'Gà nướng với Chimichurri', N'ga-nuong-voi-chimichurri', 1, 1, N'/Images/Dish/10-Roast-Chicken-with-Chimichurri.jpg', 55000, N'Ch&acirc;n g&agrave; ướp trong to&agrave;n bộ tỏi v&agrave; gia vị qua đ&ecirc;m, để trong l&ograve; nướng cho đến khi mọng nước.<br />
Ăn chung với khoai t&acirc;y nghiền v&agrave; rau cần t&acirc;y x&agrave;o với một ch&uacute;t rượu giấm đỏ. &nbsp;Nước sốt chimichurri đậm đ&agrave; l&agrave;m cho m&oacute;n ăn trở n&ecirc;n đậm đ&agrave; v&agrave; hấp dẫn hơn.&nbsp;', N'Kh&ocirc;ng c&oacute; nước sốt k&egrave;m m&oacute;n ăn như trong h&igrave;nh, nước sốt thịt g&agrave; được đi k&egrave;m theo, d&ugrave;ng sau khi đ&atilde; sơ chế.<br />
_L&ograve; nướng: Đặt v&agrave;o l&ograve; v&agrave; l&agrave;m n&oacute;ng đến 150 độ. Đun n&oacute;ng 3-4 ph&uacute;t, hoặc cho đến khi thấy mỡ g&agrave; v&agrave;ng n&oacute;ng v&agrave; trở n&ecirc;n mọng nước.<br />
_L&ograve; vi s&oacute;ng: H&acirc;m n&oacute;ng m&oacute;n ăn trong v&ograve;ng 4-6 ph&uacute;t, nước sốt thịt g&agrave; trong 30 gi&acirc;y.<br />
H&atilde;y nhớ rằng, nước sốt thịt g&agrave; phải được đun n&oacute;ng ri&ecirc;ng biệt với m&oacute;n ch&iacute;nh.<br />
Đổ nước sốt thịt g&agrave;&nbsp;chimichurri&nbsp;tr&ecirc;n m&oacute;n ăn v&agrave; tận hưởng!', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (11, N'Farfalle với kem Sage-Cashew', N'farfalle-voi-kem-sagecashew', 1, 1, N'/Images/Dish/11-Farfalle-with-Sage-Cashew-Cream.jpg', 28000, N'<br />
&nbsp;Rang m&igrave; nơ farfalle c&ugrave;ng với hạt việt quất sấy kh&ocirc;, rau thơm v&agrave; tỏi t&acirc;y x&agrave;o. Th&ecirc;m v&agrave;o một lớp nước sốt kem chanh v&agrave; hạt điều.<br />
&nbsp;D&ugrave;ng chung với vụn b&aacute;nh m&igrave; nướng thảo mộc để c&oacute; một bữa ăn ngon đ&uacute;ng nghĩa !', N'Với Bếp lửa: Đảo thức ăn trong chảo tr&ecirc;n n&oacute;ng trong 3-5 ph&uacute;t, th&ecirc;m một &iacute;t nước để kh&ocirc;ng bị d&iacute;nh.<br />
<br />
Với l&ograve; vi s&oacute;ng: đặt nhiệt độ cao trong khoảng 120 độ chừng 4-5 ph&uacute;t (thời gian thay đổi t&ugrave;y theo l&ograve; vi s&oacute;ng của bạn).<br />
<br />
Rắc một &iacute;t vụn b&aacute;nh m&igrave; hoặc ăn k&egrave;m trực tiếp với b&aacute;nh m&igrave; v&agrave; tận hưởng !', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (12, N'Rượu vang đỏ om thịt bò Bourguignon', N'ruou-vang-do-om-thit-bo-bourguignon', 1, 1, N'/Images/Dish/12-Red-Wine-Braised-Beef-Bourguignon.jpg', 72000, N'Thịt b&ograve; kẹp được om v&agrave;ng trong rượu vang đỏ với h&agrave;nh t&acirc;y, c&agrave; rốt v&agrave; c&acirc;y h&uacute;ng t&acirc;y tươi.<br />
Trang tr&iacute; với c&agrave; rốt, nấm, h&agrave;nh t&acirc;y v&agrave; khoai t&acirc;y nghiền.<br />
Một m&oacute;n ăn mới lạ với hương vị rượu vang nồng đậm lẫn trong thịt sẽ l&agrave;m bạn c&oacute; th&ecirc;m trải nghiệm mới !', N'_Với L&ograve; nướng: Đặt trong l&ograve; với nhiệt đọ khoảng 175 độ. Đun n&oacute;ng 4-7 ph&uacute;t, hoặc cho đến khi n&oacute;ng đủ.<br />
<br />
_Với L&ograve; vi s&oacute;ng&nbsp;: H&acirc;m n&oacute;ng với nhiệt độ vừa phải trong 3-4 ph&uacute;t (thời gian thay đổi t&ugrave;y theo l&ograve; vi s&oacute;ng của bạn).', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (13, N'Thịt cừu và phô mai dê Moussaka', N'thit-cuu-va-pho-mai-de-moussaka', 1, 36, N'/Images/Dish/13-Lamb-and-Goat-Cheese-Moussaka.jpg', 52000, N'Được l&agrave;m theo phong c&aacute;ch Hy Lạp cổ điển .M&oacute;n ăn được thực hiện với lớp c&agrave; t&iacute;m tẩm bột, thịt cừu hầm với c&agrave; chua, h&agrave;nh t&acirc;y, tỏi, h&uacute;ng quế v&agrave; một ch&uacute;t th&igrave; l&agrave;. Nước sốt nước ch&acirc;́m do đầu bếp tự sáng tạo rất độc đ&aacute;o.<br />
H&atilde;y thử hương vị mới của Hy lạp cổ từ m&oacute;n ăn n&agrave;y !', N'Trộn salad v&agrave; tương c&agrave; v&agrave;o m&oacute;n ăn sau khi đ&atilde; sơ chế.<br />
<br />
_L&ograve; nướng: L&agrave;m n&oacute;ng đến 150 độ trong 5 ph&uacute;t hoặc cho đến khi m&oacute;n ăn ngả sắc v&agrave;ng.<br />
_L&ograve; vi s&oacute;ng: H&acirc;m m&oacute;n ăn ở nhiệt độ vừa phải trong 3-5 (thời gian thay đổi t&ugrave;y theo l&ograve; vi s&oacute;ng của bạn).<br />
<br />
Th&ecirc;m salad v&agrave; tương c&agrave;&nbsp;v&agrave;o m&oacute;n ăn v&agrave; thưởng thức !', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (14, N'Cá hồi nướng Panzanella', N'ca-hoi-nuong-panzanella', 1, 1, N'/Images/Dish/14-Grilled-Salmon-Winter-Panzanella.jpg', 43000, N'C&aacute; hồi nướng được n&ecirc;m gia vị đậm đ&agrave;, đặt tr&ecirc;n một lớp salad, khoai t&acirc;y c&ugrave;ng một &iacute;t h&agrave;nh xắt nhỏ. Rưới l&ecirc;n tr&ecirc;n một &iacute;t nước sốt c&agrave; chua c&ugrave;ng với dấm. Hương vị c&aacute; hồi nướng sẽ mang đến cho bạn m&ugrave;i mặn nồng từ biển khơi !', N'Với L&ograve; Nướng: L&agrave;m n&oacute;ng đến 80 độ trong 4-6 ph&uacute;t, hoặc cho đến khi cảm thấy lớp mỡ c&aacute; chảy ra vừa đủ.<br />
<br />
Với L&ograve; Vi S&oacute;ng: Đặt m&oacute;n ăn trong 2-3 ph&uacute;t với nhiệt độ vừa phải (thời gian thay đổi t&ugrave;y theo l&ograve; vi s&oacute;ng của bạn).<br />
<br />
Trộn th&ecirc;m v&agrave;o một &iacute;t rau để hương vị tương ngon hơn v&agrave; tận hưởng!', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (15, N'Cá hồi Skuna cùng súp Miso', N'ca-hoi-skuna-cung-sup-miso', 2, 1, N'/Images/Dish/15-Skuna-Bay-Salmon-and-Miso-Soup.jpg', 26000, N'Mang phong c&aacute;ch của m&oacute;n ăn nhẹ Nhật bản. C&aacute; hồi đ&atilde; được luộc trong canh miso với củ cải, rau cải v&agrave; h&agrave;nh l&aacute;.&nbsp;<br />
Hương vị nhẹ nh&agrave;ng, th&iacute;ch hợp cho buổi ăn trưa với cơm trắng !', N'_Với bếp lửa: Đặt trong chảo, để lửa vừa phải khoảng 3-5 ph&uacute;t. Đảo thức ăn cho đến khi n&oacute;ng vừa đủ<br />
<br />
_L&ograve; Vi S&oacute;ng: Để ở nhiệt độ trung b&igrave;nh trong 2-3 ph&uacute;t (thời gian thay đổi t&ugrave;y theo l&ograve; vi s&oacute;ng của bạn).<br />
<br />
Ngon hơn khi d&ugrave;ng chung với cơm trắng.', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (16, N'Củ cải đường rang với Quả óc chó', N'cu-cai-duong-rang-voi-qua-oc-cho', 2, 1, N'/Images/Dish/16-Roasted-Beets-with-Walnuts.jpg', 12000, N'<br />
Rang củ cải đỏ v&agrave; quả &oacute;c ch&oacute; với cần t&acirc;y, hẹ, giấm v&agrave; dầu &ocirc; liu. Lựa chọn đơn giản cho m&oacute;n khai vị hoặc tr&aacute;ng miệng !', N'_ Kh&ocirc;ng cần sơ chế, c&oacute; thể d&ugrave;ng ngay.', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (17, N'Thơm chiên Brussels', N'thom-chien-brussels', 2, 1, N'/Images/Dish/17-Tangy-Fried-Brussels-Sprouts.jpg', 10000, N'Thơm chi&ecirc;n được tẩm gia vị. Th&iacute;ch hợp cho người ăn chay v&agrave; đang ăn ki&ecirc;ng.', N'_ Kh&ocirc;ng cần sơ chế.&nbsp;', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (18, N'Đậu lăng, Đậu xanh và Rau thơm', N'dau-lang-dau-xanh-va-rau-thom', 2, 36, N'/Images/Dish/18-Lentil-Chickpea-and-Feta-Salad.jpg', 16000, N'Đậu lăng, đậu xanh, gạo lức, v&agrave; rau thơm. M&oacute;n ăn xanh, tươi ngon ph&ugrave; hợp cho ai muốn giảm c&acirc;n', N'_ Kh&ocirc;ng cần sơ chế, c&oacute; thể d&ugrave;ng ngay.', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (19, N'Bông cải xanh và pho mát', N'bong-cai-xanh-va-pho-mat', 2, 1, N'/Images/Dish/19-Broccoli-Cheddar-Mac-and-Cheese.jpg', 23000, N'B&ocirc;ng cải xanh được x&agrave;o l&ecirc;n c&ugrave;ng với pho m&aacute;t v&agrave; một &iacute;t gia vị. Hương vị ngọt gi&ograve;n tươi xanh của b&ocirc;ng cải h&ograve;a quyện với pho m&aacute;t n&oacute;ng sẽ mang đến cho bạn một hương vị tuyệt vời. Rải th&ecirc;m một &iacute;t m&egrave; v&agrave; h&agrave;nh xắt nhỏ. H&atilde;y thử sự kết hợp mới mẻ n&agrave;y !', N'_ H&acirc;m n&oacute;ng nhẹ trong l&ograve; vi s&oacute;ng ở nhiệt độ thấp v&agrave;o khoảng 1-2 ph&uacute;t vừa đủ để thức ăn vừa ấm.<br />
_ Thưởng thức chung với b&aacute;nh m&igrave; sẽ ngon hơn !', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (20, N'Rau diếp và xà lách xanh', N'rau-diep-va-xa-lach-xanh', 2, 1, N'/Images/Dish/20-Little-Gem-Lettuce-Green-Salad.jpg', 12000, N'Thức ăn nhẹ d&agrave;nh cho người giảm c&acirc;n. Rau diếp trộn với x&agrave; l&aacute;ch xanh, tẩm th&ecirc;m một &iacute;t gia vị nhẹ.', N'Kh&ocirc;ng cần sơ chế, c&oacute; thể sử dụng ngay.', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (21, N'Cơm thịt gà  Chowder', N'com-thit-ga--chowder', 2, 1, N'/Images/Dish/21-Chicken-and-Rice-Chowder.jpg', 19000, N'G&agrave; x&eacute; nẫu với cơm, c&agrave; rốt, nấm v&agrave; s&uacute;p cua mang lại cho bạn một bữa ăn nhanh ch&oacute;ng v&agrave; dễ d&agrave;ng nhưng vẫn kh&ocirc;ng k&eacute;m phần thơm ngon !', N'_ Với bếp lửa: Đặt trong nồi, để lửa vừa phải trong 5 ph&uacute;t.<br />
_ Với l&ograve; vi s&oacute;ng: H&acirc;m thức ăn trong khoảng 3-5 ph&uacute;t cho tới nhiệt độ mong muốn.<br />
&nbsp;', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (22, N'Salad với tỏi Ceasar', N'salad-voi-toi-ceasar', 2, 1, N'/Images/Dish/22-Caesar-Salad-with-Garlic-Croutons.jpg', 12000, N'Ph&ugrave; hợp với người ăn chay. Gồm x&agrave; l&aacute;ch trộn với tỏi v&agrave; một &iacute;t gia vị nhẹ !', N'Kh&ocirc;ng cần sơ chế, c&oacute; thể sử dụng ngay', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (23, N'Dâu tây sữa chua', N'dau-tay-sua-chua', 2, 1, N'/Images/Dish/23-Local-Strawberries.jpg', 22000, N'Hương vị ngọt ng&agrave;o của d&acirc;u t&acirc;y h&ograve;a quyện trong d&ograve;ng sữa tươi ngọt ng&agrave;o sẽ l&agrave; một m&oacute;n ăn tươi m&aacute;t cho những bữa ăn nhẹ của bạn. Tốt cho da v&agrave; kh&ocirc;ng chứa chất b&eacute;o !', N'_ Đặt trong tủ lạnh trong khoảng 30 ph&uacute;t để m&oacute;n ăn được ngon hơn.', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (24, N'Khoai tây rang Hy Lạp', N'khoai-tay-rang-hy-lap', 2, 1, N'/Images/Dish/24-Greek-Style-Roasted-Potatoes.jpg', 17000, N'Đơn giản nhưng lu&ocirc;n lu&ocirc;n được ch&agrave;o đ&oacute;n. Khoai t&acirc;y rang theo phong c&aacute;ch Hy lạp, với vị thơm nhẹ từ ph&ocirc; mai v&agrave; bơ sẽ l&agrave; lựa chọn ph&ugrave; hợp khi bạn muốn ăn vặt.', N'_ Kh&ocirc;ng cần sơ chế, c&oacute; thể sử dụng ngay.', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (25, N'Atiso Castroville nướng.', N'atiso-castroville-nuong.', 2, 1, N'/Images/Dish/25-Grilled-Castroville-Artichokes.jpg', 32000, N'M&ugrave;i vị mới lạ từ quả Atiso sẽ cho bạn nhiều điều th&uacute; vị !<br />
Atis&ocirc; được nướng l&ecirc;n v&agrave; n&ecirc;m v&agrave;o một &iacute;t chanh tươi c&ugrave;ng tỏi&nbsp;v&agrave; dầu &ocirc; liu<br />
Th&ecirc;m v&agrave;o một ch&uacute;t ph&ocirc; mai tươi để c&oacute; vị thơm ngọt ng&agrave;o v&agrave; hấp dẫn.', N'Chuẩn bị một &iacute;t chanh v&agrave; sốt mayonnaise.<br />
<br />
Với L&ograve; Nướng: Đặt tr&ecirc;n tấm nướng. L&agrave;m n&oacute;ng ở 150 độ từ 2-3 ph&uacute;t.<br />
<br />
Với L&ograve; Vi S&oacute;ng: Đặt nhiệt độ 60 độ trong 5 ph&uacute;t (thời gian ch&ecirc;nh lệch 60 gi&acirc;y t&ugrave;y theo l&ograve; vi s&oacute;ng của bạn).<br />
<br />
B&oacute;p chanh, chấm atiso trong mayonnaise v&agrave;&nbsp;tận hưởng!<br />
&nbsp;', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (26, N'Súp cà chua rang', N'sup-ca-chua-rang', 2, 1, N'/Images/Dish/26-Roasted-Tomato-Soup.jpg', 16000, N'M&oacute;n ăn th&uacute; vị với hương vị đậm đ&agrave; với s&uacute;p c&agrave; chua. Th&iacute;ch hợp với người ăn chay v&agrave; cho những bữa ăn nhẹ đ&ecirc;m khuya.', N'_ H&acirc;m n&oacute;ng đến nhiệt độ th&iacute;ch hợp v&agrave; thưởng thức !', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (27, N'Súp khoai tây, tỏi xanh', N'sup-khoai-tay-toi-xanh', 2, 1, N'/Images/Dish/27-Potato-Leek-Green-Garlic-Soup.jpg', 15000, N'S&uacute;p khoai t&acirc;y, c&oacute; hương vị b&ugrave;i, ngọt nhẹ. Th&iacute;ch hợp cho người ăn chay.', N'Kh&ocirc;ng cần sơ chế, ngon hơn khi ăn n&oacute;ng.', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (28, N'Hương thảo và muối biển Focaccia', N'huong-thao-va-muoi-bien-focaccia', 2, 1, N'/Images/Dish/28-Rosemary-and-Sea-Salt-Focaccia.jpg', 23500, N'Hương Vị Nhẹ nh&agrave;ng từ c&aacute;c loại thảo mộc v&agrave; rau th&igrave; l&agrave; sẽ gi&uacute;p bạn c&oacute; một ng&agrave;y sảng kho&aacute;i hơn !', N'_ Kh&ocirc;ng cần sơ chế, c&oacute; thể d&ugrave;ng ngay !', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (29, N'Pho mát quảng trường Nicasio', N'pho-mat-quang-truong-nicasio', 2, 1, N'/Images/Dish/29-Nicasio-Square-Cheese-Plate.jpg', 18000, N'Pho m&aacute;t đặc biệt được nhập từ&nbsp;quảng trường Nicasio ở &Yacute;. Thơm ngon v&agrave; ph&ugrave; hợp khi đi k&egrave;m với mọi bữa ăn ch&iacute;nh !', N'Kh&ocirc;ng cần sơ chế. Ngon hơn khi đặt trong tủ lạnh trong khoảng 15-30 ph&uacute;t', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (30, N'Cocktail tôm California', N'cocktail-tom-california', 2, 1, N'/Images/Dish/30-California-Shrimp-Cocktail.jpg', 27500, N'T&ocirc;m luộc mang hương vị cổ điển với c&aacute;c loại gia vị đặc biệt v&agrave; ăn k&egrave;m với rau diếp c&aacute;, cần t&acirc;y v&agrave; nước sốt cocktail truyền thống. Nước sốt được l&agrave;m bằng vụn gốc cần t&acirc;y, nụ bạch hoa, chanh tươi v&agrave; giấm.<br />
Q&uacute;a tuyệt vời cho một m&oacute;n khai vị hoặc ăn vặt !', N'_ Kh&ocirc;ng cần phải nấu lại, chỉ cần thưởng thức !<br />
_ Nếu bạn muốn ăn n&oacute;ng c&oacute; thể h&acirc;m lại trong trong l&ograve; vi s&oacute;ng ở nhiệt độ thấp.', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (31, N'Súp cà rốt Masala', N'sup-ca-rot-masala', 2, 1, N'/Images/Dish/31-Spiced-Carrot-Masala-Soup.jpg', 16000, N'M&oacute;n s&uacute;p được l&agrave;m từ carot v&agrave; th&ecirc;m một &iacute;t gia vị nhẹ. Th&iacute;ch hợp cho người ăn chay !', N'_ H&acirc;m n&oacute;ng cho tới nhiệt độ mong muốn v&agrave; thưởng thức !', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (32, N'Củ cải rang và phô mai dê', N'cu-cai-rang-va-pho-mai-de', 2, 1, N'/Images/Dish/32-Roasted-Beet-Goat-Cheese-Salad.jpg', 17000, N'Rang củ cải với giấm v&agrave; hạt m&ugrave; tạt. Qu&eacute;t l&ecirc;n một lớp ph&ocirc; mai d&ecirc; v&agrave; rau cắt nhỏ. Tươi ngon v&agrave; b&eacute;o ngọt !', N'_ Kh&ocirc;ng cần sơ chế. Th&ecirc;m v&agrave;o một ch&uacute;t chanh v&agrave; tận hưởng !', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (33, N'Khoai tây nướng cho trẻ em', N'khoai-tay-nuong-cho-tre-em', 3, 1, N'/Images/Dish/33-Kids-Loaded-Baked-Potato.jpg', 16500, N'T&ocirc;i lu&ocirc;n lu&ocirc;n th&iacute;ch nướng khoai t&acirc;y đ&ecirc;m như một đứa trẻ. Khoai t&acirc;y m&agrave;u n&acirc;u đỏ được nướng l&ecirc;n c&oacute; m&ugrave;i vị dịu d&agrave;ng v&agrave; đi k&egrave;m với lớp gia vị tr&ecirc;n bề mặt rất hấp dẫn. M&oacute;n ăn tuyệt vời cho mọi trẻ em !', N'Với L&ograve; Nướng: Đặt tr&ecirc;n tấm nướng. L&agrave;m n&oacute;ng đến 150 độ. Chờ 5 ph&uacute;t. Lấy m&oacute;n ăn ra v&agrave; quết l&ecirc;n một lớp pho m&aacute;t, cho v&agrave;o l&ograve; th&ecirc;m 2 ph&uacute;t nữa để m&oacute;n ăn đủ ấm.<br />
<br />
Với L&ograve; Vi S&oacute;ng: Đặt khoai t&acirc;y 2-3 ph&uacute;t cho đến khi n&oacute;ng, th&ecirc;m ph&ocirc; mai , chỉnh nhiệt độ mỗi 30 gi&acirc;y cho tới khi đủ n&oacute;ng.<br />
<br />
Ngon hơn khi ăn k&egrave;m với sữa tươi.', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (34, N'Đùi gà nướng', N'dui-ga-nuong', 3, 1, N'/Images/Dish/34-Roasted-Chicken-Drumstick.jpg', 18000, N'Đ&ugrave;i g&agrave; nướng được tẩm bơ v&agrave; nước sốt. Ăn k&egrave;m với cơm trắng v&agrave; rau x&agrave; l&aacute;ch tươi.<br />
Cung cấp đầy đủ dinh dưỡng cho một bữa ăn của trẻ con !', N'_ H&acirc;m n&oacute;ng đ&ugrave;i g&agrave; bằng l&ograve; vi s&oacute;ng trong khoảng 1-2 ph&uacute;t đến khi vừa đủ ấm.<br />
_ Ăn k&egrave;m với cơm trắng. Ngon hơn nếu c&oacute; k&egrave;m th&ecirc;m m&oacute;n nước tr&aacute;i c&acirc;y.', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (35, N'Bánh kem bơ vị Caremel', N'banh-kem-bo-vi-caremel', 4, 1, N'/Images/Dish/35-Salted-Caramel-Buttercream-Cake.jpg', 21000, N'Đ&acirc;y l&agrave; 2 lớp b&aacute;nh được l&agrave;m với 72% s&ocirc; c&ocirc; la. C&ograve;n lại l&agrave; trứng v&agrave; kem tươi. Tr&ecirc;n đỉnh b&aacute;nh được phết một lớp caramel bơ rất hấp dẫn !', N'_ Kh&ocirc;ng cần sơ chế.<br />
_ Ngon hơn khi d&ugrave;ng chung với sữa tươi.', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (36, N'Bánh nướng cam ', N'banh-nuong-cam-', 4, 1, N'/Images/Dish/36-Theda-Orange-Cranberry-Scone.jpg', 14500, N'B&aacute;nh được trộn với việt quất kh&ocirc; da cam, v&agrave; men cam ngọt ng&agrave;o.<br />
Được l&agrave;m theo b&aacute;nh nướng &nbsp;phong c&aacute;ch truyền thống của&nbsp;Vương quốc Anh, mềm v&agrave; dẻo khi ăn.', N'_ Kh&ocirc;ng cần sơ chế.', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (37, N'Bánh Sô cô la 3 lớp', N'banh-so-co-la-3-lop', 4, 1, N'/Images/Dish/37-Triple-Play-Chocolate-Pudding.jpg', 17000, N'M&oacute;n tr&aacute;ng miệng n&agrave;y được thực hiện với ba loại s&ocirc; c&ocirc; la: bột ca cao, s&ocirc; c&ocirc; la b&aacute;n ngọt v&agrave; s&ocirc; c&ocirc; la kh&ocirc;ng đường. Tất cả kết hợp với kem tươi, sữa v&agrave; trứng. Phủ l&ecirc;n tr&ecirc;n c&ugrave;ng l&agrave; lớp kem tươi. M&oacute;n tr&aacute;ng miệng tuyệt vời cho m&ugrave;a h&egrave; n&oacute;ng bức !', N'_ Ngon hơn khi ướp lạnh.', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (38, N'Bánh ngọt bơ đậu phộng', N'banh-ngot-bo-dau-phong', 4, 1, N'/Images/Dish/38-Peanut-Butter-Cup-Cookie.jpg', 16000, N'Đơn giản nhưng lu&ocirc;n l&agrave;m h&agrave;i l&ograve;ng những ai kh&oacute; t&iacute;nh nhất.<br />
B&aacute;nh mang vị b&ugrave;i v&agrave; thơm ngon của bơ đậu phộng.', N'_ Kh&ocirc;ng cần sơ chế.<br />
_ Ngon hơn khi d&ugrave;ng chung với c&aacute;c loại nước m&aacute;t lạnh.', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (39, N'Chocolate Brownie Mascarpone ', N'chocolate-brownie-mascarpone-', 4, 1, N'/Images/Dish/39-Mascarpone-Brownie.jpg', 17000, N'Kh&ocirc;ng giống như bất kỳ m&oacute;n b&aacute;nh Chocolate&nbsp;Brownie&nbsp;kh&aacute;c m&agrave; bạn đ&atilde; từng ăn. Chiếc b&aacute;nh n&agrave;y rất d&agrave;y, dẻo, v&agrave; gi&agrave;u s&ocirc; c&ocirc; la, nhưng kh&ocirc;ng qu&aacute; ngọt. Hương Mascarpone l&agrave; th&agrave;nh phần quan trọng l&agrave;m cho m&oacute;n ăn trở n&ecirc;n đặc biệt. H&atilde;y tự m&igrave;nh cảm nhận n&oacute; !', N'_ Kh&ocirc;ng cần sơ chế, c&oacute; thể sử dụng ngay !', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (40, N'Bánh Cupcake Nho Khô', N'banh-cupcake-nho-kho', 4, 1, N'/Images/Dish/40-Blueberry-Bran-Muffin.jpg', 18000, N'B&aacute;nh nướng d&agrave;nh cho mọi lứa tuổi được tẩm từ kem chua , mật đường v&agrave; một &iacute;t nho kh&ocirc;.<br />
Thưởng thức chiếc b&aacute;nh muffin ngọt ng&agrave;o l&agrave; một c&aacute;ch tuyệt vời để bắt đầu một ng&agrave;y của bạn !', N'_ D&ugrave;ng ngay v&agrave; kh&ocirc;ng cần sơ chế.<br />
_ Ngon hơn khi d&ugrave;ng chung với sữa tươi.', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (41, N'Bánh mì táo yến mạch', N'banh-mi-tao-yen-mach', 4, 1, N'/Images/Dish/41-Zucchini-Apple-Oat Bread.jpg', 17000, N'M&oacute;n b&aacute;nh n&agrave;y được l&agrave;m từ b&iacute; đỏ, t&aacute;o v&agrave; yến mạch.<br />
Lu&ocirc;n l&agrave; lựa chọn ho&agrave;n hảo cho một bữa ăn nhẹ buổi chiều !', N'_ Kh&ocirc;ng cần sơ chế.<br />
_ Đặt trong tủ lạnh trong khoảng 30 ph&uacute;t để thử m&ugrave;i vị mới, gi&ograve;n v&agrave; m&aacute;t hơn !', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (42, N'Bánh Cupcake Chocolate', N'banh-cupcake-chocolate', 4, 1, N'/Images/Dish/42-Mexican-Chocolate-Brownie.jpg', 16000, N'Được l&agrave;m theo b&aacute;nh nướng truyền thống kiểu Anh. C&oacute; m&ugrave;i vị s&ocirc; c&ocirc; la thơm ngon v&agrave; l&agrave; m&oacute;n ăn ho&agrave;n hảo cho bữa s&aacute;ng.', N'_ Kh&ocirc;ng cần sơ chế.<br />
_ Ngon hơn khi d&ugrave;ng chung với sữa tươi.', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (43, N'Bánh cupcake Vani', N'banh-cupcake-vani', 4, 1, N'/Images/Dish/43-Dirty-Blonde.jpg', 16000, N'B&aacute;nh cupcake được tẩm hương vani v&agrave; rắc dừa nướng.<br />
Gi&agrave;u chất chống oxy h&oacute;a hữu cơ v&agrave; mang đến hương vị ngọt ng&agrave;o cho buổi s&aacute;ng.', N'_ Kh&ocirc;ng cần sơ chế.<br />
_ Ngon hơn khi d&ugrave;ng với sữa tươi.', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (44, N'Bánh sô cô la cổ điển', N'banh-so-co-la-co-dien', 4, 1, N'/Images/Dish/44-Classic-Chocolate-Chip-Cookie.jpg', 6000, N'Ngọt v&agrave; gi&ograve;n !<br />
Những chiếc b&aacute;nh s&ocirc; c&ocirc; la cổ điển lu&ocirc;n l&agrave; lựa chọn tốt nhất cho những bữa ăn gia đ&igrave;nh hoặc c&ugrave;ng bạn b&egrave;.', N'_ Kh&ocirc;ng cần sơ chế, c&oacute; thể sử dụng ngay.<br />
_ Ngon hơn khi ăn n&oacute;ng hoặc ăn lạnh.<br />
_ Ngon hơn khi d&ugrave;ng k&egrave;m với sữa tươi.', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (45, N'Bánh sô cô la mặn ngọt', N'banh-so-co-la-man-ngot', 4, 1, N'/Images/Dish/45-Salty-Sweet-Chocolate-Chip-Cookie.jpg', 6000, N'Cho những ai th&iacute;ch hương vị mặn ngọt trộn lẫn. B&aacute;nh được rắc th&ecirc;m một lớp m&egrave; trắng ph&iacute;a tr&ecirc;n.<br />
H&atilde;y thử v&agrave; cảm nhận !<br />
&nbsp;', N'_ Kh&ocirc;ng cần sơ chế, c&oacute; thể sử dụng ngay.<br />
_ Ngon hơn khi ăn n&oacute;ng hoặc ăn lạnh.<br />
_ Ngon hơn khi d&ugrave;ng k&egrave;m với sữa tươi.', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (46, N'G.Reedy Sauvignon Blanc', N'g.reedy-sauvignon-blanc', 5, 1, N'/Images/Dish/46-GReedy-Sauvignon-Blanc.jpg', 230000, N'G.Reedy Sauvignon Blanc lu&ocirc;n l&agrave;m vừa l&ograve;ng những người kh&oacute; t&iacute;nh nhất với m&ugrave;i vị truyền thống đặc trưng. Dễ uống v&agrave; kh&oacute; qu&ecirc;n !', N'_ Ngon hơn khi d&ugrave;ng trong c&aacute;c bữa ăn.', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (47, N'La Merika Cabernet Sauvignon', N'la-merika-cabernet-sauvignon', 5, 1, N'/Images/Dish/47-La-Merika-Cabernet-Sauvignon.jpg', 180000, N'Rượu vang&nbsp;La Merika Cabernet Sauvignon được ủ từ nho đen ch&iacute;n tới. Mang hương vị đặc trưng của miền qu&ecirc; nước Ph&aacute;p, v&agrave; lu&ocirc;n l&agrave; sự lựa chọn tốt khi đi k&egrave;m c&aacute;c m&oacute;n c&aacute; tươi của bữa ch&iacute;nh.', N'_ Ngon hơn khi uống lạnh', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (48, N'Cafe Tesora', N'cafe-tesora', 5, 1, N'/Images/Dish/48-Tesora-Blend.jpg', 15000, N'Đơn giản nhưng tinh tế.&nbsp;Cafe Tesora lu&ocirc;n mang cho bạn hương vị b&igrave;nh dị nhất !', N'_ Kh&ocirc;ng cần sơ chế.<br />
_ Ngon hơn khi uống n&oacute;ng', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (49, N'Cafe sữa Jacob''s Wonderbar', N'cafe-sua-jacob''s-wonderbar', 5, 1, N'/Images/Dish/49-Jacobs-Wonderbar.jpg', 16000, N'H&ograve;a quyện giữa vị đắng của cafe v&agrave; vị ngọt ng&agrave;o của sữa tươi hồ đ&agrave;o. Một cốc cafe sữa&nbsp;Jacob&#39;s Wonderbar sẽ cho bạn những gi&acirc;y ph&uacute;t nhẹ nh&agrave;ng !', N'_ Kh&ocirc;ng cần sơ chế.<br />
_ Ngon hơn khi uống n&oacute;ng.', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (50, N'Rượu tuyết Junmai', N'ruou-tuyet-junmai', 5, 1, N'/Images/Dish/50-Tozai-Snow-Maiden-Sake-Junmai.jpg', 120000, N'Mang phong c&aacute;ch từ Nhật bản. M&ugrave;i hương tươi s&aacute;ng v&agrave; ngọt ng&agrave;o từ sự kết hợp của rượu trắng v&agrave; tr&aacute;i c&acirc;y. Uống v&agrave;o trong miệng sẽ cho bạn hương vị tươi mới của tr&aacute;i c&acirc;y tươi v&agrave; l&uacute;a mới.&nbsp;Một sự dễ chịu lan tỏa trong cổ họng khi nuốt v&agrave;o. Bạn sẽ ngạc nhi&ecirc;n với thức uống th&uacute; vị n&agrave;y !', N'_ C&oacute; thể sử dụng ngay. Ngon hơn khi hơi lạnh.', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (51, N'Rượu Prosecco Brut', N'ruou-prosecco-brut', 5, 1, N'/Images/Dish/51-Zefiro-Prosecco-Brut-NV.jpg', 270000, N'Thường xuy&ecirc;n c&oacute; mặt trong c&aacute;c bữa ăn của người &Yacute;, rượu Prosecco Brut c&oacute; m&ugrave;i vị dễ uống v&agrave; mang lại cảm gi&aacute;c dễ chịu, gi&uacute;p m&oacute;n ăn ngon hơn, dễ hấp thu hơn !', N'Kh&ocirc;ng cần sơ chế, c&oacute; thể sử dụng ngay !', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (52, N'Rượu Ace Joker', N'ruou-ace-joker', 5, 1, N'/Images/Ingredient/Ruou_AceJocker.jpg', 150000, N'Rượu c&oacute; độ cồn nặng, hương vị ngọt ng&agrave;o. Được l&agrave;m từ nho đen l&ecirc;n men ướp với hương bạc h&agrave;. L&agrave; thức uống ph&ugrave; hợp cho những m&oacute;n ăn cay !', N'Kh&ocirc;ng cần sơ chế, c&oacute; thể d&ugrave;ng ngay !', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (53, N'Cafe đá Gusto', N'cafe-da-gusto', 5, 1, N'/Images/Dish/53-Gusto-Iced-Coffee.jpg', 14000, N'Được l&agrave;m từ hạt cafe rang xay. Hương vị đậm đ&agrave; v&agrave; khiến bạn tỉnh t&aacute;o trong mọi ho&agrave;n cảnh !', N'_ C&oacute; thể d&ugrave;ng ngay.<br />
_ Ngon hơn khi uống lạnh !', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (54, N'Nước ép củ cải đường', N'nuoc-ep-cu-cai-duong', 5, 1, N'/Images/Dish/54-Freshly-Pressed-Beet-Juice.jpg', 11000, N'C&oacute; vị tươi ngọt từ củ cải đường, c&oacute; lợi cho sức khỏe, th&iacute;ch hợp với người ăn chay !', N'Ngon hơn khi uống lạnh !', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (55, N'Nước cam ép', N'nuoc-cam-ep', 5, 1, N'/Images/Dish/55-Freshly-Pressed-Orange-Juice.jpg', 17000, N'Nước cam tươi m&aacute;t, bổ sung vitamin cho cơ thể !', N'_ Ngon hơn khi uống lạnh', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (56, N'Nước ép cà rốt', N'nuoc-ep-ca-rot', 5, 1, N'/Images/Dish/56-Freshly-Pressed-Carrot-Juice.jpg', 16000, N'Th&iacute;ch hợp với c&aacute;c c&ocirc;, chị trong việc giữ g&igrave;n l&agrave;n da đẹp. Đồng thời bổ xung chất xơ cho cơ thể. Ngon v&agrave; bổ !', N'_ Ngon hơn khi uống lạnh.', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (57, N'Nước ép cải xoăn', N'nuoc-ep-cai-xoan', 5, 1, N'/Images/Dish/57-Freshly-Pressed-Kale-Juice.jpg', 12000, N'Th&iacute;ch hợp cho những người muốn giảm c&acirc;n. Bổ sung chất xơ, v&agrave; mang lại m&ugrave;i vị mới mẻ khi thưởng thức !', N'_ Ngon hơn khi uống lạnh.', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (58, N'Sữa Nut hỗn hợp', N'sua-nut-hon-hop', 5, 1, N'/Images/Dish/58-Mixed-Nut-Milk.jpg', 16000, N'Sự pha trộn tuyệt vời của hạnh nh&acirc;n, quả phỉ, hạt hồ đ&agrave;o, quế, sữa tươi v&agrave; nước lọc.&nbsp;<br />
Buổi s&aacute;ng của b&aacute;n sẽ tuyệt vời hơn với một ly sữa tươi ngon !', N'_ Ngon hơn khi uống lạnh !', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (59, N'Sữa hạnh nhân', N'sua-hanh-nhan', 5, 1, N'/Images/Dish/59-Classic-Almond-Milk.jpg', 18000, N'Chứa hạnh nh&acirc;n, quế, v&agrave; sữa tươi.<br />
Sự lựa chọn tuyệt vời khi d&ugrave;ng chung với c&aacute;c loại b&aacute;nh tr&aacute;ng miệng.', N'_ Ngon hơn khi uống n&oacute;ng !', 0, 1, 0, 0)
SET IDENTITY_INSERT [dbo].[Dish] OFF
/****** Object:  Table [dbo].[Bill]    Script Date: 04/28/2014 17:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Status] [int] NOT NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_Bill] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bill] ON
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (1, N'EWCABC123456', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (2, N'DEFBAC2345677', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (3, N'DEFBAC1234567', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (4, N'DEFBAC3456789', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (8, N'DCVV102945811', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (11, N'ICASAGS102931', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (12, N'QUATOAI93019', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (15, N'OQWFQWFA029', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (16, N'UASIFWQ77890', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (17, N'QFGQWG124156', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (18, N'OOIUYAIWL1144', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (20, N'IWFQOO999881', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (21, N'OQEFQWO19928', 2, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (22, N'IIQOOBN938189', 2, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (23, N'PPPWIFQN3998', 2, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (25, N'IEOQBCG98000', 2, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (26, N'IEFEQ7669000', 2, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (27, N'IDOQOOO7677', 2, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (31, N'JEOUUUASN881', 2, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (32, N'KKALQI009109', 2, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (33, N'QKFQOW77800', 2, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (34, N'KVALNYYIYQWP', 2, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (40, N'JIAFFV8766611', 2, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (41, N'MCAIOOCC127', 2, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (43, N'NVZMMA661U88', 2, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (44, N'NPPOQUB87311', 2, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (48, N'HHHR88849991', 2, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (49, N'MSA180091116', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (50, N'MAKYYQIW4141', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (52, N'YIOTTTWQ1667', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (54, N'IYQONNVB7771', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (55, N'MAS5678BGYYGY', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (56, N'QPB6X32057', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (57, N'RAQVL32127', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (58, N'UHV6LK2107', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (59, N'ZVESJG2119', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (60, N'76CEH32112', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (61, N'XWS6GX2111', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (62, N'ZUSKDJ2117', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (63, N'34HH5D2157', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (64, N'6X3GQZ2154', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (65, N'G47E9X2132', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (66, N'TSU7KN2125', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (67, N'PCU3932147', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (68, N'8AVW5P2124', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (69, N'W83VE82086', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (70, N'LBAW872143', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (72, N'RAQVL32136', 1, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [Status], [UserId]) VALUES (73, N'RAQVL32118', 1, NULL)
SET IDENTITY_INSERT [dbo].[Bill] OFF
/****** Object:  Table [dbo].[FAQ]    Script Date: 04/28/2014 17:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAQ](
	[FAQId] [int] IDENTITY(1,1) NOT NULL,
	[ChefId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Question] [nvarchar](max) NULL,
	[Answer] [nvarchar](max) NULL,
	[NumOfLike] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_FAQ] PRIMARY KEY CLUSTERED 
(
	[FAQId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FAQ] ON
INSERT [dbo].[FAQ] ([FAQId], [ChefId], [UserId], [Question], [Answer], [NumOfLike], [Status]) VALUES (1, 1, 5, N'sfsdf', N'sdfsdf', 1, 1)
INSERT [dbo].[FAQ] ([FAQId], [ChefId], [UserId], [Question], [Answer], [NumOfLike], [Status]) VALUES (2, 1, 5, N'cooking?', NULL, 0, 1)
SET IDENTITY_INSERT [dbo].[FAQ] OFF
/****** Object:  Table [dbo].[ChefSkill]    Script Date: 04/28/2014 17:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChefSkill](
	[ChefId] [int] NOT NULL,
	[SkillId] [int] NOT NULL,
	[Score] [int] NOT NULL,
 CONSTRAINT [PK_ChefSkill] PRIMARY KEY CLUSTERED 
(
	[ChefId] ASC,
	[SkillId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChefSkill] ([ChefId], [SkillId], [Score]) VALUES (1, 1, 70)
INSERT [dbo].[ChefSkill] ([ChefId], [SkillId], [Score]) VALUES (1, 2, 80)
INSERT [dbo].[ChefSkill] ([ChefId], [SkillId], [Score]) VALUES (1, 6, 85)
INSERT [dbo].[ChefSkill] ([ChefId], [SkillId], [Score]) VALUES (4, 3, 90)
INSERT [dbo].[ChefSkill] ([ChefId], [SkillId], [Score]) VALUES (4, 4, 60)
INSERT [dbo].[ChefSkill] ([ChefId], [SkillId], [Score]) VALUES (4, 5, 80)
INSERT [dbo].[ChefSkill] ([ChefId], [SkillId], [Score]) VALUES (10, 3, 45)
INSERT [dbo].[ChefSkill] ([ChefId], [SkillId], [Score]) VALUES (10, 6, 89)
INSERT [dbo].[ChefSkill] ([ChefId], [SkillId], [Score]) VALUES (18, 1, 57)
INSERT [dbo].[ChefSkill] ([ChefId], [SkillId], [Score]) VALUES (18, 2, 67)
INSERT [dbo].[ChefSkill] ([ChefId], [SkillId], [Score]) VALUES (36, 1, 50)
INSERT [dbo].[ChefSkill] ([ChefId], [SkillId], [Score]) VALUES (36, 2, 65)
INSERT [dbo].[ChefSkill] ([ChefId], [SkillId], [Score]) VALUES (36, 3, 70)
/****** Object:  Table [dbo].[Ingredient]    Script Date: 04/28/2014 17:09:17 ******/
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
	[Description] [nvarchar](max) NULL,
	[IsAvailable] [bit] NOT NULL,
 CONSTRAINT [PK__Ingredie__3214EC07276EDEB3] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ingredient] ON
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (1, N'Macaroni', 6, N'/Images/Ingredient/macaroni_nui.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (2, N'Sữa tươi', 7, N'/Images/Ingredient/Sua_tuoi.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (3, N'Cua xanh', 3, N'/Images/Ingredient/Cua_Xanh.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (4, N'Sò', 3, N'/Images/Ingredient/So.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (5, N'Tôm', 3, N'/Images/Ingredient/Tom.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (6, N'Pho mát', 7, N'/Images/Ingredient/Pho_mat.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (7, N'Kem Whipping ', 7, N'/Images/Ingredient/Kem_whipped.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (8, N'Mỳ ý trắng', 6, N'/Images/Ingredient/My_Y_Trang.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (9, N'Củ hành', 4, N'/Images/Ingredient/Cu_Hanh.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (10, N'Muối Kosher', 7, N'/Images/Ingredient/Muoi_Korser.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (11, N'Thịt Gà', 1, N'/Images/Ingredient/thitga.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (12, N'Gạo lức', 8, N'/Images/Ingredient/gao_lut.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (13, N'Xúc xích heo', 9, N'/Images/Ingredient/xuc_xich_heo.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (14, N'Đậu đỏ', 8, N'/Images/Ingredient/Dau_do.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (15, N'Bột năng', 6, N'/Images/Ingredient/Bot_Nang.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (16, N'Cần tây', 4, N'/Images/Ingredient/Can_tay.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (17, N'Bơ', 7, N'/Images/Ingredient/Bo.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (18, N'Ớt bột', 7, N'/Images/Ingredient/Ot_bot.png', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (19, N'Tỏi', 7, N'/Images/Ingredient/Toi.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (20, N'Thì là', 4, N'/Images/Ingredient/Thi_La.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (21, N'Rau thơm', 4, N'/Images/Ingredient/Rau_Thom.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (22, N'Ớt tươi', 7, N'/Images/Ingredient/Ot_tuoi.gif', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (23, N'Thịt heo thăn', 1, N'/Images/Ingredient/thit_heo_than.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (24, N'Trái Thơm', 4, N'/Images/Ingredient/Trai_thom.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (25, N'Đường trắng', 7, N'/Images/Ingredient/Duong_Trang.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (26, N'Tamari', 7, N'/Images/Ingredient/Tamari.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (27, N'Dầu ăn', 7, N'/Images/Ingredient/dau-an.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (28, N'Vừng', 7, N'/Images/Ingredient/Vung.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (29, N'Xà lách', 4, N'/Images/Ingredient/Xa_Lach.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (30, N'Gừng', 4, N'/Images/Ingredient/gung.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (31, N'Thịt bò', 1, N'/Images/Ingredient/ThitBo.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (32, N'Cải Brussels ', 4, N'/Images/Ingredient/Cai_Brusseles.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (33, N'Bột ngũ cốc', 6, N'/Images/Ingredient/Bot_ngu_coc.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (34, N'Chanh', 7, N'/Images/Ingredient/chanh.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (35, N'Couscous', 8, N'/Images/Ingredient/couscous.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (36, N'Trái bơ', 4, N'/Images/Ingredient/Trai_Bo.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (37, N'Rau diếp cá', 4, N'/Images/Ingredient/Rau_Diep_Ca.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (38, N'Khoai tây', 4, N'/Images/Ingredient/khoai-tay-2.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (39, N'Gạo trắng', 8, N'/Images/Ingredient/gao_trang.png', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (40, N'Tương cà', 7, N'/Images/Ingredient/tuong_ca.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (41, N'Cà rốt', 4, N'/Images/Ingredient/Ca_rot.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (42, N'Nho khô vàng', 7, N'/Images/Ingredient/Nho_kho_vang.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (43, N'Hạt thông', 4, N'/Images/Ingredient/Hat_thong.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (44, N'Dầu cải', 7, N'/Images/Ingredient/dui ga.jpg', 0, NULL, 0)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (45, N'Bánh mỳ lát', 9, N'/Images/Ingredient/banh_my_lat.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (46, N'Quả mơ khô', 4, N'/Images/Ingredient/qua_mo_kho.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (47, N'Sốt Mayonnaise', 7, N'/Images/Ingredient/mayonnaise.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (48, N'Pistachio nuts', 9, N'/Images/Ingredient/dui ga.jpg', 0, NULL, 0)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (49, N'Rau hẹ', 4, N'/Images/Ingredient/Rau_he.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (50, N'Cà tím', 4, N'/Images/Ingredient/Ca_tim.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (51, N'Đậu xanh', 8, N'/Images/Ingredient/dau_xanh.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (52, N'Mè', 7, N'/Images/Ingredient/Hat_me.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (53, N'Dưa leo', 4, N'/Images/Ingredient/dua_leo.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (54, N'Dầu ô liu', 7, N'/Images/Ingredient/dau_oliu.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (55, N'Rau dền', 4, N'/Images/Ingredient/rau-den-2.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (56, N'Bầu', 4, N'/Images/Ingredient/trai_bau.jpg', 1, NULL, 0)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (57, N'Dầu cải', 7, N'/Images/Ingredient/gio heo.jpg', 0, NULL, 0)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (58, N'Đậu Hà Lan', 8, N'/Images/Ingredient/dau-Ha-Lan.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (59, N'Mỳ Pasta', 8, N'/Images/Ingredient/gio heo.jpg', 1, NULL, 0)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (60, N'Bí đỏ', 4, N'/Images/Ingredient/Bi_Do.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (61, N'Hạt điều', 8, N'/Images/Ingredient/hat-dieu.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (62, N'Hành lá', 4, N'/Images/Ingredient/Hanh_la.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (63, N'Cranberries', 5, N'/Images/Ingredient/ca thu.jpg', 1, NULL, 0)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (64, N'Rượu vang đỏ', 7, N'/Images/Ingredient/ca thu.jpg', 1, NULL, 0)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (65, N'Tương cà chua', 7, N'/Images/Ingredient/tuong_ca.jpg', 0, NULL, 0)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (66, N'Nấm rơm', 4, N'/Images/Ingredient/Nam_rom.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (67, N'Thịt cừu', 1, N'/Images/Ingredient/thit-cuu.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (68, N'Trứng gà', 9, N'/Images/Ingredient/trung_ga.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (69, N'Feta Cheese', 9, N'/Images/Ingredient/ca thu.jpg', 0, NULL, 0)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (70, N'Cá hồi', 2, N'/Images/Ingredient/cahoi.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (71, N'Củ cải trắng', 4, N'/Images/Ingredient/Cu_cai_trang.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (72, N'Miso', 7, N'/Images/Ingredient/Miso.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (73, N'Cải bó xôi', 4, N'/Images/Ingredient/Cai_bo_xoi.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (74, N'Nước mắm', 7, N'/Images/Ingredient/nuoc_mam.400.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (75, N'Mướp đắng', 4, N'/Images/Ingredient/muop-dang.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (76, N'Giấm trắng', 7, N'/Images/Ingredient/trung.jpg', 0, NULL, 0)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (77, N'Black walnuts', 7, N'/Images/Ingredient/Black-Walnut.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (78, N'Tương ớt', 7, N'/Images/Ingredient/Tuong_ot.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (79, N'Cam', 5, N'/Images/Ingredient/Cam.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (80, N'Thịt ba chỉ', 1, N'/Images/Ingredient/thit_ba_chi.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (81, N'Thịt chim cút', 1, N'/Images/ingredient/noimage.jpg', 0, NULL, 0)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (82, N'Cá bống', 2, N'/Images/Ingredient/ca-bong.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (83, N'Thịt Lợn', 1, N'/Images/Ingredient/Thit_lon.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (84, N'Cá trắm', 2, N'/Images/Ingredient/Ca-tram.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (85, N'Cá ngừ', 2, N'/Images/Ingredient/Ca_ngu.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (86, N'Cá Diêu Hồng', 2, N'/Images/Ingredient/ca_dieu_hong.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (87, N'Cá kèo', 2, N'/Images/Ingredient/Ca_keo.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (88, N'Cá Thu', 2, N'/Images/Ingredient/Ca_thu.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (89, N'Mực ', 3, N'/Images/Ingredient/muctuoi.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (90, N'Cua bể', 3, N'/Images/Ingredient/cua_be.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (91, N'Ghẹ Xanh', 3, N'/Images/Ingredient/ghe_xanh.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (92, N'Ghẹ Lột', 3, N'/Images/Ingredient/ghe-lot.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (93, N'Hến', 3, N'/Images/Ingredient/con_hen.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (94, N'Tôm càng xanh', 3, N'/Images/Ingredient/tom_cang_xanh.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (95, N'Tôm Hùm', 3, N'/Images/Ingredient/tom_hum.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (96, N'Tép', 3, N'/Images/Ingredient/Tep.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (97, N'Chuối', 5, N'/Images/Ingredient/Chuoi.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (98, N'Táo', 5, N'/Images/Ingredient/tao.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (99, N'Đu Đủ', 5, N'/Images/Ingredient/du_du.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (100, N'Chanh Dây', 5, N'/Images/Ingredient/chanh-day.jpg', 0, NULL, 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (101, N'Nho Xanh', 5, N'/Images/Ingredient/nho-xanh.jpg', 0, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (102, N'Bột đậu rán', 8, N'/Images/Ingredient/falafel.jpg', 1, NULL, 0)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (103, N'Nho Đen', 5, N'/Images/Ingredient/nho-den.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (104, N'Dâu tây', 5, N'/Images/Ingredient/Dau_tay.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (105, N'Atiso', 5, N'/Images/Ingredient/atiso.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (106, N'Chocolate', 7, N'/Images/Ingredient/chocolate.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (107, N'Bột Mì', 6, N'/Images/Ingredient/Bot_Mi.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (108, N'Củ cải đường', 4, N'/Images/Ingredient/cu-cai-duong.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (109, N'Mì nơ vàng', 6, N'/Images/Ingredient/farfalle.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (110, N'Táo nhỏ', 5, N'/Images/Ingredient/Tao_nho.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (111, N'Bông cải trắng', 4, N'/Images/Ingredient/bông-cải-trắng.jpg', 1, NULL, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [Description], [IsAvailable]) VALUES (112, N'Hạt cà phê', 9, N'/Images/Ingredient/cafe-rang-xay.jpg', 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[Ingredient] OFF
/****** Object:  Table [dbo].[FAQLike]    Script Date: 04/28/2014 17:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAQLike](
	[FAQId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_FAQLike] PRIMARY KEY CLUSTERED 
(
	[FAQId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAQComment]    Script Date: 04/28/2014 17:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAQComment](
	[FAQCommentId] [int] IDENTITY(1,1) NOT NULL,
	[FAQId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[ParentComment] [int] NULL,
 CONSTRAINT [PK_FAQComment] PRIMARY KEY CLUSTERED 
(
	[FAQCommentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DishTag]    Script Date: 04/28/2014 17:09:17 ******/
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
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (1, 4)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (1, 8)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (2, 7)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (2, 8)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (3, 4)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (3, 9)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (4, 2)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (5, 2)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (5, 8)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (6, 2)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (7, 4)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (7, 9)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (8, 2)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (8, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (9, 1)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (9, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (10, 8)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (10, 9)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (11, 1)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (11, 2)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (12, 4)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (12, 10)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (13, 4)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (13, 9)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (14, 2)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (14, 8)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (15, 2)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (15, 4)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (16, 1)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (16, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (17, 1)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (17, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (17, 7)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (17, 11)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (18, 1)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (18, 2)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (18, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (19, 1)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (20, 1)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (20, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (20, 7)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (21, 4)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (22, 1)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (22, 4)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (23, 1)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (23, 4)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (23, 7)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (24, 1)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (24, 4)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (25, 1)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (25, 4)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (26, 2)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (26, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (26, 5)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (26, 7)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (27, 1)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (28, 1)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (29, 9)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (30, 4)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (31, 2)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (31, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (31, 11)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (32, 1)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (33, 1)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (33, 2)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (34, 9)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (35, 6)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (36, 6)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (37, 6)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (37, 9)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (38, 5)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (39, 9)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (39, 11)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (40, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (40, 6)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (41, 6)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (42, 6)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (43, 6)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (44, 6)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (45, 6)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (46, 10)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (49, 6)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (50, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (51, 10)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (52, 10)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (54, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (55, 7)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (55, 11)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (56, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (56, 11)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (57, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (58, 1)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (58, 11)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (59, 1)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (59, 11)
/****** Object:  Table [dbo].[DishOrderSummary]    Script Date: 04/28/2014 17:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DishOrderSummary](
	[DishId] [int] NOT NULL,
	[NumOfOrderQua1] [int] NOT NULL,
	[NumOfOrderQua2] [int] NOT NULL,
	[NumOfOrderQua3] [int] NOT NULL,
	[NumOfOrderQua4] [int] NOT NULL,
	[Year] [int] NOT NULL,
 CONSTRAINT [PK_DishOrderSummary] PRIMARY KEY CLUSTERED 
(
	[DishId] ASC,
	[Year] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DishOrderSummary] ([DishId], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (8, 20, 20, 37, 44, 2013)
INSERT [dbo].[DishOrderSummary] ([DishId], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (13, 16, 22, 0, 0, 2014)
INSERT [dbo].[DishOrderSummary] ([DishId], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (15, 20, 30, 10, 10, 2013)
INSERT [dbo].[DishOrderSummary] ([DishId], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (20, 18, 29, 55, 10, 2013)
INSERT [dbo].[DishOrderSummary] ([DishId], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (22, 45, 44, 0, 0, 2014)
INSERT [dbo].[DishOrderSummary] ([DishId], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (26, 12, 66, 0, 0, 2014)
INSERT [dbo].[DishOrderSummary] ([DishId], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (27, 30, 40, 20, 25, 2013)
INSERT [dbo].[DishOrderSummary] ([DishId], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (31, 50, 30, 30, 50, 2013)
INSERT [dbo].[DishOrderSummary] ([DishId], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (33, 18, 40, 27, 33, 2013)
INSERT [dbo].[DishOrderSummary] ([DishId], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (34, 28, 10, 43, 47, 2013)
INSERT [dbo].[DishOrderSummary] ([DishId], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (40, 17, 35, 65, 18, 2013)
INSERT [dbo].[DishOrderSummary] ([DishId], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (49, 5, 10, 0, 0, 2014)
INSERT [dbo].[DishOrderSummary] ([DishId], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (50, 40, 12, 0, 0, 2014)
INSERT [dbo].[DishOrderSummary] ([DishId], [NumOfOrderQua1], [NumOfOrderQua2], [NumOfOrderQua3], [NumOfOrderQua4], [Year]) VALUES (52, 30, 24, 0, 0, 2014)
/****** Object:  Table [dbo].[DishMenu]    Script Date: 04/28/2014 17:09:17 ******/
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
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (1, 13, 35000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (1, 17, 46000, 18)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (1, 21, 36550, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (1, 29, 36550, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (1, 32, 50000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (2, 13, 36000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (2, 27, 60000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (2, 32, 38000, 22)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (2, 35, 38000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (2, 37, 38000, 17)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (3, 12, 62000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (3, 19, 62000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (3, 20, 62000, 8)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (3, 22, 40000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (3, 25, 40000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (3, 32, 40000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (3, 34, 62000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (4, 15, 55000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (4, 16, 55000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (4, 17, 55000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (4, 26, 65000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (4, 27, 65000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (4, 29, 65000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (4, 35, 65000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (5, 12, 37000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (5, 17, 37000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (5, 19, 37000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (5, 20, 45000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (5, 21, 57000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (5, 24, 57000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (5, 28, 57000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (5, 34, 37000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (5, 35, 57000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (5, 36, 57000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (6, 14, 66000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (6, 20, 48000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (6, 21, 39000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (6, 26, 48000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (6, 32, 48000, 12)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (7, 13, 46000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (7, 18, 46000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (7, 21, 46000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (7, 22, 52000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (7, 29, 46000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (7, 36, 52000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (8, 12, 38000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (8, 14, 41000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (8, 19, 38000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (8, 32, 36000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (8, 34, 38000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (8, 36, 36000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (9, 14, 19000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (9, 18, 19000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (9, 26, 29000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (9, 32, 29000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (10, 18, 38000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (10, 22, 45, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (10, 27, 32000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (10, 35, 55000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (11, 20, 24000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (11, 21, 43000, 17)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (11, 22, 434, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (11, 29, 434, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (12, 18, 68000, 16)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (12, 28, 43, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (12, 36, 72000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (12, 37, 72000, 5)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (13, 12, 71000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (13, 13, 71000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (13, 17, 71000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (13, 19, 71000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (13, 28, 43, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (13, 29, 43, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (13, 34, 71000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (13, 36, 52000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (14, 12, 45000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (14, 15, 45000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (14, 19, 45000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (14, 20, 47000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (14, 21, 52000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (14, 29, 52000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (14, 34, 45000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (14, 35, 43000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (14, 37, 43000, 12)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (15, 21, 32000, 12)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (15, 29, 48000, 12)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (15, 35, 26000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (16, 15, 19000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (16, 16, 19000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (16, 26, 16000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (17, 13, 19000, 35)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (17, 21, 19000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (17, 29, 19000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (17, 37, 10000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (18, 14, 18000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (18, 16, 18000, 40)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (18, 21, 18000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (18, 28, 56, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (18, 29, 18000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (18, 32, 16000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (18, 37, 16000, 20)
GO
print 'Processed 100 total records'
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (19, 15, 22500, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (19, 18, 22000, 18)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (19, 36, 23000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (20, 12, 18000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (20, 19, 18000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (20, 34, 18000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (21, 15, 29000, 50)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (21, 16, 29000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (22, 12, 24000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (22, 14, 16000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (22, 17, 24000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (22, 18, 16000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (22, 19, 24000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (22, 34, 24000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (23, 13, 22000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (23, 21, 23000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (23, 29, 23000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (23, 35, 22000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (24, 13, 16000, 35)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (24, 27, 18000, 35)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (25, 15, 25000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (25, 34, 32000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (25, 36, 32000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (26, 16, 40000, 16)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (26, 18, 31000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (26, 36, 16000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (26, 37, 16000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (27, 16, 18000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (27, 26, 18000, 22)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (28, 28, 46, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (29, 25, 30000, 22)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (29, 35, 18000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (30, 35, 27500, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (31, 32, 16000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (32, 12, 31000, 18)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (32, 17, 31000, 18)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (32, 19, 31000, 18)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (32, 28, 77, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (32, 34, 31000, 18)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (33, 14, 12000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (33, 17, 16000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (33, 20, 16000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (33, 24, 18000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (33, 36, 16500, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (34, 13, 23000, 35)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (34, 14, 21000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (34, 17, 21000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (34, 27, 18000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (34, 37, 18000, 40)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (35, 12, 33000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (35, 19, 33000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (35, 20, 37000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (35, 32, 21000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (35, 34, 33000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (35, 36, 21000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (36, 13, 16000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (36, 15, 17000, 35)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (36, 18, 16000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (36, 25, 14500, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (37, 14, 28000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (37, 25, 20000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (37, 37, 17000, 35)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (38, 14, 14000, 40)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (38, 17, 21000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (38, 18, 21000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (38, 21, 16000, 50)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (38, 29, 16000, 50)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (39, 13, 20000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (39, 24, 22000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (39, 26, 20000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (39, 37, 17000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (40, 21, 32000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (40, 26, 18000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (40, 29, 32000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (40, 35, 18000, 18)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (41, 13, 36000, 12)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (41, 15, 35000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (41, 25, 21000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (41, 28, 17000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (42, 18, 42000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (42, 24, 16000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (42, 25, 16000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (42, 35, 16000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (43, 14, 10000, 50)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (44, 12, 16000, 50)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (44, 19, 16000, 50)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (44, 27, 17000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (44, 34, 16000, 50)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (45, 16, 30000, 50)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (45, 20, 17000, 50)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (46, 13, 189000, 3)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (46, 20, 249000, 5)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (46, 35, 230000, 5)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (47, 15, 375000, 2)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (47, 16, 375000, 1)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (47, 24, 210000, 5)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (47, 27, 250000, 3)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (47, 35, 180000, 5)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (48, 13, 15000, 50)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (48, 18, 15000, 40)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (48, 32, 15000, 20)
GO
print 'Processed 200 total records'
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (48, 36, 15000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (49, 14, 16500, 40)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (50, 12, 120000, 5)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (50, 17, 120000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (50, 18, 120000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (50, 19, 120000, 5)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (50, 32, 120000, 8)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (50, 34, 120000, 5)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (50, 36, 120000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (51, 14, 220000, 5)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (51, 20, 315000, 5)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (51, 25, 27000, 5)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (52, 28, 10, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (53, 15, 18000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (54, 21, 15000, 40)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (54, 24, 11000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (54, 28, 10, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (54, 29, 15000, 40)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (55, 13, 19000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (55, 16, 21000, 40)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (55, 21, 18000, 40)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (55, 25, 16000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (55, 29, 18000, 40)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (55, 35, 17000, 40)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (56, 12, 17000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (56, 15, 14500, 40)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (56, 19, 17000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (56, 20, 17000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (56, 34, 17000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (57, 14, 13000, 40)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (57, 24, 10000, 40)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (57, 26, 11000, 38)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (57, 37, 12000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (58, 14, 19000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (58, 21, 22000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (58, 28, 11, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (58, 29, 22000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (59, 12, 26000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (59, 17, 26000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (59, 19, 26000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (59, 20, 21000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (59, 25, 18000, 35)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (59, 34, 26000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (59, 37, 18000, 35)
/****** Object:  Table [dbo].[DishLike]    Script Date: 04/28/2014 17:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DishLike](
	[DishId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_DishLike] PRIMARY KEY CLUSTERED 
(
	[DishId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DishItem]    Script Date: 04/28/2014 17:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DishItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ChefID] [int] NOT NULL,
	[DishID] [int] NOT NULL,
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
INSERT [dbo].[DishItem] ([Id], [ChefID], [DishID], [QRCode], [Quantity], [CookingTime], [IsAvailable]) VALUES (48, 1, 1, NULL, 5, CAST(0x0000A2E000AA39DA AS DateTime), 1)
INSERT [dbo].[DishItem] ([Id], [ChefID], [DishID], [QRCode], [Quantity], [CookingTime], [IsAvailable]) VALUES (49, 1, 2, NULL, 4, CAST(0x0000A2E000AA3AEE AS DateTime), 1)
INSERT [dbo].[DishItem] ([Id], [ChefID], [DishID], [QRCode], [Quantity], [CookingTime], [IsAvailable]) VALUES (50, 1, 2, N'00d4e869-bd9d-47fb-89cb-b95ab6ff5099.gif', 5, CAST(0x0000A2E000AA4C74 AS DateTime), 1)
INSERT [dbo].[DishItem] ([Id], [ChefID], [DishID], [QRCode], [Quantity], [CookingTime], [IsAvailable]) VALUES (51, 1, 2, N'1990f2b3-c439-4e47-b155-71be3b66d3da.gif', 5, CAST(0x0000A2E000AB3062 AS DateTime), 1)
INSERT [dbo].[DishItem] ([Id], [ChefID], [DishID], [QRCode], [Quantity], [CookingTime], [IsAvailable]) VALUES (54, 1, 1, NULL, 5, CAST(0x0000A2EA010D071C AS DateTime), 1)
INSERT [dbo].[DishItem] ([Id], [ChefID], [DishID], [QRCode], [Quantity], [CookingTime], [IsAvailable]) VALUES (55, 1, 2, NULL, 4, CAST(0x0000A2EA010D0770 AS DateTime), 1)
INSERT [dbo].[DishItem] ([Id], [ChefID], [DishID], [QRCode], [Quantity], [CookingTime], [IsAvailable]) VALUES (56, 1, 1, NULL, 5, CAST(0x0000A2ED00C10E24 AS DateTime), 1)
INSERT [dbo].[DishItem] ([Id], [ChefID], [DishID], [QRCode], [Quantity], [CookingTime], [IsAvailable]) VALUES (57, 1, 2, NULL, 4, CAST(0x0000A2ED00C10E3B AS DateTime), 1)
INSERT [dbo].[DishItem] ([Id], [ChefID], [DishID], [QRCode], [Quantity], [CookingTime], [IsAvailable]) VALUES (58, 1, 40, N'b5cad734-e6e2-4762-ad90-2d456aa1faf2.gif', 5, CAST(0x0000A2FF00C2C1F6 AS DateTime), 0)
INSERT [dbo].[DishItem] ([Id], [ChefID], [DishID], [QRCode], [Quantity], [CookingTime], [IsAvailable]) VALUES (59, 1, 40, N'40a0df92-d420-437a-bea0-b6d9e35c2a45.gif', 5, CAST(0x0000A2FF00EAC206 AS DateTime), 1)
INSERT [dbo].[DishItem] ([Id], [ChefID], [DishID], [QRCode], [Quantity], [CookingTime], [IsAvailable]) VALUES (60, 1, 40, N'6728b83f-05ee-4436-ab23-36a63a2c08ae.gif', 5, CAST(0x0000A30F00B69E9B AS DateTime), 1)
INSERT [dbo].[DishItem] ([Id], [ChefID], [DishID], [QRCode], [Quantity], [CookingTime], [IsAvailable]) VALUES (61, 1, 13, N'92f09cde-6561-45e3-9e24-f5be6ff472c6.gif', 6, CAST(0x0000A31B00C579E6 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[DishItem] OFF
/****** Object:  Table [dbo].[IngredientDish]    Script Date: 04/28/2014 17:09:17 ******/
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
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (2, 23)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (2, 29)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (2, 49)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (2, 58)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (2, 59)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (5, 1)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (5, 30)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (6, 13)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (6, 19)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (6, 24)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (6, 29)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (6, 32)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (6, 33)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (6, 35)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (6, 36)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (7, 23)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (7, 37)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (7, 39)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (7, 43)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (7, 59)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (9, 4)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (9, 12)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (9, 14)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (10, 5)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (10, 9)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (10, 17)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (10, 20)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (10, 22)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (10, 25)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (10, 31)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (10, 45)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (11, 2)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (11, 5)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (11, 8)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (11, 10)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (11, 21)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (11, 34)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (12, 18)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (15, 35)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (15, 36)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (15, 42)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (15, 43)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (15, 44)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (15, 45)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (16, 1)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (16, 9)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (16, 14)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (16, 32)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (17, 24)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (17, 25)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (17, 35)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (17, 36)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (17, 38)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (17, 42)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (17, 43)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (18, 2)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (18, 4)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (18, 5)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (18, 14)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (18, 17)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (18, 20)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (19, 1)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (19, 2)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (19, 4)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (19, 5)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (19, 7)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (19, 11)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (19, 14)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (19, 22)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (19, 27)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (20, 2)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (20, 3)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (20, 19)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (20, 28)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (21, 11)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (21, 18)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (21, 28)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (22, 14)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (23, 3)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (23, 6)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (24, 3)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (24, 10)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (24, 17)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (25, 5)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (25, 14)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (25, 17)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (25, 29)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (25, 33)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (25, 38)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (25, 39)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (25, 40)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (25, 42)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (25, 43)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (25, 44)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (25, 55)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (25, 56)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (26, 6)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (26, 9)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (26, 10)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (27, 4)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (27, 24)
GO
print 'Processed 100 total records'
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (27, 33)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (28, 40)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (28, 41)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (28, 44)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (28, 45)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (29, 3)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (29, 10)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (29, 13)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (29, 14)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (29, 20)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (29, 22)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (29, 34)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (30, 2)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (30, 22)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (31, 4)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (31, 12)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (32, 5)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (33, 36)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (33, 38)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (33, 39)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (34, 5)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (34, 7)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (34, 14)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (34, 19)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (34, 25)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (34, 29)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (34, 30)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (34, 36)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (34, 58)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (37, 20)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (37, 30)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (38, 6)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (38, 14)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (38, 24)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (38, 27)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (38, 33)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (39, 3)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (39, 34)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (39, 50)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (39, 51)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (40, 4)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (40, 13)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (40, 35)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (41, 1)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (41, 12)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (41, 21)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (41, 31)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (41, 56)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (42, 38)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (43, 58)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (45, 8)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (45, 11)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (47, 25)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (47, 30)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (49, 7)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (49, 16)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (50, 9)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (51, 18)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (52, 38)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (52, 43)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (53, 9)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (53, 14)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (54, 16)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (54, 25)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (54, 28)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (54, 32)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (55, 28)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (58, 6)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (58, 18)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (60, 26)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (60, 41)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (62, 9)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (62, 21)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (62, 28)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (66, 7)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (66, 21)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (67, 13)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (68, 25)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (68, 43)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (70, 14)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (70, 15)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (71, 6)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (72, 12)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (72, 15)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (73, 8)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (73, 15)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (73, 57)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (74, 2)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (74, 4)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (74, 5)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (74, 7)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (74, 10)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (74, 14)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (74, 34)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (77, 8)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (77, 42)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (77, 58)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (77, 59)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (78, 30)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (79, 36)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (79, 55)
GO
print 'Processed 200 total records'
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (80, 7)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (89, 1)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (90, 1)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (101, 46)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (103, 40)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (103, 47)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (103, 52)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (104, 23)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (106, 37)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (106, 39)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (106, 44)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (106, 45)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (107, 40)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (107, 41)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (108, 16)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (108, 32)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (108, 54)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (109, 11)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (110, 41)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (111, 19)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (112, 48)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (112, 49)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (112, 53)
/****** Object:  Table [dbo].[Payment]    Script Date: 04/28/2014 17:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TransactionId] [nvarchar](250) NOT NULL,
	[PayTime] [datetime] NOT NULL,
	[PaymentMethod] [int] NOT NULL,
	[Amount] [nvarchar](250) NOT NULL,
	[Status] [nvarchar](250) NOT NULL,
	[Currency] [nvarchar](50) NOT NULL,
	[VNDUnitValue] [int] NOT NULL,
	[BillId] [int] NOT NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IngredientItem]    Script Date: 04/28/2014 17:09:17 ******/
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
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (87, 1, 80, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (88, 1, 81, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (89, 1, 82, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (90, 1, 83, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (91, 1, 84, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (92, 1, 85, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (93, 1, 86, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (94, 1, 87, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (95, 1, 88, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (96, 1, 89, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (97, 1, 90, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (98, 1, 91, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (99, 1, 92, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (100, 1, 93, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (101, 1, 94, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (102, 1, 95, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (103, 1, 96, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (104, 1, 97, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (105, 1, 98, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (106, 1, 99, 1, 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (107, 1, 100, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (108, 1, 101, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (109, 13, 102, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (110, 5, 103, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (111, 3, 104, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (112, 3, 105, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (113, 6, 106, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (114, 6, 107, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (115, 5, 108, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (116, 1, 109, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (117, 5, 110, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (118, 4, 111, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (119, 3, 112, 1, 1)
SET IDENTITY_INSERT [dbo].[IngredientItem] OFF
/****** Object:  Table [dbo].[Order]    Script Date: 04/28/2014 17:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BillId] [int] NOT NULL,
	[ReceiverName] [nvarchar](250) NOT NULL,
	[ReceiverPhone] [nvarchar](20) NOT NULL,
	[ReceiverAddress] [nvarchar](max) NOT NULL,
	[ReceiverEmail] [nvarchar](max) NOT NULL,
	[TotalPayment] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[DeliveryDate] [datetime] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[OrderStatus] [int] NOT NULL,
	[PaymentStatus] [int] NOT NULL,
 CONSTRAINT [PK__Order__3214EC072D27B809] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (1, 1, N'Nhân Nguyễn', N'0938228754', N'230 Tô Ký, quận 12', N'nhantt2@gmail.com', 250000, CAST(0x0000A2E100000000 AS DateTime), CAST(0x0000A2E300000000 AS DateTime), N'Giao buổi sáng', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (2, 1, N'Hoàng Vương', N'0932164180', N'77 Nguyễn Trãi', N'hoangtrungthienvuong@gmail.com', 300000, CAST(0x0000A2E100000000 AS DateTime), CAST(0x0000A2E300000000 AS DateTime), N'Giao tại nhà', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (7, 2, N'Hoàng Nguyên', N'0913491981', N'11 Nguyễn Thiện Thuật', N'nguyenhttn@yahoo.com', 120000, CAST(0x0000A2E200000000 AS DateTime), CAST(0x0000A2E200000000 AS DateTime), N'Giao tại công ty', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (9, 3, N'An Nguyễn', N'0124451123', N'190 Phan Huy Ích', N'AnNguyen92@yahoo.com', 415000, CAST(0x0000A2E200000000 AS DateTime), CAST(0x0000A2E200000000 AS DateTime), N'Giao tại nhà', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (10, 4, N'Quốc Khánh', N'0821349521', N'181 Nguyễn Trãi', N'QuocKhanh@yahoo.com', 73000, CAST(0x0000A2E300000000 AS DateTime), CAST(0x0000A2E400000000 AS DateTime), N'Giao buổi tối', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (14, 8, N'Trần Thu Hà', N'0129388852', N'17 Phan Xích Long', N'HaTran90@gmail.com', 185000, CAST(0x0000A2E300000000 AS DateTime), CAST(0x0000A2E300000000 AS DateTime), N'Giao tại công ty', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (17, 11, N'Nguyễn Hoàng An', N'0931851989', N'102 Nguyễn Thị Minh Khai', N'AnHoang@gmail.com', 360000, CAST(0x0000A2E400000000 AS DateTime), CAST(0x0000A2E500000000 AS DateTime), N'Giao vào lúc 6 giờ chiều', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (18, 12, N'Hòa Văn Đáng', N'0921884990', N'91 Cách Mạng Tháng 8', N'Hoa88@gmail.com', 81000, CAST(0x0000A2E500000000 AS DateTime), CAST(0x0000A2E600000000 AS DateTime), N'Giao tại nhà', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (22, 15, N'Trần Hồng ', N'0122984700', N'05 Thành Thái', N'HongTH@yahoo.com', 99000, CAST(0x0000A2E500000000 AS DateTime), CAST(0x0000A2E600000000 AS DateTime), N'Giao tại công ty', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (23, 16, N'Nguyễn Phú Tài', N'0812841920', N'291 Trần Nguyên Đán', N'TaiNP@yahoo.com', 160000, CAST(0x0000A2E600000000 AS DateTime), CAST(0x0000A2E700000000 AS DateTime), N'Giao vào lúc 10 giờ sáng', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (24, 17, N'Nguyễn Thị Diệu', N'0198349811', N'78 Trần Nhật Duật', N'DieuNguyen@gmail.com', 60000, CAST(0x0000A2E600000000 AS DateTime), CAST(0x0000A2E800000000 AS DateTime), N'Giao tại nhà ', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (25, 18, N'Hoàng Văn Nhân', N'0122874081', N'166 An Dương Vương', N'nhanvan@yahoo.com', 265000, CAST(0x0000A2E700000000 AS DateTime), CAST(0x0000A2E700000000 AS DateTime), N'Giao tại công ty', 2, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (27, 20, N'Trần Thị Diệu Thúy', N'0214958819', N'590 Cách Mạng Tháng 8', N'DieuThuy@gmail.com', 420000, CAST(0x0000A2E800000000 AS DateTime), CAST(0x0000A2E800000000 AS DateTime), N'Giao tại nhà ', 2, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (28, 21, N'Hồ Quang Hải', N'0921500299', N'777 Cộng Hòa', N'HQH90@yahoo.com', 55000, CAST(0x0000A2E800000000 AS DateTime), CAST(0x0000A2E800000000 AS DateTime), N'Giao lúc 5 giờ chiều', 2, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (30, 22, N'Đoàn Văn Tân', N'0189994018', N'259 Bình Qưới', N'TanVan@gmail.com', 120000, CAST(0x0000A2E900000000 AS DateTime), CAST(0x0000A2E900000000 AS DateTime), N'Giao lúc 3 giờ chiều', 2, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (31, 25, N'Nguyễn Hoài An', N'0921512516', N'92 Cộng Hòa', N'hoaian@gmail.com', 90000, CAST(0x0000A2E900000000 AS DateTime), CAST(0x0000A2EA00000000 AS DateTime), N'Giao tại nhà', 2, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (32, 26, N'Đỗ Diệu Hiền', N'0189885667', N'125 Phan Huy Ích', N'dieuhien91@yahoo.com', 355000, CAST(0x0000A2E900000000 AS DateTime), CAST(0x0000A2EA00000000 AS DateTime), N'Giao tại công ty', 2, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (33, 27, N'Toàn Quan Thanh', N'0196352311', N'256 Quang Trung', N'thanhquang@yahoo.com', 380000, CAST(0x0000A2EA00000000 AS DateTime), CAST(0x0000A2EA00000000 AS DateTime), N'Giao tại nhà', 2, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (34, 31, N'Lý Minh Nhật', N'0123639144', N'177 Nguyễn Oanh', N'nhat2890@yahoo.com', 252000, CAST(0x0000A2EA00000000 AS DateTime), CAST(0x0000A2EB00000000 AS DateTime), N'Giao tại công ty', 2, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (35, 32, N'Tôn Nữ Hồng Nhung', N'0197776851', N'07 Tô Ký', N'HongNhung87@yahoo.com', 155000, CAST(0x0000A2EA00000000 AS DateTime), CAST(0x0000A2EB00000000 AS DateTime), N'Giao tại nhà', 2, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (36, 33, N'Đỗ Cẩm Tú', N'0155523781', N'93 Thanh Đa', N'TuDC@yahoo.com', 140000, CAST(0x0000A2EB00000000 AS DateTime), CAST(0x0000A2ED00000000 AS DateTime), N'Giao lúc 10 giờ sáng', 2, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (37, 34, N'Trần Trung Lương', N'0257091333', N'321 Quang Trung', N'luongtran@yahoo.com', 270000, CAST(0x0000A2EB00000000 AS DateTime), CAST(0x0000A2EC00000000 AS DateTime), N'Giao tại nhà', 2, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (38, 40, N'Trần Thái Hòa', N'0936137889', N'222 Phan Xích Long', N'thaihoa@gmail.com', 240000, CAST(0x0000A2EC00000000 AS DateTime), CAST(0x0000A2ED00000000 AS DateTime), N'Giao tại nhà', 3, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (39, 41, N'Ngô Chi Vinh', N'0931633000', N'819 Cộng Hòa', N'VinhNgo11@gmail.com', 132500, CAST(0x0000A2EC00000000 AS DateTime), CAST(0x0000A2ED00000000 AS DateTime), N'Giao tại nhà', 3, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (40, 43, N'Hoàng Thị Tuyết Chi', N'0125519478', N'567 Trường Chinh', N'Chi91@gmail.com', 67000, CAST(0x0000A2EC00000000 AS DateTime), CAST(0x0000A2EE00000000 AS DateTime), N'Giao tại nhà', 3, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (41, 44, N'Đỗ Nhật Thy', N'0682585155', N'81 Võ Thị Sáu', N'nhatthy1208@gmail.com', 220000, CAST(0x0000A2ED00000000 AS DateTime), CAST(0x0000A2ED00000000 AS DateTime), N'Giao vào lúc 2 giờ chiều', 3, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (42, 48, N'Nguyễn Hoàng Bảo Nhi', N'0931528680', N'199 Quang Trung', N'baonhi@gmail.com', 259000, CAST(0x0000A2ED00000000 AS DateTime), CAST(0x0000A2EF00000000 AS DateTime), N'Giao vào lúc 9 giờ sáng', 3, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (43, 49, N'Trần Đình Long', N'0912518599', N'17 Bắc Hải', N'longtran18@gmail.com', 110000, CAST(0x0000A2EE00000000 AS DateTime), CAST(0x0000A2EF00000000 AS DateTime), N'Giao tại nhà', 3, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (44, 50, N'Trần Mỹ Dung', N'0957733355', N'192 Cách Mạng Tháng 8', N'mydung89@gmail.com', 78000, CAST(0x0000A2EF00000000 AS DateTime), CAST(0x0000A2F100000000 AS DateTime), N'Giao vào lúc 6 giờ chiều', 3, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (45, 52, N'Nguyễn Thị Hoa', N'0934500512', N'114 Âu Cơ', N'hoanguyen@gmail.com', 49000, CAST(0x0000A2EF00000000 AS DateTime), CAST(0x0000A2F100000000 AS DateTime), N'Giao tại nhà', 3, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (46, 56, N'JESSDOAN', N'0166815718', N'DHFPT', N'chidnm@gmail.com', 84000, CAST(0x0000A30C013B0952 AS DateTime), CAST(0x0000A30C00000000 AS DateTime), N'beo', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (47, 56, N'JESSDOAN', N'0166815718', N'DHFPT', N'chidnm@gmail.com', 359000, CAST(0x0000A30C013B096E AS DateTime), CAST(0x0000A30D00000000 AS DateTime), N'beo', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (48, 57, N'Nhan Nguyen', N'0938228754', N'Dai hoc FPT', N'nhantt2@gmail.com', 245000, CAST(0x0000A316009BF77A AS DateTime), CAST(0x0000A31600000000 AS DateTime), N'Giao hang 17h', 2, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (49, 57, N'Nhan Nguyen', N'0938228754', N'Dai hoc FPT', N'nhantt2@gmail.com', 140000, CAST(0x0000A316009BF84E AS DateTime), CAST(0x0000A31700000000 AS DateTime), N'Giao hang 17h', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (50, 58, N'Nhan Nguyen', N'0938228754', N'Dai hoc FPT', N'nhannguyenfpt@hotmail.com', 38000, CAST(0x0000A31800AD6F8D AS DateTime), CAST(0x0000A31800000000 AS DateTime), N'Giao hàng giờ hành chính', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (51, 59, N'NhanNTSE60677', N'0938228754', N'Dai hoc FPT', N'abc@fpt.edu.vn', 182000, CAST(0x0000A31800BDF2FF AS DateTime), CAST(0x0000A31800000000 AS DateTime), N'Nothing', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (52, 60, N'fdsfsfs', N'213213123', N'asdadasd', N'sfsdfsdf', 115000, CAST(0x0000A31800BF4401 AS DateTime), CAST(0x0000A31800000000 AS DateTime), N'asdasdas', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (53, 61, N'addada', N'1223123', N'dfsfdsfs', N'asdasdad', 201000, CAST(0x0000A31800BFCC8A AS DateTime), CAST(0x0000A31800000000 AS DateTime), N'fsfsfsdf', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (54, 62, N'fsffd', N'213213', N'sdfdsf', N'fsfsdf', 182000, CAST(0x0000A31800C0E851 AS DateTime), CAST(0x0000A31800000000 AS DateTime), N'sfdfsfdsf', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (55, 63, N'dsadsadad', N'12321321', N'asdasda', N'sdadad', 76000, CAST(0x0000A31800C1A1FB AS DateTime), CAST(0x0000A31800000000 AS DateTime), N'dsadada', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (56, 64, N'dasdadas', N'123213', N'asdasdasd', N'sadsadsasd', 76000, CAST(0x0000A31800C2B288 AS DateTime), CAST(0x0000A31800000000 AS DateTime), N'sdasdsad', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (57, 65, N'sadsad', N'1223132', N'asdsads', N'dasdsa', 52000, CAST(0x0000A31800C3F283 AS DateTime), CAST(0x0000A31800000000 AS DateTime), N'ddsasda', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (58, 66, N'dsadad', N'213131', N'asdsad', N'adasdad', 214000, CAST(0x0000A31800C4FF54 AS DateTime), CAST(0x0000A31800000000 AS DateTime), N'adadsad', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (59, 67, N'dsfdfs', N'3123131', N'sfdfsd', N'fdsfsdf', 26000, CAST(0x0000A31800C55E10 AS DateTime), CAST(0x0000A31800000000 AS DateTime), N'dsdfsfsdf', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (60, 68, N'dssaddasasd', N'32133212', N'dsaadssad', N'dsadsasd', 34000, CAST(0x0000A31800C8C681 AS DateTime), CAST(0x0000A31800000000 AS DateTime), N'sadadssadda', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (61, 69, N'asdsd', N'321321', N'dsadasd', N'dadasd', 53000, CAST(0x0000A31800C9240A AS DateTime), CAST(0x0000A31800000000 AS DateTime), N'dadad', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (62, 70, N'fsdfdsf', N'11111', N'cfdsfdsf', N'fsfsf', 76000, CAST(0x0000A31800F63DD0 AS DateTime), CAST(0x0000A31800000000 AS DateTime), N'sdfsfsdf', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (63, 72, N'Nhan Nguyen', N'0938228754', N'Đại học FPT', N'nhantt2@gmail.com', 103000, CAST(0x0000A31A0157B7A4 AS DateTime), CAST(0x0000A31A00000000 AS DateTime), N'Nothing', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (64, 73, N'Nhan Nguyen FPT', N'0938228754', N'DH FPT', N'nhantt2@gmail.com', 168000, CAST(0x0000A31A01824872 AS DateTime), CAST(0x0000A313011826C0 AS DateTime), N'Not important', 1, 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 04/28/2014 17:09:17 ******/
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
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (1, 1, 1, 25000, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (2, 1, 3, 25000, 2)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (3, 1, 2, 32000, 3)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (4, 2, 4, 36000, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (5, 2, 2, 20000, 3)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (6, 2, 1, 22000, 5)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (7, 7, 2, 20000, 7)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (8, 7, 1, 20000, 4)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (9, 9, 1, 20000, 8)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (10, 10, 4, 20000, 9)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (11, 14, 1, 20000, 11)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (12, 14, 4, 20000, 22)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (13, 14, 4, 20000, 14)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (14, 14, 2, 20000, 17)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (15, 17, 4, 20000, 3)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (16, 17, 1, 20000, 19)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (17, 18, 2, 20000, 24)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (18, 18, 2, 20000, 23)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (19, 18, 4, 20000, 28)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (20, 22, 4, 20000, 28)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (21, 22, 1, 20000, 19)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (22, 22, 4, 20000, 32)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (23, 23, 4, 20000, 23)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (24, 23, 4, 20000, 33)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (25, 24, 1, 20000, 35)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (26, 25, 5, 20000, 46)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (27, 25, 4, 20000, 55)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (28, 25, 1, 20000, 12)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (29, 25, 6, 20000, 45)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (30, 27, 1, 20000, 12)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (31, 28, 4, 20000, 5)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (32, 28, 2, 20000, 39)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (33, 30, 2, 20000, 35)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (34, 31, 3, 20000, 56)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (35, 31, 4, 20000, 47)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (36, 32, 1, 20000, 15)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (37, 32, 4, 20000, 25)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (38, 32, 3, 20000, 41)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (39, 32, 4, 20000, 49)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (40, 33, 3, 20000, 22)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (41, 33, 10, 15000, 28)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (42, 46, 1, 46000, 7)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (43, 46, 2, 19000, 9)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (44, 47, 4, 62000, 3)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (45, 47, 3, 37000, 5)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (47, 38, 5, 30000, 5)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (48, 39, 10, 20000, 10)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (49, 39, 30, 15000, 17)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (50, 40, 40, 30000, 20)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (51, 41, 20, 50000, 30)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (52, 42, 18, 39000, 40)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (53, 48, 2, 38000, 2)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (54, 48, 2, 57000, 5)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (55, 48, 1, 55000, 10)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (56, 49, 2, 52000, 7)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (57, 49, 1, 36000, 8)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (58, 50, 1, 38000, 2)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (59, 51, 1, 38000, 2)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (60, 51, 2, 72000, 12)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (61, 52, 1, 43000, 14)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (62, 52, 1, 72000, 12)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (63, 53, 1, 72000, 12)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (64, 53, 3, 43000, 14)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (65, 54, 1, 38000, 2)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (66, 54, 2, 72000, 12)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (67, 55, 2, 38000, 2)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (68, 56, 2, 38000, 2)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (69, 57, 1, 18000, 34)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (70, 57, 1, 17000, 37)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (71, 57, 1, 17000, 39)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (72, 58, 1, 38000, 2)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (73, 58, 2, 72000, 12)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (74, 58, 2, 16000, 26)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (75, 59, 1, 10000, 17)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (76, 59, 1, 16000, 18)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (77, 60, 1, 17000, 37)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (78, 60, 1, 17000, 39)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (79, 61, 1, 17000, 37)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (80, 61, 2, 18000, 59)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (81, 62, 2, 38000, 2)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (82, 63, 1, 38000, 2)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (83, 63, 1, 65000, 4)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (84, 64, 1, 38000, 2)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (85, 64, 2, 65000, 4)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
/****** Object:  Table [dbo].[IngredientDishItem]    Script Date: 04/28/2014 17:09:17 ******/
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
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (56, 27)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (56, 37)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (56, 74)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (57, 17)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (57, 35)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (57, 70)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (58, 74)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (59, 74)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (60, 29)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (60, 32)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (60, 110)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (60, 114)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (61, 10)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (61, 33)
INSERT [dbo].[IngredientDishItem] ([DishItemID], [IngredientItemID]) VALUES (61, 74)
/****** Object:  Table [dbo].[OrderDetailDishItem]    Script Date: 04/28/2014 17:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetailDishItem](
	[OrderDetailId] [int] NOT NULL,
	[DishItemId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetailDishItem] PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC,
	[DishItemId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_Customer_TotalOrderValue]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_TotalOrderValue]  DEFAULT ((0)) FOR [TotalOrderValue]
GO
/****** Object:  Default [DF__webpages___IsCon__52593CB8]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [IsConfirmed]
GO
/****** Object:  Default [DF__webpages___Passw__534D60F1]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [PasswordFailuresSinceLastSuccess]
GO
/****** Object:  Default [DF_Dish_Url]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[Dish] ADD  CONSTRAINT [DF_Dish_Url]  DEFAULT (N'unknown') FOR [Url]
GO
/****** Object:  Default [DF_Dish_Rate]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[Dish] ADD  CONSTRAINT [DF_Dish_Rate]  DEFAULT ((0)) FOR [Rate]
GO
/****** Object:  Default [DF_Dish_NumberOfRate]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[Dish] ADD  CONSTRAINT [DF_Dish_NumberOfRate]  DEFAULT ((0)) FOR [NumberOfRate]
GO
/****** Object:  Default [DF_Dish_NumberOfLike]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[Dish] ADD  CONSTRAINT [DF_Dish_NumberOfLike]  DEFAULT ((0)) FOR [NumberOfLike]
GO
/****** Object:  Default [DF_FAQ_NumOfLike]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[FAQ] ADD  CONSTRAINT [DF_FAQ_NumOfLike]  DEFAULT ((0)) FOR [NumOfLike]
GO
/****** Object:  Default [DF_DishItem_ChefID]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[DishItem] ADD  CONSTRAINT [DF_DishItem_ChefID]  DEFAULT ((1)) FOR [ChefID]
GO
/****** Object:  Default [DF_DishItem_IsAvailable]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[DishItem] ADD  CONSTRAINT [DF_DishItem_IsAvailable]  DEFAULT ((1)) FOR [IsAvailable]
GO
/****** Object:  Default [DF_OrderDetailDishItem_Quantity]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[OrderDetailDishItem] ADD  CONSTRAINT [DF_OrderDetailDishItem_Quantity]  DEFAULT ((0)) FOR [Quantity]
GO
/****** Object:  ForeignKey [FK_Supplier_SupplierCategory]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_SupplierCategory] FOREIGN KEY([SupplierCategory])
REFERENCES [dbo].[SupplierCategory] ([Id])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_SupplierCategory]
GO
/****** Object:  ForeignKey [fk_RoleId]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
/****** Object:  ForeignKey [fk_UserId]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
GO
/****** Object:  ForeignKey [FK__Dish__Category__1B0907CE]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[Dish]  WITH CHECK ADD  CONSTRAINT [FK__Dish__Category__1B0907CE] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[DishCategory] ([Id])
GO
ALTER TABLE [dbo].[Dish] CHECK CONSTRAINT [FK__Dish__Category__1B0907CE]
GO
/****** Object:  ForeignKey [FK__Dish__ChefID__4AB81AF0]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[Dish]  WITH CHECK ADD  CONSTRAINT [FK__Dish__ChefID__4AB81AF0] FOREIGN KEY([ChefID])
REFERENCES [dbo].[Chef] ([UserID])
GO
ALTER TABLE [dbo].[Dish] CHECK CONSTRAINT [FK__Dish__ChefID__4AB81AF0]
GO
/****** Object:  ForeignKey [FK_Bill_Customer]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Customer] FOREIGN KEY([UserId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Customer]
GO
/****** Object:  ForeignKey [FK_FAQ_Chef]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[FAQ]  WITH CHECK ADD  CONSTRAINT [FK_FAQ_Chef] FOREIGN KEY([ChefId])
REFERENCES [dbo].[Chef] ([UserID])
GO
ALTER TABLE [dbo].[FAQ] CHECK CONSTRAINT [FK_FAQ_Chef]
GO
/****** Object:  ForeignKey [FK_FAQ_Customer]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[FAQ]  WITH CHECK ADD  CONSTRAINT [FK_FAQ_Customer] FOREIGN KEY([UserId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[FAQ] CHECK CONSTRAINT [FK_FAQ_Customer]
GO
/****** Object:  ForeignKey [FK_ChefSkill_Chef]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[ChefSkill]  WITH CHECK ADD  CONSTRAINT [FK_ChefSkill_Chef] FOREIGN KEY([ChefId])
REFERENCES [dbo].[Chef] ([UserID])
GO
ALTER TABLE [dbo].[ChefSkill] CHECK CONSTRAINT [FK_ChefSkill_Chef]
GO
/****** Object:  ForeignKey [FK_ChefSkill_Skill]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[ChefSkill]  WITH CHECK ADD  CONSTRAINT [FK_ChefSkill_Skill] FOREIGN KEY([SkillId])
REFERENCES [dbo].[Skill] ([Id])
GO
ALTER TABLE [dbo].[ChefSkill] CHECK CONSTRAINT [FK_ChefSkill_Skill]
GO
/****** Object:  ForeignKey [FK__Ingredien__Categ__08EA5793]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[Ingredient]  WITH CHECK ADD  CONSTRAINT [FK__Ingredien__Categ__08EA5793] FOREIGN KEY([Category])
REFERENCES [dbo].[IngredientCategory] ([Id])
GO
ALTER TABLE [dbo].[Ingredient] CHECK CONSTRAINT [FK__Ingredien__Categ__08EA5793]
GO
/****** Object:  ForeignKey [FK_FAQLike_Customer]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[FAQLike]  WITH CHECK ADD  CONSTRAINT [FK_FAQLike_Customer] FOREIGN KEY([UserId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[FAQLike] CHECK CONSTRAINT [FK_FAQLike_Customer]
GO
/****** Object:  ForeignKey [FK_FAQLike_FAQ]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[FAQLike]  WITH CHECK ADD  CONSTRAINT [FK_FAQLike_FAQ] FOREIGN KEY([FAQId])
REFERENCES [dbo].[FAQ] ([FAQId])
GO
ALTER TABLE [dbo].[FAQLike] CHECK CONSTRAINT [FK_FAQLike_FAQ]
GO
/****** Object:  ForeignKey [FK_FAQComment_FAQ]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[FAQComment]  WITH CHECK ADD  CONSTRAINT [FK_FAQComment_FAQ] FOREIGN KEY([FAQId])
REFERENCES [dbo].[FAQ] ([FAQId])
GO
ALTER TABLE [dbo].[FAQComment] CHECK CONSTRAINT [FK_FAQComment_FAQ]
GO
/****** Object:  ForeignKey [FK_FAQComment_FAQComment]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[FAQComment]  WITH CHECK ADD  CONSTRAINT [FK_FAQComment_FAQComment] FOREIGN KEY([ParentComment])
REFERENCES [dbo].[FAQComment] ([FAQCommentId])
GO
ALTER TABLE [dbo].[FAQComment] CHECK CONSTRAINT [FK_FAQComment_FAQComment]
GO
/****** Object:  ForeignKey [FK_FAQComment_UserProfile]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[FAQComment]  WITH CHECK ADD  CONSTRAINT [FK_FAQComment_UserProfile] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[FAQComment] CHECK CONSTRAINT [FK_FAQComment_UserProfile]
GO
/****** Object:  ForeignKey [FK__DishTag__DishID__4CA06362]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[DishTag]  WITH CHECK ADD  CONSTRAINT [FK__DishTag__DishID__4CA06362] FOREIGN KEY([DishID])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[DishTag] CHECK CONSTRAINT [FK__DishTag__DishID__4CA06362]
GO
/****** Object:  ForeignKey [FK__DishTag__TagID__60A75C0F]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[DishTag]  WITH CHECK ADD FOREIGN KEY([TagID])
REFERENCES [dbo].[Tag] ([Id])
GO
/****** Object:  ForeignKey [FK_DishOrderSummary_Dish]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[DishOrderSummary]  WITH CHECK ADD  CONSTRAINT [FK_DishOrderSummary_Dish] FOREIGN KEY([DishId])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[DishOrderSummary] CHECK CONSTRAINT [FK_DishOrderSummary_Dish]
GO
/****** Object:  ForeignKey [FK__DishMenu__DishID__2E1BDC42]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[DishMenu]  WITH CHECK ADD  CONSTRAINT [FK__DishMenu__DishID__2E1BDC42] FOREIGN KEY([DishID])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[DishMenu] CHECK CONSTRAINT [FK__DishMenu__DishID__2E1BDC42]
GO
/****** Object:  ForeignKey [FK__DishMenu__MenuID__2F10007B]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[DishMenu]  WITH CHECK ADD  CONSTRAINT [FK__DishMenu__MenuID__2F10007B] FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([Id])
GO
ALTER TABLE [dbo].[DishMenu] CHECK CONSTRAINT [FK__DishMenu__MenuID__2F10007B]
GO
/****** Object:  ForeignKey [FK_DishLike_Customer]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[DishLike]  WITH CHECK ADD  CONSTRAINT [FK_DishLike_Customer] FOREIGN KEY([UserId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[DishLike] CHECK CONSTRAINT [FK_DishLike_Customer]
GO
/****** Object:  ForeignKey [FK_DishLike_Dish]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[DishLike]  WITH CHECK ADD  CONSTRAINT [FK_DishLike_Dish] FOREIGN KEY([DishId])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[DishLike] CHECK CONSTRAINT [FK_DishLike_Dish]
GO
/****** Object:  ForeignKey [FK_DishItem_Chef]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[DishItem]  WITH CHECK ADD  CONSTRAINT [FK_DishItem_Chef] FOREIGN KEY([ChefID])
REFERENCES [dbo].[Chef] ([UserID])
GO
ALTER TABLE [dbo].[DishItem] CHECK CONSTRAINT [FK_DishItem_Chef]
GO
/****** Object:  ForeignKey [FK_DishItem_Dish]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[DishItem]  WITH CHECK ADD  CONSTRAINT [FK_DishItem_Dish] FOREIGN KEY([DishID])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[DishItem] CHECK CONSTRAINT [FK_DishItem_Dish]
GO
/****** Object:  ForeignKey [FK_IngredientDish_Dish]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[IngredientDish]  WITH CHECK ADD  CONSTRAINT [FK_IngredientDish_Dish] FOREIGN KEY([DishID])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[IngredientDish] CHECK CONSTRAINT [FK_IngredientDish_Dish]
GO
/****** Object:  ForeignKey [FK_IngredientDish_Ingredient]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[IngredientDish]  WITH CHECK ADD  CONSTRAINT [FK_IngredientDish_Ingredient] FOREIGN KEY([IngredientID])
REFERENCES [dbo].[Ingredient] ([Id])
GO
ALTER TABLE [dbo].[IngredientDish] CHECK CONSTRAINT [FK_IngredientDish_Ingredient]
GO
/****** Object:  ForeignKey [FK_Payment_Bill]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Bill] FOREIGN KEY([BillId])
REFERENCES [dbo].[Bill] ([Id])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Bill]
GO
/****** Object:  ForeignKey [FK__Ingredien__Suppl__4E88ABD4]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[IngredientItem]  WITH CHECK ADD  CONSTRAINT [FK__Ingredien__Suppl__4E88ABD4] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([Id])
GO
ALTER TABLE [dbo].[IngredientItem] CHECK CONSTRAINT [FK__Ingredien__Suppl__4E88ABD4]
GO
/****** Object:  ForeignKey [FK_IngredientItem_Ingredient]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[IngredientItem]  WITH CHECK ADD  CONSTRAINT [FK_IngredientItem_Ingredient] FOREIGN KEY([IngredientID])
REFERENCES [dbo].[Ingredient] ([Id])
GO
ALTER TABLE [dbo].[IngredientItem] CHECK CONSTRAINT [FK_IngredientItem_Ingredient]
GO
/****** Object:  ForeignKey [FK_Order_Bill]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Bill] FOREIGN KEY([BillId])
REFERENCES [dbo].[Bill] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Bill]
GO
/****** Object:  ForeignKey [FK__OrderDeta__DishI__48CFD27E]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__DishI__48CFD27E] FOREIGN KEY([DishID])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__DishI__48CFD27E]
GO
/****** Object:  ForeignKey [FK__OrderDeta__Order__534D60F1]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Order__534D60F1] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__Order__534D60F1]
GO
/****** Object:  ForeignKey [FK_IngredientDishItem_DishItem]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[IngredientDishItem]  WITH CHECK ADD  CONSTRAINT [FK_IngredientDishItem_DishItem] FOREIGN KEY([DishItemID])
REFERENCES [dbo].[DishItem] ([Id])
GO
ALTER TABLE [dbo].[IngredientDishItem] CHECK CONSTRAINT [FK_IngredientDishItem_DishItem]
GO
/****** Object:  ForeignKey [FK_IngredientDishItem_IngredientItem]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[IngredientDishItem]  WITH CHECK ADD  CONSTRAINT [FK_IngredientDishItem_IngredientItem] FOREIGN KEY([IngredientItemID])
REFERENCES [dbo].[IngredientItem] ([Id])
GO
ALTER TABLE [dbo].[IngredientDishItem] CHECK CONSTRAINT [FK_IngredientDishItem_IngredientItem]
GO
/****** Object:  ForeignKey [FK_OrderDetailDishItem_DishItem]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[OrderDetailDishItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetailDishItem_DishItem] FOREIGN KEY([DishItemId])
REFERENCES [dbo].[DishItem] ([Id])
GO
ALTER TABLE [dbo].[OrderDetailDishItem] CHECK CONSTRAINT [FK_OrderDetailDishItem_DishItem]
GO
/****** Object:  ForeignKey [FK_OrderDetailDishItem_OrderDetail]    Script Date: 04/28/2014 17:09:17 ******/
ALTER TABLE [dbo].[OrderDetailDishItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetailDishItem_OrderDetail] FOREIGN KEY([OrderDetailId])
REFERENCES [dbo].[OrderDetail] ([Id])
GO
ALTER TABLE [dbo].[OrderDetailDishItem] CHECK CONSTRAINT [FK_OrderDetailDishItem_OrderDetail]
GO
