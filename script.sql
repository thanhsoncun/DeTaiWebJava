USE [master]
GO
/****** Object:  Database [qlvemaybay]    Script Date: 9/29/2017 8:32:14 PM ******/
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
/****** Object:  Table [dbo].[ChuyenBay]    Script Date: 9/29/2017 8:32:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenBay](
	[MaCB] [nchar](10) NOT NULL,
	[NgayDi] [date] NULL,
	[NgayDen] [date] NULL,
	[SLHKHT] [int] NULL,
	[SLHKTD] [int] NULL,
	[MaTB] [nchar](10) NULL,
 CONSTRAINT [PK_Table1] PRIMARY KEY CLUSTERED 
(
	[MaCB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DiaDiem]    Script Date: 9/29/2017 8:32:15 PM ******/
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
/****** Object:  Table [dbo].[DonHang]    Script Date: 9/29/2017 8:32:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[Email] [nvarchar](50) NOT NULL,
	[NgayTao] [datetime] NOT NULL,
	[TrangThai] [nvarchar](50) NULL,
	[MaCB] [nchar](10) NOT NULL,
	[Gia] [int] NULL,
	[CMND] [nchar](12) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HangHangKhong]    Script Date: 9/29/2017 8:32:15 PM ******/
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
/****** Object:  Table [dbo].[TaiKhoanNganHang]    Script Date: 9/29/2017 8:32:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoanNganHang](
	[SoTaiKhoan] [nchar](13) NULL,
	[MatKhau] [nchar](6) NULL,
	[Tien] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoanUser]    Script Date: 9/29/2017 8:32:15 PM ******/
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
/****** Object:  Table [dbo].[ThongTinHanhKhach]    Script Date: 9/29/2017 8:32:15 PM ******/
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
	[MaCB] [nchar](10) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThongTinHanhKhach] PRIMARY KEY CLUSTERED 
(
	[CMND] ASC,
	[MaCB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TuyenBay]    Script Date: 9/29/2017 8:32:15 PM ******/
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
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (N'BL155     ', CAST(N'2017-09-30' AS Date), CAST(N'2017-09-30' AS Date), 108, 46, N'HNAVIIBL1 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (N'BL187     ', CAST(N'2017-10-21' AS Date), CAST(N'2017-10-21' AS Date), 100, 85, N'HNAVIIBL2 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (N'BL276     ', CAST(N'2017-10-20' AS Date), CAST(N'2017-10-20' AS Date), 118, 100, N'HNASGNBL1 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (N'VJ125     ', CAST(N'2017-10-20' AS Date), CAST(N'2017-10-20' AS Date), 132, 105, N'HNASGNVJ1 ')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (N'VNA275    ', CAST(N'2017-10-20' AS Date), CAST(N'2017-10-20' AS Date), 144, 99, N'HNASGNVNA1')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (N'VNA276    ', CAST(N'2017-10-21' AS Date), CAST(N'2017-10-21' AS Date), 120, 100, N'HNAVIIVNA1')
INSERT [dbo].[ChuyenBay] ([MaCB], [NgayDi], [NgayDen], [SLHKHT], [SLHKTD], [MaTB]) VALUES (N'VNA286    ', CAST(N'2017-10-20' AS Date), CAST(N'2017-10-20' AS Date), 147, 119, N'HNASGNVNA2')
INSERT [dbo].[DiaDiem] ([MaDD], [TenDD], [TenSB]) VALUES (N'BMV       ', N'DakLak', N'Buôn Ma Thuật')
INSERT [dbo].[DiaDiem] ([MaDD], [TenDD], [TenSB]) VALUES (N'CXR       ', N'Khánh Hòa', N'Cam Ranh')
INSERT [dbo].[DiaDiem] ([MaDD], [TenDD], [TenSB]) VALUES (N'DAD       ', N'Đà Nẵng', N'Đà Nẵng')
INSERT [dbo].[DiaDiem] ([MaDD], [TenDD], [TenSB]) VALUES (N'DLI       ', N'Lâm Đồng', N'Đà Lạt')
INSERT [dbo].[DiaDiem] ([MaDD], [TenDD], [TenSB]) VALUES (N'HNA       ', N'Hà Nội', N'Nội Bài')
INSERT [dbo].[DiaDiem] ([MaDD], [TenDD], [TenSB]) VALUES (N'HPH       ', N'Hải Phòng', N'Cát Bi')
INSERT [dbo].[DiaDiem] ([MaDD], [TenDD], [TenSB]) VALUES (N'HUI       ', N'Thừa Thiên Huế', N'Phú Bài')
INSERT [dbo].[DiaDiem] ([MaDD], [TenDD], [TenSB]) VALUES (N'PQC       ', N'Kiên Giang', N'Phú Quốc')
INSERT [dbo].[DiaDiem] ([MaDD], [TenDD], [TenSB]) VALUES (N'PXU       ', N'Gia Lai', N'Pleiku')
INSERT [dbo].[DiaDiem] ([MaDD], [TenDD], [TenSB]) VALUES (N'SGN       ', N'Hồ Chí Minh', N'Tân Sơn Nhất')
INSERT [dbo].[DiaDiem] ([MaDD], [TenDD], [TenSB]) VALUES (N'THD       ', N'Thanh Hóa', N'Thọ Xuân')
INSERT [dbo].[DiaDiem] ([MaDD], [TenDD], [TenSB]) VALUES (N'VCA       ', N'Cần Thơ', N'Cần Thơ')
INSERT [dbo].[DiaDiem] ([MaDD], [TenDD], [TenSB]) VALUES (N'VDH       ', N'Quảng Bình', N'Đồng Hới')
INSERT [dbo].[DiaDiem] ([MaDD], [TenDD], [TenSB]) VALUES (N'VII       ', N'Nghệ An', N'Vinh')
INSERT [dbo].[DonHang] ([Email], [NgayTao], [TrangThai], [MaCB], [Gia], [CMND]) VALUES (N'hhoangna@gmail.com', CAST(N'2017-09-27 11:23:46.000' AS DateTime), N'Chưa thanh toán', N'VNA275    ', 1778900, N'201462596   ')
INSERT [dbo].[DonHang] ([Email], [NgayTao], [TrangThai], [MaCB], [Gia], [CMND]) VALUES (N'hhoangna@gmail.com', CAST(N'2017-09-27 11:23:58.000' AS DateTime), N'Chưa thanh toán', N'VNA275    ', 1778900, N'201462596   ')
INSERT [dbo].[DonHang] ([Email], [NgayTao], [TrangThai], [MaCB], [Gia], [CMND]) VALUES (N'hhoangna@gmail.com', CAST(N'2017-09-27 11:25:25.000' AS DateTime), N'Chưa thanh toán', N'VNA275    ', 1778900, N'201462596   ')
INSERT [dbo].[DonHang] ([Email], [NgayTao], [TrangThai], [MaCB], [Gia], [CMND]) VALUES (N'hhoangna@gmail.com', CAST(N'2017-09-27 11:25:59.000' AS DateTime), N'Chưa thanh toán', N'VNA275    ', 1778900, N'201462596   ')
INSERT [dbo].[DonHang] ([Email], [NgayTao], [TrangThai], [MaCB], [Gia], [CMND]) VALUES (N'hhoangna@gmail.com', CAST(N'2017-09-28 09:30:16.000' AS DateTime), N'Chưa thanh toán', N'VNA275    ', 1778900, N'123123123   ')
INSERT [dbo].[DonHang] ([Email], [NgayTao], [TrangThai], [MaCB], [Gia], [CMND]) VALUES (N'hhoangna@gmail.com', CAST(N'2017-09-27 11:28:01.000' AS DateTime), N'Chưa thanh toán', N'VNA275    ', 1778900, N'201462596   ')
INSERT [dbo].[DonHang] ([Email], [NgayTao], [TrangThai], [MaCB], [Gia], [CMND]) VALUES (N'nhatanh@gmail.com', CAST(N'2017-09-28 10:21:12.000' AS DateTime), N'Đã Hủy', N'BL276     ', 1021900, N'121212121   ')
INSERT [dbo].[DonHang] ([Email], [NgayTao], [TrangThai], [MaCB], [Gia], [CMND]) VALUES (N'nhatanh@gmail.com', CAST(N'2017-09-29 10:18:04.000' AS DateTime), N'Chưa thanh toán', N'BL155     ', 1243000, N'123412356   ')
INSERT [dbo].[HangHangKhong] ([MaHHK], [TenHHK]) VALUES (N'BL', N'Jetstar Pacific')
INSERT [dbo].[HangHangKhong] ([MaHHK], [TenHHK]) VALUES (N'VJ', N'Vietjet Air')
INSERT [dbo].[HangHangKhong] ([MaHHK], [TenHHK]) VALUES (N'VNA', N'Vietnam Airline')
INSERT [dbo].[TaiKhoanUser] ([Email], [Password], [HoTen], [GioiTinh], [CMND], [SDT], [DiaChi]) VALUES (N'hhoangna@gmail.com', N'123456A', N'Huy Hoàng', N'Nam', N'187604428   ', N'1629799774 ', N'Quận 9, Hồ Chí Minh')
INSERT [dbo].[TaiKhoanUser] ([Email], [Password], [HoTen], [GioiTinh], [CMND], [SDT], [DiaChi]) VALUES (N'nhatanh@gmail.com', N'123456A', N'Nhật Anh', N'Nữ', N'123456123   ', N'0123412413 ', N'Quảng Trị')
INSERT [dbo].[ThongTinHanhKhach] ([HoTen], [CMND], [SDT], [HanhLy], [LoaiVe], [MaCB], [DiaChi]) VALUES (N'Sơn Lùn', N'121212121   ', N'01212121212', 10, N'Eco', N'BL276     ', N'Buôn Ma Thuật')
INSERT [dbo].[ThongTinHanhKhach] ([HoTen], [CMND], [SDT], [HanhLy], [LoaiVe], [MaCB], [DiaChi]) VALUES (N'Huy Hoàng', N'123123123   ', N'0123456789 ', 0, N'Eco', N'BL155     ', N'Quảng Trị')
INSERT [dbo].[ThongTinHanhKhach] ([HoTen], [CMND], [SDT], [HanhLy], [LoaiVe], [MaCB], [DiaChi]) VALUES (N'ABC', N'123123123   ', N'123123123  ', 20, N'Eco', N'VNA275    ', N'Thanh Hóa')
INSERT [dbo].[ThongTinHanhKhach] ([HoTen], [CMND], [SDT], [HanhLy], [LoaiVe], [MaCB], [DiaChi]) VALUES (N'Huy Hoàng lê', N'123412345   ', N'1231231234 ', 0, N'Vip', N'BL155     ', N'NA')
INSERT [dbo].[ThongTinHanhKhach] ([HoTen], [CMND], [SDT], [HanhLy], [LoaiVe], [MaCB], [DiaChi]) VALUES (N'abced', N'123412356   ', N'1231241234 ', 10, N'Vip', N'BL155     ', N'Quảng Trị')
INSERT [dbo].[ThongTinHanhKhach] ([HoTen], [CMND], [SDT], [HanhLy], [LoaiVe], [MaCB], [DiaChi]) VALUES (N'abcd', N'123451234   ', N'1234567890 ', 10, N'Vip', N'VNA286    ', N'NA')
INSERT [dbo].[ThongTinHanhKhach] ([HoTen], [CMND], [SDT], [HanhLy], [LoaiVe], [MaCB], [DiaChi]) VALUES (N'Bình Minh', N'123456123   ', N'0123456124 ', 30, N'Eco', N'BL155     ', N'Quảng Trị')
INSERT [dbo].[ThongTinHanhKhach] ([HoTen], [CMND], [SDT], [HanhLy], [LoaiVe], [MaCB], [DiaChi]) VALUES (N'Đinh ML', N'123456123   ', N'0123456123 ', 20, N'Eco', N'BL276     ', N'Bản Đôn')
INSERT [dbo].[ThongTinHanhKhach] ([HoTen], [CMND], [SDT], [HanhLy], [LoaiVe], [MaCB], [DiaChi]) VALUES (N'Sơn Sơn', N'123456123   ', N'0123123141 ', 20, N'Eco', N'VJ125     ', N'Gia Lai')
INSERT [dbo].[ThongTinHanhKhach] ([HoTen], [CMND], [SDT], [HanhLy], [LoaiVe], [MaCB], [DiaChi]) VALUES (N'Thanh Sơn Phạm', N'201462596   ', N'1684697844 ', 20, N'Eco', N'VNA275    ', N'Bản Đôn')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'HNADADVJ1 ', N'HNA       ', N'DAD       ', CAST(N'20:00:00' AS Time), CAST(N'21:30:00' AS Time), N'VJ', N'650000    ', N'800000    ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'HNASGNBL1 ', N'HNA       ', N'SGN       ', CAST(N'10:00:00' AS Time), CAST(N'11:45:00' AS Time), N'BL', N'799000    ', N'999000    ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'HNASGNVJ1 ', N'HNA       ', N'SGN       ', CAST(N'10:30:00' AS Time), CAST(N'12:15:00' AS Time), N'VJ', N'799000    ', N'999000    ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'HNASGNVNA1', N'HNA       ', N'SGN       ', CAST(N'08:00:00' AS Time), CAST(N'09:45:00' AS Time), N'VNA', N'1499000   ', N'2000000   ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'HNASGNVNA2', N'HNA       ', N'SGN       ', CAST(N'09:00:00' AS Time), CAST(N'10:45:00' AS Time), N'VNA', N'1299000   ', N'1700000   ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'HNAVIIBL1 ', N'HNA       ', N'VII       ', CAST(N'15:00:00' AS Time), CAST(N'16:00:00' AS Time), N'BL', N'650000    ', N'1000000   ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'HNAVIIBL2 ', N'HNA       ', N'VII       ', CAST(N'10:00:00' AS Time), CAST(N'11:00:00' AS Time), N'BL', N'790000    ', N'900000    ')
INSERT [dbo].[TuyenBay] ([MaTB], [MaDi], [MaDen], [GioDi], [GioDen], [MaHHK], [GiaThuong], [GiaVIP]) VALUES (N'HNAVIIVNA1', N'HNA       ', N'VII       ', CAST(N'16:00:00' AS Time), CAST(N'17:00:00' AS Time), N'VNA', N'599000    ', N'799000    ')
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_TaiKhoanUser] FOREIGN KEY([Email])
REFERENCES [dbo].[TaiKhoanUser] ([Email])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_TaiKhoanUser]
GO
ALTER TABLE [dbo].[ThongTinHanhKhach]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinHanhKhach_ChuyenBay] FOREIGN KEY([MaCB])
REFERENCES [dbo].[ChuyenBay] ([MaCB])
GO
ALTER TABLE [dbo].[ThongTinHanhKhach] CHECK CONSTRAINT [FK_ThongTinHanhKhach_ChuyenBay]
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
/****** Object:  StoredProcedure [dbo].[trutien]    Script Date: 9/29/2017 8:32:15 PM ******/
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
