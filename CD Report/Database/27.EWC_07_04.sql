USE [master]
GO
/****** Object:  Database [EWC]    Script Date: 04/07/2014 21:52:03 ******/
CREATE DATABASE [EWC] ON  PRIMARY 
( NAME = N'EWC', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLSERVER2008\MSSQL\DATA\EWC.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
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
/****** Object:  Table [dbo].[Skill]    Script Date: 04/07/2014 21:52:07 ******/
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
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 04/07/2014 21:52:07 ******/
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
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 04/07/2014 21:52:07 ******/
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
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 04/07/2014 21:52:07 ******/
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
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (5, CAST(0x0000A2F30082511C AS DateTime), NULL, 1, NULL, 0, N'ABcSTbV71qQu2rabbhHq1v1nqhx9uUw90wb1VP+LVXauqi5NUNyQKm1sSdEMdqPeMg==', CAST(0x0000A2F30082511C AS DateTime), N'', NULL, NULL)
/****** Object:  Table [dbo].[UserProfile]    Script Date: 04/07/2014 21:52:07 ******/
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
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FullName], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (4, N'nguyenvandau', N'Nguyễn Văn Đậu', N'aaaaa', N'3123', N'aaaaa', 1, CAST(0x09A90B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FullName], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (5, N'nhantt2', N'Nguyễn Thành Nhân', N'nhantt2@gmail.com', N'0938228754', N'Dai Hoc FPT', 0, CAST(0x1B190B00 AS Date), 1)
SET IDENTITY_INSERT [dbo].[UserProfile] OFF
/****** Object:  Table [dbo].[IngredientCategory]    Script Date: 04/07/2014 21:52:07 ******/
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
/****** Object:  Table [dbo].[DishCategory]    Script Date: 04/07/2014 21:52:07 ******/
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
INSERT [dbo].[DishCategory] ([Id], [Name], [Description], [Image], [IsAvailable]) VALUES (2, N'Sides', N'Discover fresh weeknight dinner', N'/Content/frontend/images/banner-img-6.jpg', 1)
INSERT [dbo].[DishCategory] ([Id], [Name], [Description], [Image], [IsAvailable]) VALUES (3, N'Thức ăn trẻ em', N'Foods good for kids', N'/Content/frontend/images/banner-img-4.jpg', 1)
INSERT [dbo].[DishCategory] ([Id], [Name], [Description], [Image], [IsAvailable]) VALUES (4, N'Món tráng miệng', N'Món tráng miệng ngon', N'/Images/40-Blueberry-Bran-Muffin.jpg', 1)
INSERT [dbo].[DishCategory] ([Id], [Name], [Description], [Image], [IsAvailable]) VALUES (5, N'Nước uống', N'Nước uống trái cây', N'/Content/frontend/images/banner-img-2.jpg', 1)
SET IDENTITY_INSERT [dbo].[DishCategory] OFF
/****** Object:  Table [dbo].[Menu]    Script Date: 04/07/2014 21:52:07 ******/
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
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (6, N'Menu 26/02', N'nothing', CAST(0x0000A2F800000000 AS DateTime), 1, CAST(0x0000A2FA00000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (7, N'Menu 27/02', N'nothing', CAST(0x0000A2ED00000000 AS DateTime), 1, CAST(0x0000A31A00000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (8, N'Menu 04/03', N'nothing', CAST(0x0000A30600000000 AS DateTime), 1, CAST(0x0000A30800000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (9, N'Menu 01/03', N'nothing', CAST(0x0000A2E100000000 AS DateTime), 1, CAST(0x0000A2E100000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (10, N'Menu 20/03', N'nothing', CAST(0x0000A2F400000000 AS DateTime), 1, CAST(0x0000A2F400000000 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (11, N'Menu 22/03', N'nothing', CAST(0x0000A2F600000000 AS DateTime), 1, CAST(0x0000A2F600000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Menu] OFF
/****** Object:  Table [dbo].[Chef]    Script Date: 04/07/2014 21:52:07 ******/
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
/****** Object:  Table [dbo].[Tag]    Script Date: 04/07/2014 21:52:07 ******/
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
SET IDENTITY_INSERT [dbo].[Tag] OFF
/****** Object:  Table [dbo].[SupplierCategory]    Script Date: 04/07/2014 21:52:07 ******/
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
/****** Object:  Table [dbo].[Supplier]    Script Date: 04/07/2014 21:52:07 ******/
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
SET IDENTITY_INSERT [dbo].[Supplier] OFF
/****** Object:  Table [dbo].[Bill]    Script Date: 04/07/2014 21:52:07 ******/
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
SET IDENTITY_INSERT [dbo].[Bill] OFF
/****** Object:  Table [dbo].[Dish]    Script Date: 04/07/2014 21:52:07 ******/
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
 CONSTRAINT [PK__Dish__3214EC0721B6055D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Dish] ON
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (1, N'Hải sản chiên giòn với pho mát', N'hai-san-chien-gion-voi-pho-mat', 1, 1, N'/Images/Dish/1-Crispy-Seafood-Mac-Cheese.jpg', 50000, N'Tofu is marinated in garlic, ginger, and soy sauce over night. Then tossed in flour & corn starch mix and deep fried. Green beans are blanched and tossed in spicy peanut sauce.', N'not now', 0, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (2, N'Gà ướp cay', N'ga-uop-cay', 1, 1, N'/Images/Dish/2-Spicy-Chicken-Andouille-Gumbo.jpg', 60000, N'Nullam id dolor id niltricies vehicula ut id elit. osuer e consectetu. Aliquauam sollicitudin hendrerit.', N'not now', 0, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (3, N'Thịt lợn hun khói Kalua', N'thit-lon-hun-khoi-kalua', 1, 1, N'/Images/Dish/3-Ka-Lua-Style-Smoked-Pork-Sirloin.jpg', 40000, N'ICROWAVE: Heat the rest of the items for 2-3 minutes (timing varies depending on your microwave) or until hot. Pour the sauce to Tofu or dip in.', N'not now', 4, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (4, N'Bít tết Brussels', N'bit-tet-brussels', 1, 1, N'/Images/Dish/4-Grilled-Flap-Steak-Brussels.jpg', 65000, N'Pork shoulder braised with sweet Spanish peppers, fennel and porcini mushrooms until very tender. Finished with baby kale, butter and Parmesan to finish.', N'not now', 4, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (5, N'Gà nướng Teriyaki', N'ga-nuong-teriyaki', 1, 1, N'/Images/Dish/5-Grilled-Chicken-Teriyaki.jpg', 37000, N'Ultimate Japanese comfort food on cold winter nights! Chicken curry is cooked with yellow onions, carrots, bonito and kombu dashi. Chewy Udon noodles are done al dente. A bit of spice in curry keeps you warm all night.', N'not now', 4, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (6, N'Thịt hầm khoai tây Nikujaga', N'thit-ham-khoai-tay-nikujaga', 1, 1, N'/Images/Dish/6-Nikujaga.jpg', 48000, N'Grilled Atlantic salmon (seasoned with 70% extra virgin olive oil, 30% corn oil and kosher salt), Italian mixed greens from County Line Harvest, organic chickpeas (garbanzo beans), and organic chioggia beets (seasoned with maldon sea salt & extra virgin olive oil). Served with chunky citrus vinaigrette.', N'not now', 5, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (7, N'Thịt lợn ướp Chermoula', N'thit-lon-uop-chermoula', 1, 1, N'/Images/Dish/7-Chermoula-Marinated-Pork-Shoulder.jpg', 52000, N'Chicken is lightly pan fried in oil. Mushroom sauce is made with sautéed mushrooms, chicken stock, herbs, garlic & marsala.', N'not now', 4.5, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (8, N'Sandwich gà xà lách cùng quả anh đào', N'sandwich-ga-xa-lach-cung-qua-anh-dao', 1, 1, N'/Images/Dish/8-Chicken-Cherry-Salad-Sandwich.jpg', 53, N'sdsd', N'dsds', 4.5, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (9, N'Falafel nhồi cà tím', N'falafel-nhoi-ca-tim', 1, 1, N'/Images/Dish/9-Falafel-Stuffed-Eggplant.jpg', 32, N'asdad', N'dadad', 4, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (10, N'Gà nướng với Chimichurri', N'ga-nuong-voi-chimichurri', 1, 1, N'/Images/Dish/10-Roast-Chicken-with-Chimichurri.jpg', 45, N'assaa', N'assasa', 5, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (11, N'Farfalle với kem Sage-Cashew', N'farfalle-voi-kem-sage-cashew', 1, 1, N'/Images/Dish/11-Farfalle-with-Sage-Cashew-Cream.jpg', 434, N'sasas', N'assasas', 4, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (12, N'Rượu vang đỏ om thịt bò Bourguignon', N'ruou-van-do-om-thit-bo-bourguignon', 1, 1, N'/Images/Dish/12-Red-Wine-Braised-Beef-Bourguignon.jpg', 43, N'dsdsd', N'dsdsd', 5, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (13, N'Thịt cừu và phô mai dê Moussaka', N'thit-cuu-va-pho-mai-de-moussaka', 1, 1, N'/Images/Dish/13-Lamb-and-Goat-Cheese-Moussaka.jpg', 43, N'dsasa', N'das', 4, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (14, N'Cá hồi nướng Panzanella', N'ca-hoi-nuong-panzanella', 1, 1, N'/Images/Dish/14-Grilled-Salmon-Winter-Panzanella.jpg', 43, N'asa', N'sasa', 4, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (15, N'Cá hồi Skuna cùng súp Miso', N'ca-hoi-skuna-cung-sup-miso', 2, 1, N'/Images/Dish/15-Skuna-Bay-Salmon-and-Miso-Soup.jpg', 45, N'assaas', N'sasas', 4, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (16, N'Củ cải đường rang với Quả óc chó', N'cu-cai-duong-rang-voi-qua-oc-cho', 2, 1, N'/Images/Dish/16-Roasted-Beets-with-Walnuts.jpg', 45, N'asasa', N'sasas', 4, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (17, N'Thơm chiên Brussels', N'thom-chien-brussels', 2, 1, N'/Images/Dish/17-Tangy-Fried-Brussels-Sprouts.jpg', 45, N'asasa', N'sasas', 4, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (18, N'Đậu lăng, đậu xanh và Feta Salad', N'dau-lang-dau-xanh-va-feta-salad', 2, 1, N'/Images/Dish/18-Lentil-Chickpea-and-Feta-Salad.jpg', 56, N'sas', N'jhj', 5, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (19, N'Bông cải xanh và pho mát', N'bong-cai-xanh-va-xa-lach-xanh', 2, 1, N'/Images/Dish/19-Broccoli-Cheddar-Mac-and-Cheese.jpg', 54, N'asas', N'sasas', 4, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (20, N'Rau diếp và xà lách xanh', N'rau-diep-va-xa-lach-xanh', 2, 1, N'/Images/Dish/20-Little-Gem-Lettuce-Green-Salad.jpg', 67, N'sas', N'sasa', 4, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (21, N'Cơm thịt gà  Chowder', N'com-thit-ga-chowder', 2, 1, N'/Images/Dish/21-Chicken-and-Rice-Chowder.jpg', 78, N'sasas', N'sasas', 4, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (22, N'Salad với tỏi Ceasar', N'salad-voi-toi-caesar', 2, 1, N'/Images/Dish/22-Caesar-Salad-with-Garlic-Croutons.jpg', 78, N'sasas', N'sasas', 5, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (23, N'Dâu tây', N'dau-tay', 2, 1, N'/Images/Dish/23-Local-Strawberries.jpg', 43, N'dsdsd', N'dsds', 5, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (24, N'Khoai tây rang Hy Lạp', N'khoai-tay-rang-hy-lap', 2, 1, N'/Images/Dish/24-Greek-Style-Roasted-Potatoes.jpg', 43, N'sasas', N'sasas', 4, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (25, N'Atiso nướng Castroville', N'atiso-nuong-castroville', 2, 1, N'/Images/Dish/25-Grilled-Castroville-Artichokes.jpg', 43, N'sdasas', N'sasas', 0, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (26, N'Súp cà chua rang', N'sup-ca-chua-rang', 2, 1, N'/Images/Dish/26-Roasted-Tomato-Soup.jpg', 44, N'asasas', N'saasas', 4, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (27, N'Súp khoai tây, tỏi xanh', N'sup-khoai-tay-toi-xanh', 2, 1, N'/Images/Dish/27-Potato-Leek-Green-Garlic-Soup.jpg', 44, N'asasa', N'sasa', 4, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (28, N'Hương thảo và muối biển Focaccia', N'huong-thao-va-muoi-bien-focaccia', 2, 1, N'/Images/Dish/28-Rosemary-and-Sea-Salt-Focaccia.jpg', 46, N'sasas', N'sasas', 5, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (29, N'Pho mát quảng trường Nicasio', N'pho-mat-quang-truong-nicasio', 2, 1, N'/Images/Dish/29-Nicasio-Square-Cheese-Plate.jpg', 67, N'assas', N'assas', 4, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (30, N'Cocktail tôm California', N'cocktail-tom-california', 2, 1, N'/Images/Dish/30-California-Shrimp-Cocktail.jpg', 78, N'sass', N'assas', 4, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (31, N'Súp cà rốt Masala', N'sup-ca-rot-masala', 2, 1, N'/Images/Dish/31-Spiced-Carrot-Masala-Soup.jpg', 76, N'sasa', N'sasas', 5, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (32, N'Củ cải rang và phô mai dê', N'cu-cai-rang-va-pho-mat-de', 2, 1, N'/Images/Dish/32-Roasted-Beet-Goat-Cheese-Salad.jpg', 77, N'sasa', N'saasas', 4, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (33, N'Khoai tây nướng cho trẻ em', N'khoai-tay-nuong-cho-tre-em', 3, 1, N'/Images/Dish/33-Kids-Loaded-Baked-Potato.jpg', 78, N'sasa', N'sasa', 4, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (34, N'Đùi gà nướng', N'dui-ga-nuong', 3, 1, N'/Images/Dish/34-Roasted-Chicken-Drumstick.jpg', 77, N'asas', N'assas', 5, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (35, N'Bánh kem bơ vị Caremel', N'banh-kem-bo-vi-caremel', 4, 1, N'/Images/Dish/35-Salted-Caramel-Buttercream-Cake.jpg', 78, N'sasas', N'assas', 4, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (36, N'Bánh nướng cam Theda', N'banh-nuong-cam-theda', 4, 1, N'/Images/Dish/36-Theda-Orange-Cranberry-Scone.jpg', 89, N'sasa', N'sasas', 5, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (37, N'Bánh Sô cô la 3 tầng', N'banh-so-co-la-3-tang', 4, 1, N'/Images/Dish/37-Triple-Play-Chocolate-Pudding.jpg', 90, N'sas', N'hjhj', 4, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (38, N'Bánh ngọt bơ đậu phộng', N'banh-ngot-bo-dau-phong', 4, 1, N'/Images/Dish/38-Peanut-Butter-Cup-Cookie.jpg', 89, N'sasa', N'sasas', 5, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (39, N'Mascarpone Brownie', N'mascarpone-brownie', 4, 1, N'/Images/Dish/39-Mascarpone-Brownie.jpg', 90, N'assas', N'sasas', 5, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (40, N'Bánh Bran Muffin', N'banh-bran-muffin', 4, 1, N'/Images/Dish/40-Blueberry-Bran-Muffin.jpg', 80, N'sas', N'sasas
jjklk', 0, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (41, N'Bánh mì táo yến mạch Zucchini', N'banh-mi-tao-yen-mach-zucchini', 4, 1, N'/Images/Dish/41-Zucchini-Apple-Oat Bread.jpg', 89, N'sas', N'sasa', 5, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (42, N'Bánh brownie Mê xi cô', N'banh-brownie-me-xi-co', 4, 1, N'/Images/Dish/42-Mexican-Chocolate-Brownie.jpg', 90, N'sasas', N'sasas', 4, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (43, N'Bánh cupcake', N'banh-cupcake', 4, 1, N'/Images/Dish/43-Dirty-Blonde.jpg', 99, N'sasas', N'sasas', 5, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (44, N'Bánh sô cô la cổ điển', N'banh-so-co-la-co-dien', 4, 1, N'/Images/Dish/44-Classic-Chocolate-Chip-Cookie.jpg', 80, N'sasas', N'sasas', 5, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (45, N'Bánh sô cô la mặn ngọt', N'banh-so-co-la-man-ngot', 4, 1, N'/Images/Dish/45-Salty-Sweet-Chocolate-Chip-Cookie.jpg', 80, N'sasa', N'sasas', 4, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (46, N'G.Reedy Sauvignon Blanc', N'greedy-sauvignon-blanc', 5, 1, N'/Images/Dish/46-GReedy-Sauvignon-Blanc.jpg', 89, N'sasas', N'sasas', 5, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (47, N'La Merika Cabernet Sauvignon', N'la-merika-cabernet-sauvignon', 5, 1, N'/Images/Dish/47-La-Merika-Cabernet-Sauvignon.jpg', 8, N'asas', N'sasas', 5, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (48, N'Cafe Tesora', N'cafe-tesora', 5, 1, N'/Images/Dish/48-Tesora-Blend.jpg', 9, N'sasas', N'sasass', 5, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (49, N'Cafe Jacob''s Wonderbar', N'cafe-jacobs-wonderbar', 5, 1, N'/Images/Dish/49-Jacobs-Wonderbar.jpg', 9, N'ssasa', N'sasa', 5, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (50, N'Rượu tuyết Junmai', N'ruou-tuyet-junmai', 5, 1, N'/Images/Dish/50-Tozai-Snow-Maiden-Sake-Junmai.jpg', 9, N'sasas', N'sasss', 4, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (51, N'Rượu Prosecco Brut', N'ruou-prosecco-brut', 5, 1, N'/Images/Dish/51-Zefiro-Prosecco-Brut-NV.jpg', 9, N'sasas', N'sassasa', 5, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (52, N'Rượu Ace Joker', N'ruou-ace-joker', 5, 1, N'/Images/Dish/9-Falafel-Stuffed-Eggplant.jpg', 10, N'asasas', N'sasass', 0, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (53, N'Cafe đá Gusto', N'cafe-da-gusto', 5, 1, N'/Images/Dish/53-Gusto-Iced-Coffee.jpg', 10, N'sassa', N'sasas', 5, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (54, N'Nước ép củ cải đường', N'nuoc-ep-cu-cai-duong', 5, 1, N'/Images/Dish/54-Freshly-Pressed-Beet-Juice.jpg', 10, N'sasas', N'sasas', 5, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (55, N'Nước cam ép', N'nuoc-cam-ep', 5, 1, N'/Images/Dish/55-Freshly-Pressed-Orange-Juice.jpg', 12, N'assasa', N'sassa', 5, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (56, N'Nước ép cà rốt', N'nuoc-ep-ca-rot', 5, 1, N'/Images/Dish/56-Freshly-Pressed-Carrot-Juice.jpg', 11, N'sasas', N'assas', 5, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (57, N'Nước ép cải xoăn', N'nuoc-ep-cai-xoan', 5, 1, N'/Images/Dish/57-Freshly-Pressed-Kale-Juice.jpg', 11, N'assa', N'sasasa', 5, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (58, N'Sữa Nut hỗn hợp', N'sua-nut-hon-hop', 5, 1, N'/Images/Dish/58-Mixed-Nut-Milk.jpg', 11, N'asas', N'assas', 4, 1, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate]) VALUES (59, N'Sữa hạnh nhân', N'sua-hanh-nhan', 5, 1, N'/Images/Dish/59-Classic-Almond-Milk.jpg', 11, N'ass', N'sassa', 5, 1, 0)
SET IDENTITY_INSERT [dbo].[Dish] OFF
/****** Object:  Table [dbo].[ChefSkill]    Script Date: 04/07/2014 21:52:07 ******/
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
/****** Object:  Table [dbo].[Ingredient]    Script Date: 04/07/2014 21:52:07 ******/
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
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (1, N'Macaroni', 6, N'/Images/Ingredient/bo nam.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (2, N'Sữa tươi', 7, N'/Images/Ingredient/bo nam.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (3, N'Cua xanh', 3, N'/Images/Ingredient/bo nam.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (4, N'Sò', 3, N'/Images/Ingredient/bo nam.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (5, N'Tôm', 3, N'/Images/Ingredient/bo nam.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (6, N'Pho mát', 7, N'/Images/Ingredient/bo nam.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (7, N'Kem Whipping ', 7, N'/Images/Ingredient/bo nam.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (8, N'Mỳ ý trắng', 6, N'/Images/Ingredient/bo nam.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (9, N'Củ hành', 4, N'/Images/Ingredient/bo nam.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (10, N'Muối Kosher', 7, N'/Images/Ingredient/bo nam.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (11, N'Gà', 1, N'/Images/Ingredient/bo nam.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (12, N'Gạo lức', 8, N'/Images/Ingredient/bo nam.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (13, N'Xúc xích heo', 9, N'/Images/Ingredient/hanh.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (14, N'Đậu đỏ', 8, N'/Images/Ingredient/hanh.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (15, N'Bột năng', 7, N'/Images/Ingredient/hanh.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (16, N'Cần tây', 4, N'/Images/Ingredient/hanh.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (17, N'Bơ', 7, N'/Images/Ingredient/hanh.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (18, N'Ớt bột', 7, N'/Images/Ingredient/hanh.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (19, N'Tỏi', 7, N'/Images/Ingredient/hanh.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (20, N'Thì là', 4, N'/Images/Ingredient/hanh.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (21, N'Rau thơm', 4, N'/Images/Ingredient/hanh.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (22, N'Ớt tươi', 7, N'/Images/Ingredient/toi.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (23, N'Thịt heo thăn', 1, N'/Images/Ingredient/toi.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (24, N'Trái khớm', 4, N'/Images/Ingredient/toi.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (25, N'Đường trắng', 7, N'/Images/Ingredient/toi.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (26, N'Tamari', 7, N'/Images/Ingredient/toi.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (27, N'Dầu ăn', 7, N'/Images/Ingredient/toi.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (28, N'Vừng', 7, N'/Images/Ingredient/toi.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (29, N'Xà lách', 4, N'/Images/Ingredient/toi.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (30, N'Gừng', 4, N'/Images/Ingredient/toi.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (31, N'Thịt bò', 1, N'/Images/Ingredient/toi.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (32, N'Cải Brussels ', 4, N'/Images/Ingredient/toi.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (33, N'Bột ngũ cốc', 6, N'/Images/Ingredient/toi.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (34, N'Chanh', 7, N'/Images/Ingredient/toi.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (35, N'Couscous', 8, N'/Images/Ingredient/toi.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (36, N'Trái bơ', 4, N'/Images/Ingredient/toi.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (37, N'Rau diếp đỏ', 4, N'/Images/Ingredient/dui ga.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (38, N'Khoai tây', 4, N'/Images/Ingredient/dui ga.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (39, N'Gạo trắng', 8, N'/Images/Ingredient/dui ga.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (40, N'Tương cà', 7, N'/Images/Ingredient/dui ga.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (41, N'Cà rốt', 4, N'/Images/Ingredient/dui ga.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (42, N'Nho khô vàng', 5, N'/Images/Ingredient/dui ga.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (43, N'Hạt thông', 4, N'/Images/Ingredient/dui ga.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (44, N'Dầu cải', 7, N'/Images/Ingredient/dui ga.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (45, N'Bánh mỳ lát', 9, N'/Images/Ingredient/dui ga.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (46, N'Quả mơ khô', 4, N'/Images/Ingredient/dui ga.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (47, N'Sốt Mayonnaise', 7, N'/Images/Ingredient/dui ga.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (48, N'Pistachio nuts', 9, N'/Images/Ingredient/dui ga.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (49, N'Rau hẹ', 4, N'/Images/Ingredient/dui ga.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (50, N'Cà tím', 4, N'/Images/Ingredient/gio heo.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (51, N'Đậu xanh', 8, N'/Images/Ingredient/gio heo.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (52, N'Mè', 7, N'/Images/Ingredient/gio heo.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (53, N'Dưa leo', 4, N'/Images/Ingredient/gio heo.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (54, N'Dầu ô liu', 7, N'/Images/Ingredient/gio heo.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (55, N'Rau dền', 4, N'/Images/Ingredient/gio heo.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (56, N'Bầu', 4, N'/Images/Ingredient/gio heo.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (57, N'Dầu cải', 7, N'/Images/Ingredient/gio heo.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (58, N'Đậu Hà Lan', 8, N'/Images/Ingredient/gio heo.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (59, N'Mỳ Pasta', 8, N'/Images/Ingredient/gio heo.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (60, N'Bí đỏ', 4, N'/Images/Ingredient/ca thu.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (61, N'Hạt điều', 8, N'/Images/Ingredient/ca thu.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (62, N'Hành lá', 4, N'/Images/Ingredient/ca thu.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (63, N'Cranberries', 5, N'/Images/Ingredient/ca thu.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (64, N'Rượu vang đỏ', 7, N'/Images/Ingredient/ca thu.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (65, N'Sốt cà chua', 7, N'/Images/Ingredient/ca thu.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (66, N'Nấm rơm', 4, N'/Images/Ingredient/ca thu.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (67, N'Thịt cừu', 1, N'/Images/Ingredient/ca thu.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (68, N'Trứng gà', 9, N'/Images/Ingredient/ca thu.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (69, N'Feta Cheese', 9, N'/Images/Ingredient/ca thu.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (70, N'Cá hồi', 2, N'/Images/Ingredient/ca thu.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (71, N'Củ cải trắng', 4, N'/Images/Ingredient/ca thu.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (72, N'Miso', 7, N'/Images/Ingredient/ca thu.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (73, N'Cải bó xôi', 4, N'/Images/Ingredient/ca thu.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (74, N'Nước mắm', 7, N'/Images/Ingredient/trung.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (75, N'Củ tím', 4, N'/Images/Ingredient/trung.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (76, N'Giấm trắng', 7, N'/Images/Ingredient/trung.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (77, N'Black walnuts', 4, N'/Images/Ingredient/trung.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (78, N'Anise seed', 7, N'/Images/Ingredient/trung.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (79, N'Cam', 5, N'/Images/Ingredient/trung.jpg', 0, 1)
SET IDENTITY_INSERT [dbo].[Ingredient] OFF
/****** Object:  Table [dbo].[UserFollowChef]    Script Date: 04/07/2014 21:52:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserFollowChef](
	[UserID] [int] NOT NULL,
	[ChefID] [int] NOT NULL,
 CONSTRAINT [PK_UserFollowChef] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[ChefID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 04/07/2014 21:52:07 ******/
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
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (5, 3)
/****** Object:  Table [dbo].[IngredientDish]    Script Date: 04/07/2014 21:52:07 ******/
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
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (32, 25)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (33, 1)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (38, 25)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (63, 2)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (63, 52)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (67, 1)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (67, 40)
INSERT [dbo].[IngredientDish] ([IngredientID], [DishID]) VALUES (67, 52)
/****** Object:  Table [dbo].[DishTag]    Script Date: 04/07/2014 21:52:07 ******/
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
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (1, 2)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (2, 2)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (3, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (4, 2)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (5, 2)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (6, 2)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (7, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (8, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (9, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (10, 1)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (11, 1)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (12, 1)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (13, 1)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (14, 1)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (15, 1)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (16, 1)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (17, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (18, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (19, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (20, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (21, 4)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (22, 4)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (23, 4)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (24, 4)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (25, 4)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (26, 2)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (26, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (26, 5)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (27, 2)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (28, 1)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (29, 2)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (30, 1)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (31, 2)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (31, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (32, 4)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (33, 5)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (34, 2)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (35, 2)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (36, 5)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (37, 5)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (38, 5)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (39, 5)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (40, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (41, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (42, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (43, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (44, 4)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (45, 4)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (46, 4)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (47, 4)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (48, 5)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (49, 5)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (50, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (51, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (52, 2)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (53, 2)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (54, 2)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (55, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (56, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (57, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (58, 3)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (59, 2)
INSERT [dbo].[DishTag] ([DishID], [TagID]) VALUES (59, 3)
/****** Object:  Table [dbo].[DishOrderSummary]    Script Date: 04/07/2014 21:52:07 ******/
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
/****** Object:  Table [dbo].[DishMenu]    Script Date: 04/07/2014 21:52:07 ******/
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
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (2, 8, 60000, 0)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (5, 8, 40000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (7, 8, 40000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (10, 8, 40000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (15, 8, 35000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (17, 8, 42000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (20, 8, 52000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (27, 8, 60000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (28, 8, 70000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (29, 8, 45000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (30, 8, 52000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (34, 8, 60000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (36, 8, 50000, 26)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (40, 8, 35000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (43, 8, 30000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (45, 8, 18000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (48, 8, 50000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (55, 8, 20000, 18)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (59, 8, 20000, 30)
/****** Object:  Table [dbo].[DishItem]    Script Date: 04/07/2014 21:52:07 ******/
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
SET IDENTITY_INSERT [dbo].[DishItem] OFF
/****** Object:  Table [dbo].[IngredientItem]    Script Date: 04/07/2014 21:52:07 ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 04/07/2014 21:52:07 ******/
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
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (1, 1, N'Nhan Nguyen', N'0938228754', N'Dai hoc FPT', N'nhantt2@gmail.com', 250000, CAST(0x0000A2F900000000 AS DateTime), CAST(0x0000A2FB00000000 AS DateTime), N'Giao buổi sáng', 1, 1)
INSERT [dbo].[Order] ([Id], [BillId], [ReceiverName], [ReceiverPhone], [ReceiverAddress], [ReceiverEmail], [TotalPayment], [OrderDate], [DeliveryDate], [Note], [OrderStatus], [PaymentStatus]) VALUES (2, 1, N'Hoang Vuong', N'0932164180', N'VPN Tech', N'hoangtrungthienvuong@gmail.com', 300000, CAST(0x0000A2FA00000000 AS DateTime), CAST(0x0000A2FC00000000 AS DateTime), N'Giao tại nhà', 1, 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 04/07/2014 21:52:07 ******/
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
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (1, 1, 1, 20000, 2)
INSERT [dbo].[OrderDetail] ([Id], [OrderID], [Quantity], [UnitPrice], [DishID]) VALUES (3, 1, 2, 30000, 3)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
/****** Object:  Table [dbo].[IngredientDishItem]    Script Date: 04/07/2014 21:52:07 ******/
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
/****** Object:  Table [dbo].[OrderDetailDishItem]    Script Date: 04/07/2014 21:52:07 ******/
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
/****** Object:  Default [DF__webpages___IsCon__4222D4EF]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [IsConfirmed]
GO
/****** Object:  Default [DF__webpages___Passw__4316F928]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [PasswordFailuresSinceLastSuccess]
GO
/****** Object:  Default [DF_Dish_Url]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[Dish] ADD  CONSTRAINT [DF_Dish_Url]  DEFAULT (N'unknown') FOR [Url]
GO
/****** Object:  Default [DF_Dish_Rate]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[Dish] ADD  CONSTRAINT [DF_Dish_Rate]  DEFAULT ((0)) FOR [Rate]
GO
/****** Object:  Default [DF_Dish_NumberOfRate]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[Dish] ADD  CONSTRAINT [DF_Dish_NumberOfRate]  DEFAULT ((0)) FOR [NumberOfRate]
GO
/****** Object:  Default [DF_DishItem_ChefID]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[DishItem] ADD  CONSTRAINT [DF_DishItem_ChefID]  DEFAULT ((1)) FOR [ChefID]
GO
/****** Object:  Default [DF_DishItem_IsAvailable]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[DishItem] ADD  CONSTRAINT [DF_DishItem_IsAvailable]  DEFAULT ((1)) FOR [IsAvailable]
GO
/****** Object:  Default [DF_OrderDetailDishItem_Quantity]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[OrderDetailDishItem] ADD  CONSTRAINT [DF_OrderDetailDishItem_Quantity]  DEFAULT ((0)) FOR [Quantity]
GO
/****** Object:  ForeignKey [FK_Supplier_SupplierCategory]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_SupplierCategory] FOREIGN KEY([SupplierCategory])
REFERENCES [dbo].[SupplierCategory] ([Id])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_SupplierCategory]
GO
/****** Object:  ForeignKey [FK_Bill_UserProfile]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_UserProfile] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_UserProfile]
GO
/****** Object:  ForeignKey [FK__Dish__Category__1B0907CE]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[Dish]  WITH CHECK ADD  CONSTRAINT [FK__Dish__Category__1B0907CE] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[DishCategory] ([Id])
GO
ALTER TABLE [dbo].[Dish] CHECK CONSTRAINT [FK__Dish__Category__1B0907CE]
GO
/****** Object:  ForeignKey [FK__Dish__ChefID__4AB81AF0]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[Dish]  WITH CHECK ADD  CONSTRAINT [FK__Dish__ChefID__4AB81AF0] FOREIGN KEY([ChefID])
REFERENCES [dbo].[Chef] ([UserID])
GO
ALTER TABLE [dbo].[Dish] CHECK CONSTRAINT [FK__Dish__ChefID__4AB81AF0]
GO
/****** Object:  ForeignKey [FK_ChefSkill_Chef]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[ChefSkill]  WITH CHECK ADD  CONSTRAINT [FK_ChefSkill_Chef] FOREIGN KEY([ChefId])
REFERENCES [dbo].[Chef] ([UserID])
GO
ALTER TABLE [dbo].[ChefSkill] CHECK CONSTRAINT [FK_ChefSkill_Chef]
GO
/****** Object:  ForeignKey [FK_ChefSkill_Skill]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[ChefSkill]  WITH CHECK ADD  CONSTRAINT [FK_ChefSkill_Skill] FOREIGN KEY([SkillId])
REFERENCES [dbo].[Skill] ([Id])
GO
ALTER TABLE [dbo].[ChefSkill] CHECK CONSTRAINT [FK_ChefSkill_Skill]
GO
/****** Object:  ForeignKey [FK__Ingredien__Categ__08EA5793]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[Ingredient]  WITH CHECK ADD  CONSTRAINT [FK__Ingredien__Categ__08EA5793] FOREIGN KEY([Category])
REFERENCES [dbo].[IngredientCategory] ([Id])
GO
ALTER TABLE [dbo].[Ingredient] CHECK CONSTRAINT [FK__Ingredien__Categ__08EA5793]
GO
/****** Object:  ForeignKey [FK_UserFollowChef_Chef]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[UserFollowChef]  WITH CHECK ADD  CONSTRAINT [FK_UserFollowChef_Chef] FOREIGN KEY([ChefID])
REFERENCES [dbo].[Chef] ([UserID])
GO
ALTER TABLE [dbo].[UserFollowChef] CHECK CONSTRAINT [FK_UserFollowChef_Chef]
GO
/****** Object:  ForeignKey [FK_UserFollowChef_UserProfile]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[UserFollowChef]  WITH CHECK ADD  CONSTRAINT [FK_UserFollowChef_UserProfile] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[UserFollowChef] CHECK CONSTRAINT [FK_UserFollowChef_UserProfile]
GO
/****** Object:  ForeignKey [fk_RoleId]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
/****** Object:  ForeignKey [fk_UserId]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
GO
/****** Object:  ForeignKey [FK_IngredientDish_Dish]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[IngredientDish]  WITH CHECK ADD  CONSTRAINT [FK_IngredientDish_Dish] FOREIGN KEY([DishID])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[IngredientDish] CHECK CONSTRAINT [FK_IngredientDish_Dish]
GO
/****** Object:  ForeignKey [FK_IngredientDish_Ingredient]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[IngredientDish]  WITH CHECK ADD  CONSTRAINT [FK_IngredientDish_Ingredient] FOREIGN KEY([IngredientID])
REFERENCES [dbo].[Ingredient] ([Id])
GO
ALTER TABLE [dbo].[IngredientDish] CHECK CONSTRAINT [FK_IngredientDish_Ingredient]
GO
/****** Object:  ForeignKey [FK__DishTag__DishID__4CA06362]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[DishTag]  WITH CHECK ADD  CONSTRAINT [FK__DishTag__DishID__4CA06362] FOREIGN KEY([DishID])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[DishTag] CHECK CONSTRAINT [FK__DishTag__DishID__4CA06362]
GO
/****** Object:  ForeignKey [FK__DishTag__TagID__571DF1D5]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[DishTag]  WITH CHECK ADD FOREIGN KEY([TagID])
REFERENCES [dbo].[Tag] ([Id])
GO
/****** Object:  ForeignKey [FK_DishOrderSummary_Dish]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[DishOrderSummary]  WITH CHECK ADD  CONSTRAINT [FK_DishOrderSummary_Dish] FOREIGN KEY([DishId])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[DishOrderSummary] CHECK CONSTRAINT [FK_DishOrderSummary_Dish]
GO
/****** Object:  ForeignKey [FK__DishMenu__DishID__2E1BDC42]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[DishMenu]  WITH CHECK ADD  CONSTRAINT [FK__DishMenu__DishID__2E1BDC42] FOREIGN KEY([DishID])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[DishMenu] CHECK CONSTRAINT [FK__DishMenu__DishID__2E1BDC42]
GO
/****** Object:  ForeignKey [FK__DishMenu__MenuID__2F10007B]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[DishMenu]  WITH CHECK ADD  CONSTRAINT [FK__DishMenu__MenuID__2F10007B] FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([Id])
GO
ALTER TABLE [dbo].[DishMenu] CHECK CONSTRAINT [FK__DishMenu__MenuID__2F10007B]
GO
/****** Object:  ForeignKey [FK_DishItem_Chef]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[DishItem]  WITH CHECK ADD  CONSTRAINT [FK_DishItem_Chef] FOREIGN KEY([ChefID])
REFERENCES [dbo].[Chef] ([UserID])
GO
ALTER TABLE [dbo].[DishItem] CHECK CONSTRAINT [FK_DishItem_Chef]
GO
/****** Object:  ForeignKey [FK_DishItem_Dish]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[DishItem]  WITH CHECK ADD  CONSTRAINT [FK_DishItem_Dish] FOREIGN KEY([DishID])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[DishItem] CHECK CONSTRAINT [FK_DishItem_Dish]
GO
/****** Object:  ForeignKey [FK__Ingredien__Suppl__4E88ABD4]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[IngredientItem]  WITH CHECK ADD  CONSTRAINT [FK__Ingredien__Suppl__4E88ABD4] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([Id])
GO
ALTER TABLE [dbo].[IngredientItem] CHECK CONSTRAINT [FK__Ingredien__Suppl__4E88ABD4]
GO
/****** Object:  ForeignKey [FK_IngredientItem_Ingredient]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[IngredientItem]  WITH CHECK ADD  CONSTRAINT [FK_IngredientItem_Ingredient] FOREIGN KEY([IngredientID])
REFERENCES [dbo].[Ingredient] ([Id])
GO
ALTER TABLE [dbo].[IngredientItem] CHECK CONSTRAINT [FK_IngredientItem_Ingredient]
GO
/****** Object:  ForeignKey [FK_Order_Bill]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Bill] FOREIGN KEY([BillId])
REFERENCES [dbo].[Bill] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Bill]
GO
/****** Object:  ForeignKey [FK__OrderDeta__DishI__48CFD27E]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__DishI__48CFD27E] FOREIGN KEY([DishID])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__DishI__48CFD27E]
GO
/****** Object:  ForeignKey [FK__OrderDeta__Order__534D60F1]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Order__534D60F1] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__Order__534D60F1]
GO
/****** Object:  ForeignKey [FK_IngredientDishItem_DishItem]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[IngredientDishItem]  WITH CHECK ADD  CONSTRAINT [FK_IngredientDishItem_DishItem] FOREIGN KEY([DishItemID])
REFERENCES [dbo].[DishItem] ([Id])
GO
ALTER TABLE [dbo].[IngredientDishItem] CHECK CONSTRAINT [FK_IngredientDishItem_DishItem]
GO
/****** Object:  ForeignKey [FK_IngredientDishItem_IngredientItem]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[IngredientDishItem]  WITH CHECK ADD  CONSTRAINT [FK_IngredientDishItem_IngredientItem] FOREIGN KEY([IngredientItemID])
REFERENCES [dbo].[IngredientItem] ([Id])
GO
ALTER TABLE [dbo].[IngredientDishItem] CHECK CONSTRAINT [FK_IngredientDishItem_IngredientItem]
GO
/****** Object:  ForeignKey [FK_OrderDetailDishItem_DishItem]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[OrderDetailDishItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetailDishItem_DishItem] FOREIGN KEY([DishItemId])
REFERENCES [dbo].[DishItem] ([Id])
GO
ALTER TABLE [dbo].[OrderDetailDishItem] CHECK CONSTRAINT [FK_OrderDetailDishItem_DishItem]
GO
/****** Object:  ForeignKey [FK_OrderDetailDishItem_OrderDetail]    Script Date: 04/07/2014 21:52:07 ******/
ALTER TABLE [dbo].[OrderDetailDishItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetailDishItem_OrderDetail] FOREIGN KEY([OrderDetailId])
REFERENCES [dbo].[OrderDetail] ([Id])
GO
ALTER TABLE [dbo].[OrderDetailDishItem] CHECK CONSTRAINT [FK_OrderDetailDishItem_OrderDetail]
GO
