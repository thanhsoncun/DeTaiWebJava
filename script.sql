USE [master]
GO
/****** Object:  Database [qlvemaybay]    Script Date: 10/18/2017 7:09:44 PM ******/
CREATE DATABASE [qlvemaybay]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'qlvemaybay', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\qlvemaybay.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'qlvemaybay_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\qlvemaybay_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [qlvemaybay] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qlvemaybay].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qlvemaybay] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qlvemaybay] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qlvemaybay] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qlvemaybay] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qlvemaybay] SET ARITHABORT OFF 
GO
ALTER DATABASE [qlvemaybay] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [qlvemaybay] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qlvemaybay] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qlvemaybay] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qlvemaybay] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qlvemaybay] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qlvemaybay] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qlvemaybay] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qlvemaybay] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qlvemaybay] SET  DISABLE_BROKER 
GO
ALTER DATABASE [qlvemaybay] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qlvemaybay] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qlvemaybay] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qlvemaybay] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qlvemaybay] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qlvemaybay] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qlvemaybay] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qlvemaybay] SET RECOVERY FULL 
GO
ALTER DATABASE [qlvemaybay] SET  MULTI_USER 
GO
ALTER DATABASE [qlvemaybay] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qlvemaybay] SET DB_CHAINING OFF 
GO
ALTER DATABASE [qlvemaybay] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [qlvemaybay] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [qlvemaybay] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'qlvemaybay', N'ON'
GO
USE [qlvemaybay]
GO
/****** Object:  Table [dbo].[ChuyenBay]    Script Date: 10/18/2017 7:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenBay](
	[MaCB] [int] IDENTITY(1,1) NOT NULL,
	[NgayDi] [nchar](10) NULL,
	[NgayDen] [nchar](10) NULL,
	[SLHKHT] [int] NULL,
	[SLHKTD] [int] NULL,
	[MaTB] [nchar](10) NULL,
 CONSTRAINT [PK_ChuyenBay] PRIMARY KEY CLUSTERED 
(
	[MaCB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DiaDiem]    Script Date: 10/18/2017 7:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaDiem](
	[MaDD] [nchar](10) NOT NULL,
	[TenDD] [nvarchar](50) NULL,
	[TenSB] [nvarchar](50) NULL,
 CONSTRAINT [PK_Điaiem] PRIMARY KEY CLUSTERED 
(
	[MaDD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 10/18/2017 7:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[Email] [nvarchar](50) NULL,
	[NgayTao] [datetime] NOT NULL,
	[TrangThai] [nvarchar](50) NULL,
	[MaCB] [int] NOT NULL,
	[Gia] [int] NULL,
	[CMND] [nchar](12) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HangHangKhong]    Script Date: 10/18/2017 7:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangHangKhong](
	[MaHHK] [nvarchar](50) NOT NULL,
	[TenHHK] [nvarchar](50) NULL,
 CONSTRAINT [PK_HangHangKhong] PRIMARY KEY CLUSTERED 
(
	[MaHHK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoanUser]    Script Date: 10/18/2017 7:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoanUser](
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[HoTen] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[CMND] [nchar](12) NULL,
	[SDT] [nchar](11) NULL,
	[DiaChi] [nvarchar](100) NULL,
 CONSTRAINT [PK_TaiKhoanUser] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThongTinHanhKhach]    Script Date: 10/18/2017 7:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinHanhKhach](
	[HoTen] [nvarchar](50) NULL,
	[CMND] [nchar](12) NOT NULL,
	[SDT] [nchar](11) NULL,
	[HanhLy] [int] NULL,
	[LoaiVe] [nvarchar](50) NULL,
	[MaCB] [int] NOT NULL,
	[DiaChi] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TuyenBay]    Script Date: 10/18/2017 7:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TuyenBay](
	[MaTB] [nchar](10) NOT NULL,
	[MaDi] [nchar](10) NULL,
	[MaDen] [nchar](10) NULL,
	[GioDi] [time](0) NULL,
	[GioDen] [time](0) NULL,
	[MaHHK] [nvarchar](50) NULL,
	[GiaThuong] [nchar](10) NULL,
	[GiaVIP] [nchar](10) NULL,
 CONSTRAINT [PK_TuyenBay] PRIMARY KEY CLUSTERED 
(
	[MaTB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ChuyenBay] ON 

INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (1130, N'2017-10-27', N'2017-10-27', 150, 100, N'HNAHUIBL2 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (1131, N'2017-10-27', N'2017-10-27', 149, 100, N'HNAHUIVBL1')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (1132, N'2017-10-27', N'2017-10-27', 150, 100, N'HNAHUIVJ1 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (1133, N'2017-10-27', N'2017-10-27', 150, 100, N'HNAHUIVJ2 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (1134, N'2017-10-27', N'2017-10-27', 150, 100, N'HNAHUIVNA1')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (1135, N'2017-10-27', N'2017-10-27', 150, 100, N'HNAHUIVNA2')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (1136, N'2017-10-20', N'2017-10-20', 150, 100, N'HNAHUIBL2 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (1137, N'2017-10-20', N'2017-10-20', 149, 100, N'HNAHUIVBL1')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (1138, N'2017-10-20', N'2017-10-20', 150, 100, N'HNAHUIVJ1 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (1139, N'2017-10-20', N'2017-10-20', 150, 100, N'HNAHUIVJ2 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (1140, N'2017-10-20', N'2017-10-20', 149, 100, N'HNAHUIVNA1')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (1141, N'2017-10-20', N'2017-10-20', 150, 100, N'HNAHUIVNA2')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (1142, N'2017-10-17', N'2017-10-17', 150, 100, N'HNAHUIBL2 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (1143, N'2017-10-17', N'2017-10-17', 150, 100, N'HNAHUIVBL1')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (1144, N'2017-10-17', N'2017-10-17', 149, 100, N'HNAHUIVJ1 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (1145, N'2017-10-17', N'2017-10-17', 150, 100, N'HNAHUIVJ2 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (1146, N'2017-10-17', N'2017-10-17', 150, 100, N'HNAHUIVNA1')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (1147, N'2017-10-17', N'2017-10-17', 150, 100, N'HNAHUIVNA2')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2142, N'2017-10-22', N'2017-10-22', 150, 100, N'HNAHUIBL2 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2143, N'2017-10-22', N'2017-10-22', 150, 100, N'HNAHUIVBL1')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2144, N'2017-10-22', N'2017-10-22', 149, 100, N'HNAHUIVJ1 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2145, N'2017-10-22', N'2017-10-22', 150, 100, N'HNAHUIVJ2 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2146, N'2017-10-22', N'2017-10-22', 150, 100, N'HNAHUIVNA1')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2147, N'2017-10-22', N'2017-10-22', 150, 100, N'HNAHUIVNA2')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2148, N'2017-10-18', N'2017-10-18', 150, 100, N'HNAHUIBL2 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2149, N'2017-10-18', N'2017-10-18', 150, 100, N'HNAHUIVBL1')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2150, N'2017-10-18', N'2017-10-18', 150, 100, N'HNAHUIVJ1 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2151, N'2017-10-18', N'2017-10-18', 150, 100, N'HNAHUIVJ2 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2152, N'2017-10-18', N'2017-10-18', 150, 100, N'HNAHUIVNA1')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2153, N'2017-10-18', N'2017-10-18', 150, 100, N'HNAHUIVNA2')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2154, N'2017-10-19', N'2017-10-19', 150, 100, N'HNASGNBL1 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2155, N'2017-10-19', N'2017-10-19', 150, 100, N'HNASGNVJ1 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2156, N'2017-10-19', N'2017-10-19', 150, 100, N'HNASGNVNA1')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2157, N'2017-10-19', N'2017-10-19', 150, 100, N'HNASGNVNA2')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2158, N'2017-10-28', N'2017-10-28', 150, 100, N'SGNHNABL2 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2159, N'2017-10-28', N'2017-10-28', 150, 100, N'SGNHNAVBL1')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2160, N'2017-10-28', N'2017-10-28', 150, 100, N'SGNHNAVJ1 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2161, N'2017-10-28', N'2017-10-28', 150, 100, N'SGNHNAVJ2 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2162, N'2017-10-28', N'2017-10-28', 150, 100, N'SGNHNAVNA1')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2163, N'2017-10-28', N'2017-10-28', 150, 100, N'SGNHNAVNA2')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2164, N'2017-10-20', N'2017-10-20', 150, 100, N'HNASGNBL1 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2165, N'2017-10-20', N'2017-10-20', 150, 100, N'HNASGNVJ1 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2166, N'2017-10-20', N'2017-10-20', 150, 100, N'HNASGNVNA1')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2167, N'2017-10-20', N'2017-10-20', 150, 100, N'HNASGNVNA2')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2168, N'2017-10-24', N'2017-10-24', 150, 100, N'SGNHNABL2 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2169, N'2017-10-24', N'2017-10-24', 150, 100, N'SGNHNAVBL1')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2170, N'2017-10-24', N'2017-10-24', 150, 100, N'SGNHNAVJ1 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2171, N'2017-10-24', N'2017-10-24', 150, 100, N'SGNHNAVJ2 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2172, N'2017-10-24', N'2017-10-24', 150, 100, N'SGNHNAVNA1')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2173, N'2017-10-24', N'2017-10-24', 150, 100, N'SGNHNAVNA2')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2174, N'2017-10-21', N'2017-10-21', 150, 100, N'HNAVIIBL1 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2175, N'2017-10-21', N'2017-10-21', 150, 100, N'HNAVIIBL2 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (2176, N'2017-10-21', N'2017-10-21', 150, 100, N'HNAVIIVNA1')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (3174, N'2017-10-19', N'2017-10-19', 150, 100, N'HNAHUIBL2 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (3175, N'2017-10-19', N'2017-10-19', 150, 100, N'HNAHUIVBL1')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (3176, N'2017-10-19', N'2017-10-19', 150, 100, N'HNAHUIVJ1 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (3177, N'2017-10-19', N'2017-10-19', 150, 100, N'HNAHUIVJ2 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (3178, N'2017-10-19', N'2017-10-19', 150, 100, N'HNAHUIVNA1')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (3179, N'2017-10-19', N'2017-10-19', 150, 100, N'HNAHUIVNA2')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (3180, N'2017-10-24', N'2017-10-24', 150, 100, N'HNAHUIBL2 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (3181, N'2017-10-24', N'2017-10-24', 150, 100, N'HNAHUIVBL1')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (3182, N'2017-10-24', N'2017-10-24', 150, 100, N'HNAHUIVJ1 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (3183, N'2017-10-24', N'2017-10-24', 150, 100, N'HNAHUIVJ2 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (3184, N'2017-10-24', N'2017-10-24', 150, 100, N'HNAHUIVNA1')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (3185, N'2017-10-24', N'2017-10-24', 150, 100, N'HNAHUIVNA2')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (3186, N'2017-10-24', N'2017-10-24', 150, 100, N'HNAHUIBL2 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (3187, N'2017-10-24', N'2017-10-24', 150, 100, N'HNAHUIVBL1')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (3188, N'2017-10-24', N'2017-10-24', 150, 100, N'HNAHUIVJ1 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (3189, N'2017-10-24', N'2017-10-24', 150, 100, N'HNAHUIVJ2 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (3190, N'2017-10-24', N'2017-10-24', 150, 100, N'HNAHUIVNA1')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (3191, N'2017-10-24', N'2017-10-24', 150, 100, N'HNAHUIVNA2')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (3192, N'2017-10-19', N'2017-10-19', 150, 100, N'HNAVIIBL1 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (3193, N'2017-10-19', N'2017-10-19', 149, 99, N'HNAVIIBL2 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (3194, N'2017-10-19', N'2017-10-19', 150, 100, N'HNAVIIVNA1')
SET IDENTITY_INSERT [dbo].[ChuyenBay] OFF
INSERT [dbo].[DiaDiem] ([MaDD], [TenDD], [TenSB]) VALUES (N'DAD       ', N'Đà Nẵng', N'Đà Nẵng')
INSERT [dbo].[DiaDiem] ([MaDD], [TenDD], [TenSB]) VALUES (N'HNA       ', N'Hà Nội', N'Nội Bài')
INSERT [dbo].[DiaDiem] ([MaDD], [TenDD], [TenSB]) VALUES (N'HPH       ', N'Hải Phòng', N'Cát Bi')
INSERT [dbo].[DiaDiem] ([MaDD], [TenDD], [TenSB]) VALUES (N'HUI       ', N'Thừa Thiên Huế', N'Phú Bài')
INSERT [dbo].[DiaDiem] ([MaDD], [TenDD], [TenSB]) VALUES (N'PQC       ', N'Kiên Giang', N'Phú Quốc')
INSERT [dbo].[DiaDiem] ([MaDD], [TenDD], [TenSB]) VALUES (N'SGN       ', N'Hồ Chí Minh', N'Tân Sơn Nhất')
INSERT [dbo].[DiaDiem] ([MaDD], [TenDD], [TenSB]) VALUES (N'THD       ', N'Thanh Hóa', N'Thọ Xuân')
INSERT [dbo].[DiaDiem] ([MaDD], [TenDD], [TenSB]) VALUES (N'VII       ', N'Nghệ An', N'Vinh')
INSERT [dbo].[DonHang] ([Email], [NgayTao], [TrangThai], [MaCB], [Gia], [CMND]) VALUES (N'nhatanh@gmail.com', CAST(N'2017-10-10 10:13:19.000' AS DateTime), N'Chưa thanh toán', 3193, 1133000, N'176453734636')
INSERT [dbo].[HangHangKhong] ([MaHHK], [TenHHK]) VALUES (N'BL', N'Jetstar Pacific')
INSERT [dbo].[HangHangKhong] ([MaHHK], [TenHHK]) VALUES (N'VJ', N'Vietjet Air')
INSERT [dbo].[HangHangKhong] ([MaHHK], [TenHHK]) VALUES (N'VNA', N'Vietnam Airline')
INSERT [dbo].[TaiKhoanUser] ([Email], [Password], [HoTen], [GioiTinh], [CMND], [SDT], [DiaChi]) VALUES (N'hhoangna@gmail.com', N'123456A', N'Huy Hoàng', N'Nam', N'187604428   ', N'1629799774 ', N'Quận 9, Hồ Chí Minh')
INSERT [dbo].[TaiKhoanUser] ([Email], [Password], [HoTen], [GioiTinh], [CMND], [SDT], [DiaChi]) VALUES (N'nhatanh@gmail.com', N'123456A', N'Nhật Anh', N'Nữ', N'123456123   ', N'01629799774', N'Quảng Trị')
INSERT [dbo].[ThongTinHanhKhach] ([HoTen], [CMND], [SDT], [HanhLy], [LoaiVe], [MaCB], [DiaChi]) VALUES (N'Thành Định', N'176453734636', N'01847563846', 20, N'Vip', 3193, N'Hồ Chí Minh')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'HNADADVJ1 ', N'HNA       ', N'DAD       ', CAST(N'20:00:00' AS Time), CAST(N'21:30:00' AS Time), N'VJ', N'650000    ', N'800000    ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'HNAHUIBL2 ', N'HNA       ', N'HUI       ', CAST(N'15:20:00' AS Time), CAST(N'16:20:00' AS Time), N'BL', N'7890000   ', N'879000    ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'HNAHUIVBL1', N'HNA       ', N'HUI       ', CAST(N'20:25:00' AS Time), CAST(N'21:25:00' AS Time), N'BL', N'765000    ', N'876000    ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'HNAHUIVJ1 ', N'HNA       ', N'HUI       ', CAST(N'10:00:00' AS Time), CAST(N'11:00:00' AS Time), N'VJ', N'560000    ', N'690000    ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'HNAHUIVJ2 ', N'HNA       ', N'HUI       ', CAST(N'15:00:00' AS Time), CAST(N'16:00:00' AS Time), N'VJ', N'560000    ', N'690000    ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'HNAHUIVNA1', N'HNA       ', N'HUI       ', CAST(N'10:25:00' AS Time), CAST(N'11:25:00' AS Time), N'VNA', N'765000    ', N'876000    ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'HNAHUIVNA2', N'HNA       ', N'HUI       ', CAST(N'15:30:00' AS Time), CAST(N'16:30:00' AS Time), N'VNA', N'7890000   ', N'879000    ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'HNASGNBL1 ', N'HNA       ', N'SGN       ', CAST(N'10:00:00' AS Time), CAST(N'11:45:00' AS Time), N'BL', N'799000    ', N'999000    ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'HNASGNVJ1 ', N'HNA       ', N'SGN       ', CAST(N'10:30:00' AS Time), CAST(N'12:15:00' AS Time), N'VJ', N'799000    ', N'999000    ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'HNASGNVNA1', N'HNA       ', N'SGN       ', CAST(N'08:00:00' AS Time), CAST(N'09:45:00' AS Time), N'VNA', N'1499000   ', N'2000000   ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'HNASGNVNA2', N'HNA       ', N'SGN       ', CAST(N'09:00:00' AS Time), CAST(N'10:45:00' AS Time), N'VNA', N'1299000   ', N'1700000   ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'HNAVIIBL1 ', N'HNA       ', N'VII       ', CAST(N'15:00:00' AS Time), CAST(N'16:00:00' AS Time), N'BL', N'650000    ', N'1000000   ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'HNAVIIBL2 ', N'HNA       ', N'VII       ', CAST(N'10:00:00' AS Time), CAST(N'11:00:00' AS Time), N'BL', N'790000    ', N'900000    ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'HNAVIIVNA1', N'HNA       ', N'VII       ', CAST(N'16:00:00' AS Time), CAST(N'17:00:00' AS Time), N'VNA', N'599000    ', N'799000    ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'SGNHNABL2 ', N'SGN       ', N'HNA       ', CAST(N'15:20:00' AS Time), CAST(N'16:20:00' AS Time), N'BL', N'7890000   ', N'879000    ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'SGNHNAVBL1', N'SGN       ', N'HNA       ', CAST(N'20:25:00' AS Time), CAST(N'21:25:00' AS Time), N'BL', N'765000    ', N'876000    ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'SGNHNAVJ1 ', N'SGN       ', N'HNA       ', CAST(N'10:00:00' AS Time), CAST(N'11:00:00' AS Time), N'VJ', N'560000    ', N'690000    ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'SGNHNAVJ2 ', N'SGN       ', N'HNA       ', CAST(N'15:00:00' AS Time), CAST(N'16:00:00' AS Time), N'VJ', N'560000    ', N'690000    ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'SGNHNAVNA1', N'SGN       ', N'HNA       ', CAST(N'10:25:00' AS Time), CAST(N'11:25:00' AS Time), N'VNA', N'765000    ', N'876000    ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'SGNHNAVNA2', N'SGN       ', N'HNA       ', CAST(N'15:30:00' AS Time), CAST(N'16:30:00' AS Time), N'VNA', N'7890000   ', N'879000    ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'SGNVIIBL2 ', N'SGN       ', N'VII       ', CAST(N'15:20:00' AS Time), CAST(N'16:20:00' AS Time), N'BL', N'7890000   ', N'879000    ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'SGNVIIVBL1', N'SGN       ', N'VII       ', CAST(N'20:25:00' AS Time), CAST(N'21:25:00' AS Time), N'BL', N'765000    ', N'876000    ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'SGNVIIVJ1 ', N'SGN       ', N'VII       ', CAST(N'10:00:00' AS Time), CAST(N'11:00:00' AS Time), N'VJ', N'560000    ', N'690000    ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'SGNVIIVJ2 ', N'SGN       ', N'VII       ', CAST(N'15:00:00' AS Time), CAST(N'16:00:00' AS Time), N'VJ', N'560000    ', N'690000    ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'SGNVIIVNA1', N'SGN       ', N'VII       ', CAST(N'10:25:00' AS Time), CAST(N'11:25:00' AS Time), N'VNA', N'765000    ', N'876000    ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'SGNVIIVNA2', N'SGN       ', N'VII       ', CAST(N'15:30:00' AS Time), CAST(N'16:30:00' AS Time), N'VNA', N'7890000   ', N'879000    ')
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_TaiKhoanUser] FOREIGN KEY([Email])
REFERENCES [dbo].[TaiKhoanUser] ([Email])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_TaiKhoanUser]
GO
ALTER TABLE [dbo].[TuyenBay]  WITH CHECK ADD  CONSTRAINT [FK_TuyenBay_DiaDiem1] FOREIGN KEY([MaDi])
REFERENCES [dbo].[DiaDiem] ([MaDD])
GO
ALTER TABLE [dbo].[TuyenBay] CHECK CONSTRAINT [FK_TuyenBay_DiaDiem1]
GO
ALTER TABLE [dbo].[TuyenBay]  WITH CHECK ADD  CONSTRAINT [FK_TuyenBay_HangHangKhong] FOREIGN KEY([MaHHK])
REFERENCES [dbo].[HangHangKhong] ([MaHHK])
GO
ALTER TABLE [dbo].[TuyenBay] CHECK CONSTRAINT [FK_TuyenBay_HangHangKhong]
GO
/****** Object:  StoredProcedure [dbo].[trutien]    Script Date: 10/18/2017 7:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[trutien]
@sotaikhoan nchar(13),
@matkhau nchar(6),
@sotien int
as
begin
update TaiKhoanNganHang set Tien=(Tien -@sotien) where SoTaiKhoan=@sotaikhoan and MatKhau=@matkhau
end


GO
USE [master]
GO
ALTER DATABASE [qlvemaybay] SET  READ_WRITE 
GO
