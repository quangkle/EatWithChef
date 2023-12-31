USE [master]
GO
/****** Object:  Database [EWC]    Script Date: 04/14/2014 08:48:27 ******/
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
/****** Object:  Table [dbo].[Skill]    Script Date: 04/14/2014 08:48:30 ******/
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
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 04/14/2014 08:48:30 ******/
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
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 04/14/2014 08:48:30 ******/
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
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 04/14/2014 08:48:30 ******/
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
/****** Object:  Table [dbo].[UserProfile]    Script Date: 04/14/2014 08:48:30 ******/
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
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FullName], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (4, N'nguyenvandau', N'Nguyễn Văn Đậu', N'DauDo@gmail.com', N'0935102212', N'239 Phan Xích Long', 0, CAST(0x5C1A0B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FullName], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (5, N'nhantt2', N'Nguyễn Thành Nhân', N'nhantt2@gmail.com', N'0938228754', N'692 Lạc Long Quân', 0, CAST(0x1B190B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FullName], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (10, N'nguyen92', N'Hoàng Thế Thiện Nguyên', N'nguyenhttn@gmail.com', N'0923412390', N'Trường Sa Q3, Hồ Chí Minh', 0, CAST(0x7F170B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FullName], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (11, N'yenchi', N'Phùng Khánh Yên Chi', N'yenchi@gmail.com', N'0917333120', N'189 Cách Mạng Tháng Tám', 1, CAST(0xB21C0B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FullName], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (12, N'TuanMinh', N'Trần Minh Tuấn', N'tuanMT@gmail.com', N'0912330122', N'29 Tô Ký, Quận 12', 0, CAST(0x67880A00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FullName], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (13, N'ThangTT09', N'Trần Hữu Quốc Thắng ', N'thangtt09@yahoo.com', N'0128310298', N'593 Nguyễn Thiện Thuật, Q8', 0, CAST(0x18180B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FullName], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (15, N'HyNQ91', N'Ngô Quang Hy', N'hyhynq@gmail.com', N'0123063711', N'91 Phan Huy Ích ', 0, CAST(0xA3190B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FullName], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (16, N'KhanhNQ', N'Nguyễn Quốc Khánh', N'Khanh1829@yahoo.com', N'0998033312', N'88 Nguyễn Trãi, Q1', 0, CAST(0xCD150B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FullName], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (18, N'NguyenTrang', N'Nguyễn Thị Khánh Trang', N'TrangNT91@yahoo.com', N'0121773578', N'201 Nguyễn Thị Minh Khai, Q1', 1, CAST(0x58170B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FullName], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (19, N'NNNgan', N'Ngô Diệu Ngân', N'Ngan0918@gmail.com', N'0976666542', N'196 Trần Quốc Toản', 1, CAST(0xC6190B00 AS Date), 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FullName], [Email], [Telephone], [Address], [IsFemale], [DateOfBirth], [IsActive]) VALUES (21, N'MyMy', N'Trương Thị Hoài My', N'MyMy1908@yahoo.com', N'0937109103', N'08 Nguyễn Thiện Thuật', 1, CAST(0x17140B00 AS Date), 1)
SET IDENTITY_INSERT [dbo].[UserProfile] OFF
/****** Object:  Table [dbo].[Tag]    Script Date: 04/14/2014 08:48:30 ******/
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
/****** Object:  Table [dbo].[SupplierCategory]    Script Date: 04/14/2014 08:48:30 ******/
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
/****** Object:  Table [dbo].[Menu]    Script Date: 04/14/2014 08:48:30 ******/
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
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (13, N'Menu 05/04', N'nothing', CAST(0x0000A30400000000 AS DateTime), 1, CAST(0x0000A304011826C0 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (14, N'Menu 06/04', N'nothing', CAST(0x0000A30500000000 AS DateTime), 1, CAST(0x0000A305011826C0 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (15, N'Menu 07/04', N'nothing', CAST(0x0000A30600000000 AS DateTime), 1, CAST(0x0000A306010FE960 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (16, N'Menu 09/04', N'nothing', CAST(0x0000A30800000000 AS DateTime), 1, CAST(0x0000A308011826C0 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (17, N'Menu 08/04', N'nothing', CAST(0x0000A30700000000 AS DateTime), 1, CAST(0x0000A30701140810 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (18, N'Menu 10/04', N'nothing', CAST(0x0000A30C00000000 AS DateTime), 1, CAST(0x0000A3090107AC00 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (19, N'Menu 11/04', N'nothing', CAST(0x0000A30D00000000 AS DateTime), 1, CAST(0x0000A30A0107AC00 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (20, N'Menu 12/04', N'nothing', CAST(0x0000A30E00000000 AS DateTime), 1, CAST(0x0000A30B00F73140 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Description], [ApplyDate], [IsAvailable], [ClosedTimeSession]) VALUES (21, N'Menu 13/04', N'nothing', CAST(0x0000A30F00000000 AS DateTime), 1, CAST(0x0000A30C0128A180 AS DateTime))
SET IDENTITY_INSERT [dbo].[Menu] OFF
/****** Object:  Table [dbo].[IngredientCategory]    Script Date: 04/14/2014 08:48:30 ******/
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
/****** Object:  Table [dbo].[Chef]    Script Date: 04/14/2014 08:48:30 ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 04/14/2014 08:48:30 ******/
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
/****** Object:  Table [dbo].[DishCategory]    Script Date: 04/14/2014 08:48:30 ******/
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
/****** Object:  Table [dbo].[Dish]    Script Date: 04/14/2014 08:48:30 ******/
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
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (1, N'Hải sản chiên giòn với pho mát', N'hai-san-chien-gion-voi-pho-mat', 1, 1, N'/Images/Dish/1-Crispy-Seafood-Mac-Cheese.jpg', 50000, N'Tofu is marinated in garlic, ginger, and soy sauce over night. Then tossed in flour & corn starch mix and deep fried. Green beans are blanched and tossed in spicy peanut sauce.', N'not now', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (2, N'Gà ướp cay', N'ga-uop-cay', 1, 1, N'/Images/Dish/2-Spicy-Chicken-Andouille-Gumbo.jpg', 60000, N'Nullam id dolor id niltricies vehicula ut id elit. osuer e consectetu. Aliquauam sollicitudin hendrerit.', N'not now', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (3, N'Thịt lợn hun khói Kalua', N'thit-lon-hun-khoi-kalua', 1, 1, N'/Images/Dish/3-Ka-Lua-Style-Smoked-Pork-Sirloin.jpg', 40000, N'ICROWAVE: Heat the rest of the items for 2-3 minutes (timing varies depending on your microwave) or until hot. Pour the sauce to Tofu or dip in.', N'not now', 4, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (4, N'Bít tết Brussels', N'bit-tet-brussels', 1, 1, N'/Images/Dish/4-Grilled-Flap-Steak-Brussels.jpg', 65000, N'Pork shoulder braised with sweet Spanish peppers, fennel and porcini mushrooms until very tender. Finished with baby kale, butter and Parmesan to finish.', N'not now', 4, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (5, N'Gà nướng Teriyaki', N'ga-nuong-teriyaki', 1, 1, N'/Images/Dish/5-Grilled-Chicken-Teriyaki.jpg', 37000, N'Ultimate Japanese comfort food on cold winter nights! Chicken curry is cooked with yellow onions, carrots, bonito and kombu dashi. Chewy Udon noodles are done al dente. A bit of spice in curry keeps you warm all night.', N'not now', 4, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (6, N'Thịt hầm khoai tây Nikujaga', N'thit-ham-khoai-tay-nikujaga', 1, 1, N'/Images/Dish/6-Nikujaga.jpg', 48000, N'Grilled Atlantic salmon (seasoned with 70% extra virgin olive oil, 30% corn oil and kosher salt), Italian mixed greens from County Line Harvest, organic chickpeas (garbanzo beans), and organic chioggia beets (seasoned with maldon sea salt & extra virgin olive oil). Served with chunky citrus vinaigrette.', N'not now', 5, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (7, N'Thịt lợn ướp Chermoula', N'thit-lon-uop-chermoula', 1, 1, N'/Images/Dish/7-Chermoula-Marinated-Pork-Shoulder.jpg', 52000, N'Chicken is lightly pan fried in oil. Mushroom sauce is made with sautéed mushrooms, chicken stock, herbs, garlic & marsala.', N'not now', 4.5, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (8, N'Sandwich gà xà lách cùng quả anh đào', N'sandwich-ga-xa-lach-cung-qua-anh-dao', 1, 1, N'/Images/Dish/8-Chicken-Cherry-Salad-Sandwich.jpg', 53, N'sdsd', N'dsds', 4.5, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (9, N'Falafel nhồi cà tím', N'falafel-nhoi-ca-tim', 1, 1, N'/Images/Dish/9-Falafel-Stuffed-Eggplant.jpg', 32, N'asdad', N'dadad', 4, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (10, N'Gà nướng với Chimichurri', N'ga-nuong-voi-chimichurri', 1, 1, N'/Images/Dish/10-Roast-Chicken-with-Chimichurri.jpg', 45, N'assaa', N'assasa', 5, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (11, N'Farfalle với kem Sage-Cashew', N'farfalle-voi-kem-sage-cashew', 1, 1, N'/Images/Dish/11-Farfalle-with-Sage-Cashew-Cream.jpg', 434, N'sasas', N'assasas', 4, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (12, N'Rượu vang đỏ om thịt bò Bourguignon', N'ruou-van-do-om-thit-bo-bourguignon', 1, 1, N'/Images/Dish/12-Red-Wine-Braised-Beef-Bourguignon.jpg', 43, N'dsdsd', N'dsdsd', 5, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (13, N'Thịt cừu và phô mai dê Moussaka', N'thit-cuu-va-pho-mai-de-moussaka', 1, 1, N'/Images/Dish/13-Lamb-and-Goat-Cheese-Moussaka.jpg', 43, N'dsasa', N'das', 4, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (14, N'Cá hồi nướng Panzanella', N'ca-hoi-nuong-panzanella', 1, 1, N'/Images/Dish/14-Grilled-Salmon-Winter-Panzanella.jpg', 43, N'asa', N'sasa', 4, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (15, N'Cá hồi Skuna cùng súp Miso', N'ca-hoi-skuna-cung-sup-miso', 2, 1, N'/Images/Dish/15-Skuna-Bay-Salmon-and-Miso-Soup.jpg', 45, N'assaas', N'sasas', 4, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (16, N'Củ cải đường rang với Quả óc chó', N'cu-cai-duong-rang-voi-qua-oc-cho', 2, 1, N'/Images/Dish/16-Roasted-Beets-with-Walnuts.jpg', 45, N'asasa', N'sasas', 4, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (17, N'Thơm chiên Brussels', N'thom-chien-brussels', 2, 1, N'/Images/Dish/17-Tangy-Fried-Brussels-Sprouts.jpg', 45, N'asasa', N'sasas', 4, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (18, N'Đậu lăng, đậu xanh và Feta Salad', N'dau-lang-dau-xanh-va-feta-salad', 2, 1, N'/Images/Dish/18-Lentil-Chickpea-and-Feta-Salad.jpg', 56, N'sas', N'jhj', 5, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (19, N'Bông cải xanh và pho mát', N'bong-cai-xanh-va-xa-lach-xanh', 2, 1, N'/Images/Dish/19-Broccoli-Cheddar-Mac-and-Cheese.jpg', 54, N'asas', N'sasas', 4, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (20, N'Rau diếp và xà lách xanh', N'rau-diep-va-xa-lach-xanh', 2, 1, N'/Images/Dish/20-Little-Gem-Lettuce-Green-Salad.jpg', 67, N'sas', N'sasa', 4, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (21, N'Cơm thịt gà  Chowder', N'com-thit-ga-chowder', 2, 1, N'/Images/Dish/21-Chicken-and-Rice-Chowder.jpg', 78, N'sasas', N'sasas', 4, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (22, N'Salad với tỏi Ceasar', N'salad-voi-toi-caesar', 2, 1, N'/Images/Dish/22-Caesar-Salad-with-Garlic-Croutons.jpg', 78, N'sasas', N'sasas', 5, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (23, N'Dâu tây', N'dau-tay', 2, 1, N'/Images/Dish/23-Local-Strawberries.jpg', 43, N'dsdsd', N'dsds', 5, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (24, N'Khoai tây rang Hy Lạp', N'khoai-tay-rang-hy-lap', 2, 1, N'/Images/Dish/24-Greek-Style-Roasted-Potatoes.jpg', 43, N'sasas', N'sasas', 4, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (25, N'Atiso nướng Castroville', N'atiso-nuong-castroville', 2, 1, N'/Images/Dish/25-Grilled-Castroville-Artichokes.jpg', 43, N'sdasas', N'sasas', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (26, N'Súp cà chua rang', N'sup-ca-chua-rang', 2, 1, N'/Images/Dish/26-Roasted-Tomato-Soup.jpg', 44, N'asasas', N'saasas', 4, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (27, N'Súp khoai tây, tỏi xanh', N'sup-khoai-tay-toi-xanh', 2, 1, N'/Images/Dish/27-Potato-Leek-Green-Garlic-Soup.jpg', 44, N'asasa', N'sasa', 4, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (28, N'Hương thảo và muối biển Focaccia', N'huong-thao-va-muoi-bien-focaccia', 2, 1, N'/Images/Dish/28-Rosemary-and-Sea-Salt-Focaccia.jpg', 46, N'sasas', N'sasas', 5, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (29, N'Pho mát quảng trường Nicasio', N'pho-mat-quang-truong-nicasio', 2, 1, N'/Images/Dish/29-Nicasio-Square-Cheese-Plate.jpg', 67, N'assas', N'assas', 4, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (30, N'Cocktail tôm California', N'cocktail-tom-california', 2, 1, N'/Images/Dish/30-California-Shrimp-Cocktail.jpg', 78, N'sass', N'assas', 4, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (31, N'Súp cà rốt Masala', N'sup-ca-rot-masala', 2, 1, N'/Images/Dish/31-Spiced-Carrot-Masala-Soup.jpg', 76, N'sasa', N'sasas', 5, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (32, N'Củ cải rang và phô mai dê', N'cu-cai-rang-va-pho-mat-de', 2, 1, N'/Images/Dish/32-Roasted-Beet-Goat-Cheese-Salad.jpg', 77, N'sasa', N'saasas', 4, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (33, N'Khoai tây nướng cho trẻ em', N'khoai-tay-nuong-cho-tre-em', 3, 1, N'/Images/Dish/33-Kids-Loaded-Baked-Potato.jpg', 78, N'sasa', N'sasa', 4, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (34, N'Đùi gà nướng', N'dui-ga-nuong', 3, 1, N'/Images/Dish/34-Roasted-Chicken-Drumstick.jpg', 77, N'asas', N'assas', 5, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (35, N'Bánh kem bơ vị Caremel', N'banh-kem-bo-vi-caremel', 4, 1, N'/Images/Dish/35-Salted-Caramel-Buttercream-Cake.jpg', 78, N'sasas', N'assas', 4, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (36, N'Bánh nướng cam Theda', N'banh-nuong-cam-theda', 4, 1, N'/Images/Dish/36-Theda-Orange-Cranberry-Scone.jpg', 89, N'sasa', N'sasas', 5, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (37, N'Bánh Sô cô la 3 tầng', N'banh-so-co-la-3-tang', 4, 1, N'/Images/Dish/37-Triple-Play-Chocolate-Pudding.jpg', 90, N'sas', N'hjhj', 4, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (38, N'Bánh ngọt bơ đậu phộng', N'banh-ngot-bo-dau-phong', 4, 1, N'/Images/Dish/38-Peanut-Butter-Cup-Cookie.jpg', 89, N'sasa', N'sasas', 5, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (39, N'Mascarpone Brownie', N'mascarpone-brownie', 4, 1, N'/Images/Dish/39-Mascarpone-Brownie.jpg', 90, N'assas', N'sasas', 5, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (40, N'Bánh Bran Muffin', N'banh-bran-muffin', 4, 1, N'/Images/Dish/40-Blueberry-Bran-Muffin.jpg', 80, N'sas', N'sasas
jjklk', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (41, N'Bánh mì táo yến mạch Zucchini', N'banh-mi-tao-yen-mach-zucchini', 4, 1, N'/Images/Dish/41-Zucchini-Apple-Oat Bread.jpg', 89, N'sas', N'sasa', 5, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (42, N'Bánh brownie Mê xi cô', N'banh-brownie-me-xi-co', 4, 1, N'/Images/Dish/42-Mexican-Chocolate-Brownie.jpg', 90, N'sasas', N'sasas', 4, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (43, N'Bánh cupcake', N'banh-cupcake', 4, 1, N'/Images/Dish/43-Dirty-Blonde.jpg', 99, N'sasas', N'sasas', 5, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (44, N'Bánh sô cô la cổ điển', N'banh-so-co-la-co-dien', 4, 1, N'/Images/Dish/44-Classic-Chocolate-Chip-Cookie.jpg', 80, N'sasas', N'sasas', 5, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (45, N'Bánh sô cô la mặn ngọt', N'banh-so-co-la-man-ngot', 4, 1, N'/Images/Dish/45-Salty-Sweet-Chocolate-Chip-Cookie.jpg', 80, N'sasa', N'sasas', 4, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (46, N'G.Reedy Sauvignon Blanc', N'greedy-sauvignon-blanc', 5, 1, N'/Images/Dish/46-GReedy-Sauvignon-Blanc.jpg', 89, N'sasas', N'sasas', 5, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (47, N'La Merika Cabernet Sauvignon', N'la-merika-cabernet-sauvignon', 5, 1, N'/Images/Dish/47-La-Merika-Cabernet-Sauvignon.jpg', 8, N'asas', N'sasas', 5, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (48, N'Cafe Tesora', N'cafe-tesora', 5, 1, N'/Images/Dish/48-Tesora-Blend.jpg', 9, N'sasas', N'sasass', 5, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (49, N'Cafe Jacob''s Wonderbar', N'cafe-jacobs-wonderbar', 5, 1, N'/Images/Dish/49-Jacobs-Wonderbar.jpg', 9, N'ssasa', N'sasa', 5, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (50, N'Rượu tuyết Junmai', N'ruou-tuyet-junmai', 5, 1, N'/Images/Dish/50-Tozai-Snow-Maiden-Sake-Junmai.jpg', 9, N'sasas', N'sasss', 4, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (51, N'Rượu Prosecco Brut', N'ruou-prosecco-brut', 5, 1, N'/Images/Dish/51-Zefiro-Prosecco-Brut-NV.jpg', 9, N'sasas', N'sassasa', 5, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (52, N'Rượu Ace Joker', N'ruou-ace-joker', 5, 1, N'/Images/Dish/9-Falafel-Stuffed-Eggplant.jpg', 10, N'asasas', N'sasass', 0, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (53, N'Cafe đá Gusto', N'cafe-da-gusto', 5, 1, N'/Images/Dish/53-Gusto-Iced-Coffee.jpg', 10, N'sassa', N'sasas', 5, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (54, N'Nước ép củ cải đường', N'nuoc-ep-cu-cai-duong', 5, 1, N'/Images/Dish/54-Freshly-Pressed-Beet-Juice.jpg', 10, N'sasas', N'sasas', 5, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (55, N'Nước cam ép', N'nuoc-cam-ep', 5, 1, N'/Images/Dish/55-Freshly-Pressed-Orange-Juice.jpg', 12, N'assasa', N'sassa', 5, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (56, N'Nước ép cà rốt', N'nuoc-ep-ca-rot', 5, 1, N'/Images/Dish/56-Freshly-Pressed-Carrot-Juice.jpg', 11, N'sasas', N'assas', 5, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (57, N'Nước ép cải xoăn', N'nuoc-ep-cai-xoan', 5, 1, N'/Images/Dish/57-Freshly-Pressed-Kale-Juice.jpg', 11, N'assa', N'sasasa', 5, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (58, N'Sữa Nut hỗn hợp', N'sua-nut-hon-hop', 5, 1, N'/Images/Dish/58-Mixed-Nut-Milk.jpg', 11, N'asas', N'assas', 4, 1, 0, 0)
INSERT [dbo].[Dish] ([Id], [Name], [Url], [CategoryID], [ChefID], [Image], [Price], [Description], [CookingGuide], [Rate], [IsAvailable], [NumberOfRate], [NumberOfLike]) VALUES (59, N'Sữa hạnh nhân', N'sua-hanh-nhan', 5, 1, N'/Images/Dish/59-Classic-Almond-Milk.jpg', 11, N'ass', N'sassa', 5, 1, 0, 0)
SET IDENTITY_INSERT [dbo].[Dish] OFF
/****** Object:  Table [dbo].[ChefSkill]    Script Date: 04/14/2014 08:48:30 ******/
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
/****** Object:  Table [dbo].[Bill]    Script Date: 04/14/2014 08:48:30 ******/
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
SET IDENTITY_INSERT [dbo].[Bill] OFF
/****** Object:  Table [dbo].[Ingredient]    Script Date: 04/14/2014 08:48:30 ******/
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
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (1, N'Macaroni', 6, N'/Images/Ingredient/macaroni_nui.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (2, N'Sữa tươi', 7, N'/Images/Ingredient/Sua_tuoi.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (3, N'Cua xanh', 3, N'/Images/Ingredient/Cua_Xanh.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (4, N'Sò', 3, N'/Images/Ingredient/So.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (5, N'Tôm', 3, N'/Images/Ingredient/Tom.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (6, N'Pho mát', 7, N'/Images/Ingredient/Pho_mat.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (7, N'Kem Whipping ', 7, N'/Images/Ingredient/Kem_whipped.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (8, N'Mỳ ý trắng', 6, N'/Images/Ingredient/My_Y_Trang.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (9, N'Củ hành', 4, N'/Images/Ingredient/Cu_Hanh.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (10, N'Muối Kosher', 7, N'/Images/Ingredient/Muoi_Korser.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (11, N'Thịt Gà', 1, N'/Images/Ingredient/thitga.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (12, N'Gạo lức', 8, N'/Images/Ingredient/gao_lut.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (13, N'Xúc xích heo', 9, N'/Images/Ingredient/xuc_xich_heo.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (14, N'Đậu đỏ', 8, N'/Images/Ingredient/Dau_do.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (15, N'Bột năng', 7, N'/Images/Ingredient/Bot_Nang.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (16, N'Cần tây', 4, N'/Images/Ingredient/Can_tay.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (17, N'Bơ', 7, N'/Images/Ingredient/Bo.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (18, N'Ớt bột', 7, N'/Images/Ingredient/Ot_bot.png', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (19, N'Tỏi', 7, N'/Images/Ingredient/Toi.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (20, N'Thì là', 4, N'/Images/Ingredient/Thi_La.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (21, N'Rau thơm', 4, N'/Images/Ingredient/Rau_Thom.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (22, N'Ớt tươi', 7, N'/Images/Ingredient/Ot_tuoi.gif', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (23, N'Thịt heo thăn', 1, N'/Images/Ingredient/thit_heo_than.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (24, N'Trái Thơm', 4, N'/Images/Ingredient/Trai_thom.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (25, N'Đường trắng', 7, N'/Images/Ingredient/Duong_Trang.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (26, N'Tamari', 7, N'/Images/Ingredient/Tamari.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (27, N'Dầu ăn', 7, N'/Images/Ingredient/dau-an.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (28, N'Vừng', 7, N'/Images/Ingredient/Vung.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (29, N'Xà lách', 4, N'/Images/Ingredient/Xa_Lach.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (30, N'Gừng', 4, N'/Images/Ingredient/gung.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (31, N'Thịt bò', 1, N'/Images/Ingredient/ThitBo.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (32, N'Cải Brussels ', 4, N'/Images/Ingredient/Cai_Brusseles.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (33, N'Bột ngũ cốc', 6, N'/Images/Ingredient/Bot_ngu_coc.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (34, N'Chanh', 7, N'/Images/Ingredient/chanh.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (35, N'Couscous', 8, N'/Images/Ingredient/couscous.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (36, N'Trái bơ', 4, N'/Images/Ingredient/Trai_Bo.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (37, N'Rau diếp cá', 4, N'/Images/Ingredient/Rau_Diep_Ca.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (38, N'Khoai tây', 4, N'/Images/Ingredient/khoai-tay-2.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (39, N'Gạo trắng', 8, N'/Images/Ingredient/gao_trang.png', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (40, N'Tương cà', 7, N'/Images/Ingredient/tuong_ca.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (41, N'Cà rốt', 4, N'/Images/Ingredient/Ca_rot.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (42, N'Nho khô vàng', 7, N'/Images/Ingredient/Nho_kho_vang.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (43, N'Hạt thông', 4, N'/Images/Ingredient/Hat_thong.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (44, N'Dầu cải', 7, N'/Images/Ingredient/dui ga.jpg', 0, 0)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (45, N'Bánh mỳ lát', 9, N'/Images/Ingredient/banh_my_lat.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (46, N'Quả mơ khô', 4, N'/Images/Ingredient/qua_mo_kho.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (47, N'Sốt Mayonnaise', 7, N'/Images/Ingredient/mayonnaise.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (48, N'Pistachio nuts', 9, N'/Images/Ingredient/dui ga.jpg', 0, 0)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (49, N'Rau hẹ', 4, N'/Images/Ingredient/Rau_he.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (50, N'Cà tím', 4, N'/Images/Ingredient/Ca_tim.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (51, N'Đậu xanh', 8, N'/Images/Ingredient/dau_xanh.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (52, N'Mè', 7, N'/Images/Ingredient/Hat_me.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (53, N'Dưa leo', 4, N'/Images/Ingredient/dua_leo.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (54, N'Dầu ô liu', 7, N'/Images/Ingredient/dau_oliu.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (55, N'Rau dền', 4, N'/Images/Ingredient/rau-den-2.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (56, N'Bầu', 4, N'/Images/Ingredient/trai_bau.jpg', 1, 0)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (57, N'Dầu cải', 7, N'/Images/Ingredient/gio heo.jpg', 0, 0)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (58, N'Đậu Hà Lan', 8, N'/Images/Ingredient/dau-Ha-Lan.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (59, N'Mỳ Pasta', 8, N'/Images/Ingredient/gio heo.jpg', 1, 0)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (60, N'Bí đỏ', 4, N'/Images/Ingredient/Bi_Do.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (61, N'Hạt điều', 8, N'/Images/Ingredient/hat-dieu.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (62, N'Hành lá', 4, N'/Images/Ingredient/Hanh_la.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (63, N'Cranberries', 5, N'/Images/Ingredient/ca thu.jpg', 1, 0)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (64, N'Rượu vang đỏ', 7, N'/Images/Ingredient/ca thu.jpg', 1, 0)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (65, N'Tương cà chua', 7, N'/Images/Ingredient/tuong_ca.jpg', 0, 0)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (66, N'Nấm rơm', 4, N'/Images/Ingredient/Nam_rom.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (67, N'Thịt cừu', 1, N'/Images/Ingredient/thit-cuu.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (68, N'Trứng gà', 9, N'/Images/Ingredient/trung_ga.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (69, N'Feta Cheese', 9, N'/Images/Ingredient/ca thu.jpg', 0, 0)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (70, N'Cá hồi', 2, N'/Images/Ingredient/cahoi.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (71, N'Củ cải trắng', 4, N'/Images/Ingredient/Cu_cai_trang.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (72, N'Miso', 7, N'/Images/Ingredient/Miso.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (73, N'Cải bó xôi', 4, N'/Images/Ingredient/Cai_bo_xoi.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (74, N'Nước mắm', 7, N'/Images/Ingredient/nuoc_mam.400.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (75, N'Mướp đắng', 4, N'/Images/Ingredient/muop-dang.jpg', 1, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (76, N'Giấm trắng', 7, N'/Images/Ingredient/trung.jpg', 0, 0)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (77, N'Black walnuts', 7, N'/Images/Ingredient/Black-Walnut.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (78, N'Tương ớt', 7, N'/Images/Ingredient/Tuong_ot.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (79, N'Cam', 5, N'/Images/Ingredient/Cam.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (80, N'Thịt ba chỉ', 1, N'/Images/Ingredient/thit_ba_chi.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (81, N'Thịt chim cút', 1, N'/Images/ingredient/noimage.jpg', 0, 0)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (82, N'Cá bống', 2, N'/Images/Ingredient/ca-bong.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (83, N'Thịt Lợn', 1, N'/Images/Ingredient/Thit_lon.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (84, N'Cá trắm', 2, N'/Images/Ingredient/Ca-tram.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (85, N'Cá ngừ', 2, N'/Images/Ingredient/Ca_ngu.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (86, N'Cá Diêu Hồng', 2, N'/Images/Ingredient/ca_dieu_hong.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (87, N'Cá kèo', 2, N'/Images/Ingredient/Ca_keo.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (88, N'Cá Thu', 2, N'/Images/Ingredient/Ca_thu.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (89, N'Mực ', 3, N'/Images/Ingredient/muctuoi.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (90, N'Cua bể', 3, N'/Images/Ingredient/cua_be.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (91, N'Ghẹ Xanh', 3, N'/Images/Ingredient/ghe_xanh.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (92, N'Ghẹ Lột', 3, N'/Images/Ingredient/ghe-lot.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (93, N'Hến', 3, N'/Images/Ingredient/con_hen.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (94, N'Tôm càng xanh', 3, N'/Images/Ingredient/tom_cang_xanh.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (95, N'Tôm Hùm', 3, N'/Images/Ingredient/tom_hum.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (96, N'Tép', 3, N'/Images/Ingredient/Tep.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (97, N'Chuối', 5, N'/Images/Ingredient/Chuoi.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (98, N'Táo', 5, N'/Images/Ingredient/tao.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (99, N'Đu Đủ', 5, N'/Images/Ingredient/du_du.jpg', 0, 1)
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (100, N'Chanh Dây', 5, N'/Images/Ingredient/chanh-day.jpg', 0, 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[Ingredient] ([Id], [Name], [Category], [ImageUrl], [IsTracibility], [IsAvailable]) VALUES (101, N'Nho Xanh', 5, N'/Images/Ingredient/nho-xanh.jpg', 0, 1)
SET IDENTITY_INSERT [dbo].[Ingredient] OFF
/****** Object:  Table [dbo].[FAQ]    Script Date: 04/14/2014 08:48:30 ******/
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
/****** Object:  Table [dbo].[Supplier]    Script Date: 04/14/2014 08:48:30 ******/
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
INSERT [dbo].[Supplier] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [IsAvailable], [SupplierCategory]) VALUES (13, N'NULLCông Ty TNHH Thực Phẩm Sơn Thái', N'4 Đường Số 23, Hiệp Bình Chánh, Ho Chi Minh, Thủ Đức, Ho Chi Minh City, Viet Nam', N'0837261218', 10.8303344, 106.72442610000007, 1, 2)
INSERT [dbo].[Supplier] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [IsAvailable], [SupplierCategory]) VALUES (14, N'Công Ty TNHH Hương Liệu Phụ Gia Thực Phẩm Hồng Á', N'198 Lãnh Binh Thăng, Ho Chi Minh, Quận 11, Ho Chi Minh City, Viet Nam', N'0839627524', 10.7625585, 106.65323490000004, 1, 2)
INSERT [dbo].[Supplier] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [IsAvailable], [SupplierCategory]) VALUES (15, N'Công Ty Cổ Phần Phát Triển Nông Nghiệp Toàn Long', N'23/6 Nguyễn Ảnh Thủ, Bà Điểm, Thành phố Hồ Chí Minh, Hóc Môn, Hồ Chí Minh, Viet Nam', N'0944772277', 10.8534849, 106.60569550000002, 1, 2)
INSERT [dbo].[Supplier] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [IsAvailable], [SupplierCategory]) VALUES (16, N'Công Ty TNHH Sản Xuất Thương Mại Tân Đông', N'80 Ngô Chí Quốc, Bình Chiểu, Ho Chi Minh, Thủ Đức, Ho Chi Minh City, Viet Nam', N'0837290461', 10.876897, 106.72575110000004, 1, 2)
SET IDENTITY_INSERT [dbo].[Supplier] OFF
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 04/14/2014 08:48:30 ******/
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
/****** Object:  Table [dbo].[IngredientDish]    Script Date: 04/14/2014 08:48:30 ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 04/14/2014 08:48:30 ******/
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
SET IDENTITY_INSERT [dbo].[Order] OFF
/****** Object:  Table [dbo].[DishTag]    Script Date: 04/14/2014 08:48:30 ******/
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
/****** Object:  Table [dbo].[DishOrderSummary]    Script Date: 04/14/2014 08:48:30 ******/
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
/****** Object:  Table [dbo].[DishMenu]    Script Date: 04/14/2014 08:48:30 ******/
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
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (1, 21, 36500, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (2, 13, 36000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (3, 12, 62000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (3, 19, 62000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (3, 20, 62000, 8)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (4, 15, 55000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (4, 16, 55000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (4, 17, 55000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (5, 12, 37000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (5, 17, 37000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (5, 19, 37000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (5, 20, 45000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (6, 14, 66000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (6, 20, 48000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (7, 13, 46000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (7, 18, 46000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (7, 21, 46000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (8, 12, 38000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (8, 14, 41000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (8, 19, 38000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (9, 14, 19000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (9, 18, 19000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (10, 18, 38000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (11, 20, 24000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (12, 18, 68000, 16)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (13, 12, 71000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (13, 13, 71000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (13, 17, 71000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (13, 19, 71000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (14, 12, 45000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (14, 15, 45000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (14, 19, 45000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (14, 20, 47000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (14, 21, 52000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (15, 21, 48000, 12)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (16, 15, 19000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (16, 16, 19000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (17, 13, 19000, 35)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (17, 21, 19000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (18, 14, 18000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (18, 16, 18000, 40)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (18, 21, 18000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (19, 15, 22500, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (19, 18, 22000, 18)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (20, 12, 18000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (20, 19, 18000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (21, 15, 29000, 50)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (21, 16, 29000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (22, 12, 24000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (22, 14, 16000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (22, 17, 24000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (22, 18, 16000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (22, 19, 24000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (23, 13, 22000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (23, 21, 23000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (24, 13, 16000, 35)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (25, 15, 25000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (26, 16, 40000, 16)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (26, 18, 31000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (27, 16, 18000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (32, 12, 31000, 18)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (32, 17, 31000, 18)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (32, 19, 31000, 18)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (33, 14, 12000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (33, 17, 16000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (33, 20, 16000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (34, 13, 23000, 35)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (34, 14, 21000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (34, 17, 21000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (35, 12, 33000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (35, 19, 33000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (35, 20, 37000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (36, 13, 16000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (36, 15, 17000, 35)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (36, 18, 16000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (37, 14, 28000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (38, 14, 14000, 40)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (38, 17, 21000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (38, 18, 21000, 25)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (38, 21, 16000, 50)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (39, 13, 20000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (40, 21, 32000, 15)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (41, 13, 36000, 12)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (41, 15, 35000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (42, 18, 42000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (43, 14, 10000, 50)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (44, 12, 16000, 50)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (44, 19, 16000, 50)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (45, 16, 30000, 50)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (45, 20, 17000, 50)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (46, 13, 189000, 3)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (46, 20, 249000, 5)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (47, 15, 375000, 2)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (47, 16, 375000, 1)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (48, 13, 15000, 50)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (48, 18, 15000, 40)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (49, 14, 16500, 40)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (50, 12, 120000, 5)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (50, 17, 120000, 10)
GO
print 'Processed 100 total records'
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (50, 18, 120000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (50, 19, 120000, 5)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (51, 14, 220000, 5)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (51, 20, 315000, 5)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (53, 15, 18000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (54, 21, 15000, 40)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (55, 13, 19000, 30)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (55, 16, 21000, 40)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (55, 21, 18000, 40)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (56, 12, 17000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (56, 15, 14500, 40)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (56, 19, 17000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (56, 20, 17000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (57, 14, 13000, 40)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (58, 14, 19000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (58, 21, 22000, 10)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (59, 12, 26000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (59, 17, 26000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (59, 19, 26000, 20)
INSERT [dbo].[DishMenu] ([DishID], [MenuID], [DishPrice], [Quota]) VALUES (59, 20, 21000, 20)
/****** Object:  Table [dbo].[DishLike]    Script Date: 04/14/2014 08:48:30 ******/
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
/****** Object:  Table [dbo].[DishItem]    Script Date: 04/14/2014 08:48:30 ******/
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
/****** Object:  Table [dbo].[FAQLike]    Script Date: 04/14/2014 08:48:30 ******/
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
/****** Object:  Table [dbo].[FAQComment]    Script Date: 04/14/2014 08:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAQComment](
	[FAQCommentId] [int] NOT NULL,
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
/****** Object:  Table [dbo].[IngredientItem]    Script Date: 04/14/2014 08:48:30 ******/
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
GO
print 'Processed 100 total records'
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (105, 1, 98, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (106, 1, 99, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (107, 1, 100, 1, 1)
INSERT [dbo].[IngredientItem] ([Id], [SupplierID], [IngredientID], [IsAvailable], [IsDefaultSupplier]) VALUES (108, 1, 101, 1, 1)
SET IDENTITY_INSERT [dbo].[IngredientItem] OFF
/****** Object:  Table [dbo].[IngredientDishItem]    Script Date: 04/14/2014 08:48:30 ******/
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
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 04/14/2014 08:48:30 ******/
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
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
/****** Object:  Table [dbo].[OrderDetailDishItem]    Script Date: 04/14/2014 08:48:30 ******/
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
/****** Object:  Default [DF__webpages___IsCon__49C3F6B7]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [IsConfirmed]
GO
/****** Object:  Default [DF__webpages___Passw__4AB81AF0]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [PasswordFailuresSinceLastSuccess]
GO
/****** Object:  Default [DF_Customer_TotalOrderValue]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_TotalOrderValue]  DEFAULT ((0)) FOR [TotalOrderValue]
GO
/****** Object:  Default [DF_Dish_Url]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[Dish] ADD  CONSTRAINT [DF_Dish_Url]  DEFAULT (N'unknown') FOR [Url]
GO
/****** Object:  Default [DF_Dish_Rate]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[Dish] ADD  CONSTRAINT [DF_Dish_Rate]  DEFAULT ((0)) FOR [Rate]
GO
/****** Object:  Default [DF_Dish_NumberOfRate]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[Dish] ADD  CONSTRAINT [DF_Dish_NumberOfRate]  DEFAULT ((0)) FOR [NumberOfRate]
GO
/****** Object:  Default [DF_Dish_NumberOfLike]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[Dish] ADD  CONSTRAINT [DF_Dish_NumberOfLike]  DEFAULT ((0)) FOR [NumberOfLike]
GO
/****** Object:  Default [DF_FAQ_NumOfLike]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[FAQ] ADD  CONSTRAINT [DF_FAQ_NumOfLike]  DEFAULT ((0)) FOR [NumOfLike]
GO
/****** Object:  Default [DF_DishItem_ChefID]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[DishItem] ADD  CONSTRAINT [DF_DishItem_ChefID]  DEFAULT ((1)) FOR [ChefID]
GO
/****** Object:  Default [DF_DishItem_IsAvailable]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[DishItem] ADD  CONSTRAINT [DF_DishItem_IsAvailable]  DEFAULT ((1)) FOR [IsAvailable]
GO
/****** Object:  Default [DF_OrderDetailDishItem_Quantity]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[OrderDetailDishItem] ADD  CONSTRAINT [DF_OrderDetailDishItem_Quantity]  DEFAULT ((0)) FOR [Quantity]
GO
/****** Object:  ForeignKey [FK__Dish__Category__1B0907CE]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[Dish]  WITH CHECK ADD  CONSTRAINT [FK__Dish__Category__1B0907CE] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[DishCategory] ([Id])
GO
ALTER TABLE [dbo].[Dish] CHECK CONSTRAINT [FK__Dish__Category__1B0907CE]
GO
/****** Object:  ForeignKey [FK__Dish__ChefID__4AB81AF0]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[Dish]  WITH CHECK ADD  CONSTRAINT [FK__Dish__ChefID__4AB81AF0] FOREIGN KEY([ChefID])
REFERENCES [dbo].[Chef] ([UserID])
GO
ALTER TABLE [dbo].[Dish] CHECK CONSTRAINT [FK__Dish__ChefID__4AB81AF0]
GO
/****** Object:  ForeignKey [FK_ChefSkill_Chef]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[ChefSkill]  WITH CHECK ADD  CONSTRAINT [FK_ChefSkill_Chef] FOREIGN KEY([ChefId])
REFERENCES [dbo].[Chef] ([UserID])
GO
ALTER TABLE [dbo].[ChefSkill] CHECK CONSTRAINT [FK_ChefSkill_Chef]
GO
/****** Object:  ForeignKey [FK_ChefSkill_Skill]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[ChefSkill]  WITH CHECK ADD  CONSTRAINT [FK_ChefSkill_Skill] FOREIGN KEY([SkillId])
REFERENCES [dbo].[Skill] ([Id])
GO
ALTER TABLE [dbo].[ChefSkill] CHECK CONSTRAINT [FK_ChefSkill_Skill]
GO
/****** Object:  ForeignKey [FK_Bill_Customer]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Customer] FOREIGN KEY([UserId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Customer]
GO
/****** Object:  ForeignKey [FK__Ingredien__Categ__08EA5793]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[Ingredient]  WITH CHECK ADD  CONSTRAINT [FK__Ingredien__Categ__08EA5793] FOREIGN KEY([Category])
REFERENCES [dbo].[IngredientCategory] ([Id])
GO
ALTER TABLE [dbo].[Ingredient] CHECK CONSTRAINT [FK__Ingredien__Categ__08EA5793]
GO
/****** Object:  ForeignKey [FK_FAQ_Chef]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[FAQ]  WITH CHECK ADD  CONSTRAINT [FK_FAQ_Chef] FOREIGN KEY([ChefId])
REFERENCES [dbo].[Chef] ([UserID])
GO
ALTER TABLE [dbo].[FAQ] CHECK CONSTRAINT [FK_FAQ_Chef]
GO
/****** Object:  ForeignKey [FK_FAQ_Customer]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[FAQ]  WITH CHECK ADD  CONSTRAINT [FK_FAQ_Customer] FOREIGN KEY([UserId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[FAQ] CHECK CONSTRAINT [FK_FAQ_Customer]
GO
/****** Object:  ForeignKey [FK_Supplier_SupplierCategory]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_SupplierCategory] FOREIGN KEY([SupplierCategory])
REFERENCES [dbo].[SupplierCategory] ([Id])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_SupplierCategory]
GO
/****** Object:  ForeignKey [fk_RoleId]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
/****** Object:  ForeignKey [fk_UserId]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
GO
/****** Object:  ForeignKey [FK_IngredientDish_Dish]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[IngredientDish]  WITH CHECK ADD  CONSTRAINT [FK_IngredientDish_Dish] FOREIGN KEY([DishID])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[IngredientDish] CHECK CONSTRAINT [FK_IngredientDish_Dish]
GO
/****** Object:  ForeignKey [FK_IngredientDish_Ingredient]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[IngredientDish]  WITH CHECK ADD  CONSTRAINT [FK_IngredientDish_Ingredient] FOREIGN KEY([IngredientID])
REFERENCES [dbo].[Ingredient] ([Id])
GO
ALTER TABLE [dbo].[IngredientDish] CHECK CONSTRAINT [FK_IngredientDish_Ingredient]
GO
/****** Object:  ForeignKey [FK_Order_Bill]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Bill] FOREIGN KEY([BillId])
REFERENCES [dbo].[Bill] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Bill]
GO
/****** Object:  ForeignKey [FK__DishTag__DishID__4CA06362]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[DishTag]  WITH CHECK ADD  CONSTRAINT [FK__DishTag__DishID__4CA06362] FOREIGN KEY([DishID])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[DishTag] CHECK CONSTRAINT [FK__DishTag__DishID__4CA06362]
GO
/****** Object:  ForeignKey [FK__DishTag__TagID__619B8048]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[DishTag]  WITH CHECK ADD FOREIGN KEY([TagID])
REFERENCES [dbo].[Tag] ([Id])
GO
/****** Object:  ForeignKey [FK_DishOrderSummary_Dish]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[DishOrderSummary]  WITH CHECK ADD  CONSTRAINT [FK_DishOrderSummary_Dish] FOREIGN KEY([DishId])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[DishOrderSummary] CHECK CONSTRAINT [FK_DishOrderSummary_Dish]
GO
/****** Object:  ForeignKey [FK__DishMenu__DishID__2E1BDC42]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[DishMenu]  WITH CHECK ADD  CONSTRAINT [FK__DishMenu__DishID__2E1BDC42] FOREIGN KEY([DishID])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[DishMenu] CHECK CONSTRAINT [FK__DishMenu__DishID__2E1BDC42]
GO
/****** Object:  ForeignKey [FK__DishMenu__MenuID__2F10007B]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[DishMenu]  WITH CHECK ADD  CONSTRAINT [FK__DishMenu__MenuID__2F10007B] FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([Id])
GO
ALTER TABLE [dbo].[DishMenu] CHECK CONSTRAINT [FK__DishMenu__MenuID__2F10007B]
GO
/****** Object:  ForeignKey [FK_DishLike_Customer]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[DishLike]  WITH CHECK ADD  CONSTRAINT [FK_DishLike_Customer] FOREIGN KEY([UserId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[DishLike] CHECK CONSTRAINT [FK_DishLike_Customer]
GO
/****** Object:  ForeignKey [FK_DishLike_Dish]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[DishLike]  WITH CHECK ADD  CONSTRAINT [FK_DishLike_Dish] FOREIGN KEY([DishId])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[DishLike] CHECK CONSTRAINT [FK_DishLike_Dish]
GO
/****** Object:  ForeignKey [FK_DishItem_Chef]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[DishItem]  WITH CHECK ADD  CONSTRAINT [FK_DishItem_Chef] FOREIGN KEY([ChefID])
REFERENCES [dbo].[Chef] ([UserID])
GO
ALTER TABLE [dbo].[DishItem] CHECK CONSTRAINT [FK_DishItem_Chef]
GO
/****** Object:  ForeignKey [FK_DishItem_Dish]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[DishItem]  WITH CHECK ADD  CONSTRAINT [FK_DishItem_Dish] FOREIGN KEY([DishID])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[DishItem] CHECK CONSTRAINT [FK_DishItem_Dish]
GO
/****** Object:  ForeignKey [FK_FAQLike_Customer]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[FAQLike]  WITH CHECK ADD  CONSTRAINT [FK_FAQLike_Customer] FOREIGN KEY([UserId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[FAQLike] CHECK CONSTRAINT [FK_FAQLike_Customer]
GO
/****** Object:  ForeignKey [FK_FAQLike_FAQ]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[FAQLike]  WITH CHECK ADD  CONSTRAINT [FK_FAQLike_FAQ] FOREIGN KEY([FAQId])
REFERENCES [dbo].[FAQ] ([FAQId])
GO
ALTER TABLE [dbo].[FAQLike] CHECK CONSTRAINT [FK_FAQLike_FAQ]
GO
/****** Object:  ForeignKey [FK_FAQComment_FAQ]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[FAQComment]  WITH CHECK ADD  CONSTRAINT [FK_FAQComment_FAQ] FOREIGN KEY([FAQId])
REFERENCES [dbo].[FAQ] ([FAQId])
GO
ALTER TABLE [dbo].[FAQComment] CHECK CONSTRAINT [FK_FAQComment_FAQ]
GO
/****** Object:  ForeignKey [FK_FAQComment_FAQComment]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[FAQComment]  WITH CHECK ADD  CONSTRAINT [FK_FAQComment_FAQComment] FOREIGN KEY([ParentComment])
REFERENCES [dbo].[FAQComment] ([FAQCommentId])
GO
ALTER TABLE [dbo].[FAQComment] CHECK CONSTRAINT [FK_FAQComment_FAQComment]
GO
/****** Object:  ForeignKey [FK_FAQComment_UserProfile]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[FAQComment]  WITH CHECK ADD  CONSTRAINT [FK_FAQComment_UserProfile] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[FAQComment] CHECK CONSTRAINT [FK_FAQComment_UserProfile]
GO
/****** Object:  ForeignKey [FK__Ingredien__Suppl__4E88ABD4]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[IngredientItem]  WITH CHECK ADD  CONSTRAINT [FK__Ingredien__Suppl__4E88ABD4] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([Id])
GO
ALTER TABLE [dbo].[IngredientItem] CHECK CONSTRAINT [FK__Ingredien__Suppl__4E88ABD4]
GO
/****** Object:  ForeignKey [FK_IngredientItem_Ingredient]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[IngredientItem]  WITH CHECK ADD  CONSTRAINT [FK_IngredientItem_Ingredient] FOREIGN KEY([IngredientID])
REFERENCES [dbo].[Ingredient] ([Id])
GO
ALTER TABLE [dbo].[IngredientItem] CHECK CONSTRAINT [FK_IngredientItem_Ingredient]
GO
/****** Object:  ForeignKey [FK_IngredientDishItem_DishItem]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[IngredientDishItem]  WITH CHECK ADD  CONSTRAINT [FK_IngredientDishItem_DishItem] FOREIGN KEY([DishItemID])
REFERENCES [dbo].[DishItem] ([Id])
GO
ALTER TABLE [dbo].[IngredientDishItem] CHECK CONSTRAINT [FK_IngredientDishItem_DishItem]
GO
/****** Object:  ForeignKey [FK_IngredientDishItem_IngredientItem]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[IngredientDishItem]  WITH CHECK ADD  CONSTRAINT [FK_IngredientDishItem_IngredientItem] FOREIGN KEY([IngredientItemID])
REFERENCES [dbo].[IngredientItem] ([Id])
GO
ALTER TABLE [dbo].[IngredientDishItem] CHECK CONSTRAINT [FK_IngredientDishItem_IngredientItem]
GO
/****** Object:  ForeignKey [FK__OrderDeta__DishI__48CFD27E]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__DishI__48CFD27E] FOREIGN KEY([DishID])
REFERENCES [dbo].[Dish] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__DishI__48CFD27E]
GO
/****** Object:  ForeignKey [FK__OrderDeta__Order__534D60F1]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Order__534D60F1] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__Order__534D60F1]
GO
/****** Object:  ForeignKey [FK_OrderDetailDishItem_DishItem]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[OrderDetailDishItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetailDishItem_DishItem] FOREIGN KEY([DishItemId])
REFERENCES [dbo].[DishItem] ([Id])
GO
ALTER TABLE [dbo].[OrderDetailDishItem] CHECK CONSTRAINT [FK_OrderDetailDishItem_DishItem]
GO
/****** Object:  ForeignKey [FK_OrderDetailDishItem_OrderDetail]    Script Date: 04/14/2014 08:48:30 ******/
ALTER TABLE [dbo].[OrderDetailDishItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetailDishItem_OrderDetail] FOREIGN KEY([OrderDetailId])
REFERENCES [dbo].[OrderDetail] ([Id])
GO
ALTER TABLE [dbo].[OrderDetailDishItem] CHECK CONSTRAINT [FK_OrderDetailDishItem_OrderDetail]
GO
