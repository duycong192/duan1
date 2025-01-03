USE [master]
GO
/****** Object:  Database [BanGiayTheHans]    Script Date: 4/3/2024 7:37:35 PM ******/
CREATE DATABASE [BanGiayTheHans]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BanGiayTheHans', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BanGiayTheHans.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BanGiayTheHans_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BanGiayTheHans_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BanGiayTheHans] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BanGiayTheHans].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BanGiayTheHans] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BanGiayTheHans] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BanGiayTheHans] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BanGiayTheHans] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BanGiayTheHans] SET ARITHABORT OFF 
GO
ALTER DATABASE [BanGiayTheHans] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BanGiayTheHans] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BanGiayTheHans] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BanGiayTheHans] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BanGiayTheHans] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BanGiayTheHans] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BanGiayTheHans] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BanGiayTheHans] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BanGiayTheHans] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BanGiayTheHans] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BanGiayTheHans] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BanGiayTheHans] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BanGiayTheHans] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BanGiayTheHans] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BanGiayTheHans] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BanGiayTheHans] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BanGiayTheHans] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BanGiayTheHans] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BanGiayTheHans] SET  MULTI_USER 
GO
ALTER DATABASE [BanGiayTheHans] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BanGiayTheHans] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BanGiayTheHans] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BanGiayTheHans] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BanGiayTheHans] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BanGiayTheHans] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BanGiayTheHans] SET QUERY_STORE = OFF
GO
USE [BanGiayTheHans]
GO
/****** Object:  Table [dbo].[Anh]    Script Date: 4/3/2024 7:37:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anh](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_CTSP] [int] NULL,
	[anh] [varbinary](max) NULL,
	[anhMacDinh] [varchar](200) NULL,
	[trangThaiXoa] [bit] NULL,
	[ngayTao] [datetime] NULL,
	[ngaySuaCuoi] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChatLieu]    Script Date: 4/3/2024 7:37:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatLieu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[maChatLieu] [varchar](50) NULL,
	[ten] [nvarchar](100) NULL,
	[trangThaiXoa] [bit] NULL,
	[ngayTao] [datetime] NULL,
	[ngaySuaCuoi] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietSanPham]    Script Date: 4/3/2024 7:37:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSanPham](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_SanPham] [int] NULL,
	[id_MauSac] [int] NULL,
	[id_KichCo] [int] NULL,
	[id_Hang] [int] NULL,
	[id_ChatLieu] [int] NULL,
	[id_CTSP_KhuyenMai] [int] NULL,
	[maCTSP] [varchar](50) NULL,
	[mota] [nvarchar](1000) NULL,
	[soLuongCon] [int] NULL,
	[giaBan] [decimal](38, 2) NULL,
	[maVach] [varchar](100) NULL,
	[trangThaiXoa] [bit] NULL,
	[ngayTao] [datetime] NULL,
	[ngaySuaCuoi] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTSP_KhuyenMai]    Script Date: 4/3/2024 7:37:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTSP_KhuyenMai](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_CTSP] [int] NULL,
	[id_KhuyenMai] [int] NULL,
	[donGia] [decimal](38, 2) NULL,
	[donGiaConLai] [decimal](38, 2) NULL,
	[trangThai] [int] NULL,
	[trangThaiXoa] [bit] NULL,
	[ngayTao] [datetime] NULL,
	[ngaySuaCuoi] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hang]    Script Date: 4/3/2024 7:37:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[maHang] [varchar](50) NULL,
	[ten] [nvarchar](100) NULL,
	[trangThaiXoa] [bit] NULL,
	[ngayTao] [datetime] NULL,
	[ngaySuaCuoi] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 4/3/2024 7:37:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_KhachHang] [int] NULL,
	[id_NhanVien] [int] NULL,
	[maHoaDon] [varchar](50) NULL,
	[tenNguoiNhan] [nvarchar](100) NULL,
	[diaChi] [nvarchar](200) NULL,
	[tienKhachTra] [decimal](38, 2) NULL,
	[tienThuaLai] [decimal](38, 2) NULL,
	[thanhTien] [decimal](38, 2) NULL,
	[trangThaiXoa] [bit] NULL,
	[ngayTao] [datetime] NULL,
	[ngaySuaCuoi] [datetime] NULL,
	[ghiChu] [nvarchar](255) NULL,
	[hinhThucThanhToan] [varchar](200) NULL,
	[trangThaiThanhToan] [int] NULL,
	[maVoucher] [int] NULL,
	[tienSauGiamGia] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 4/3/2024 7:37:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[id_HoaDon] [int] NOT NULL,
	[id_CTSP] [int] NOT NULL,
	[donGia] [decimal](38, 2) NULL,
	[soLuong] [int] NULL,
	[trangThaiXoa] [bit] NULL,
	[ngayTao] [datetime] NULL,
	[ngaySuaCuoi] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_HoaDon] ASC,
	[id_CTSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/3/2024 7:37:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[maKH] [varchar](50) NULL,
	[hoTen] [nvarchar](100) NULL,
	[ngaySinh] [date] NULL,
	[gioiTinh] [int] NULL,
	[diaChi] [nvarchar](200) NULL,
	[SDT] [varchar](11) NULL,
	[email] [varchar](100) NULL,
	[capBac] [nvarchar](100) NULL,
	[trangThaiXoa] [bit] NULL,
	[ngayTao] [datetime] NULL,
	[ngaySuaCuoi] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 4/3/2024 7:37:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[maKM] [varchar](50) NULL,
	[tenKM] [nvarchar](100) NULL,
	[loaiKM] [nvarchar](100) NULL,
	[ngayBatDau] [datetime] NULL,
	[ngayKetThuc] [datetime] NULL,
	[giaTri] [int] NULL,
	[trangThaiXoa] [bit] NULL,
	[ngayTao] [datetime] NULL,
	[ngaySuaCuoi] [datetime] NULL,
	[maChiTietSanPham] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KichCo]    Script Date: 4/3/2024 7:37:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KichCo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[maKichCo] [varchar](50) NULL,
	[ten] [nvarchar](100) NULL,
	[trangThaiXoa] [bit] NULL,
	[ngayTao] [datetime] NULL,
	[ngaySuaCuoi] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuGia]    Script Date: 4/3/2024 7:37:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuGia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_CTSP] [int] NULL,
	[gia] [decimal](38, 2) NULL,
	[ngayBatDau] [datetime] NULL,
	[ngayKetThuc] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MauSac]    Script Date: 4/3/2024 7:37:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MauSac](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[maMauSac] [varchar](50) NULL,
	[ten] [nvarchar](100) NULL,
	[trangThaiXoa] [bit] NULL,
	[ngayTao] [datetime] NULL,
	[ngaySuaCuoi] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/3/2024 7:37:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[maKH] [varchar](50) NULL,
	[hoTen] [nvarchar](100) NULL,
	[ngaySinh] [date] NULL,
	[gioiTinh] [int] NULL,
	[diaChi] [nvarchar](200) NULL,
	[SDT] [varchar](11) NULL,
	[email] [varchar](100) NULL,
	[matKhau] [varchar](50) NULL,
	[vaiTro] [nvarchar](50) NULL,
	[trangThaiXoa] [bit] NULL,
	[ngayTao] [datetime] NULL,
	[ngaySuaCuoi] [datetime] NULL,
	[maNV] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 4/3/2024 7:37:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[maSP] [varchar](50) NULL,
	[ten] [nvarchar](100) NULL,
	[trangThaiXoa] [bit] NULL,
	[ngayTao] [datetime] NULL,
	[ngaySuaCuoi] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 4/3/2024 7:37:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[maVoucher] [nvarchar](50) NOT NULL,
	[tenVoucher] [nvarchar](255) NOT NULL,
	[loaiVoucher] [nvarchar](50) NULL,
	[ngayBatDau] [date] NULL,
	[ngayKetThuc] [date] NULL,
	[giaTri] [decimal](18, 2) NULL,
	[trangThaiXoa] [bit] NULL,
	[ngayTao] [datetime] NULL,
	[ngaySuaCuoi] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChatLieu] ON 

INSERT [dbo].[ChatLieu] ([id], [maChatLieu], [ten], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (1, N'CL001', N'Vải', 1, CAST(N'2024-03-14T21:27:47.990' AS DateTime), CAST(N'2024-04-03T18:51:48.310' AS DateTime))
INSERT [dbo].[ChatLieu] ([id], [maChatLieu], [ten], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (2, N'CL002', N'Da', 1, CAST(N'2024-03-14T21:27:47.990' AS DateTime), CAST(N'2024-04-03T18:51:56.277' AS DateTime))
INSERT [dbo].[ChatLieu] ([id], [maChatLieu], [ten], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (3, N'CL003', N'Da Lộn', 1, CAST(N'2024-03-14T21:27:47.990' AS DateTime), CAST(N'2024-04-03T18:52:03.233' AS DateTime))
INSERT [dbo].[ChatLieu] ([id], [maChatLieu], [ten], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (4, N'cl4', N'Nhựa', 1, CAST(N'2024-03-14T21:27:47.990' AS DateTime), CAST(N'2024-03-14T21:27:47.990' AS DateTime))
SET IDENTITY_INSERT [dbo].[ChatLieu] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietSanPham] ON 

INSERT [dbo].[ChiTietSanPham] ([id], [id_SanPham], [id_MauSac], [id_KichCo], [id_Hang], [id_ChatLieu], [id_CTSP_KhuyenMai], [maCTSP], [mota], [soLuongCon], [giaBan], [maVach], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (1, 1, 1, 1, 1, 1, 1, N'CTSP1', N'None', 211, CAST(1000.00 AS Decimal(38, 2)), NULL, 1, CAST(N'2024-03-14T21:27:47.993' AS DateTime), CAST(N'2024-03-14T21:27:47.993' AS DateTime))
INSERT [dbo].[ChiTietSanPham] ([id], [id_SanPham], [id_MauSac], [id_KichCo], [id_Hang], [id_ChatLieu], [id_CTSP_KhuyenMai], [maCTSP], [mota], [soLuongCon], [giaBan], [maVach], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (2, 2, 2, 1, 3, 2, 4, N'CTSP16', N'None', 228, CAST(10000.00 AS Decimal(38, 2)), NULL, 1, CAST(N'2024-03-14T21:27:47.993' AS DateTime), CAST(N'2024-03-14T21:27:47.993' AS DateTime))
INSERT [dbo].[ChiTietSanPham] ([id], [id_SanPham], [id_MauSac], [id_KichCo], [id_Hang], [id_ChatLieu], [id_CTSP_KhuyenMai], [maCTSP], [mota], [soLuongCon], [giaBan], [maVach], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (3, 4, 4, 3, 2, 4, 2, N'CTSP3', N'None', 228, CAST(10000.00 AS Decimal(38, 2)), NULL, 0, CAST(N'2024-03-14T21:27:47.993' AS DateTime), CAST(N'2024-03-14T21:27:47.993' AS DateTime))
INSERT [dbo].[ChiTietSanPham] ([id], [id_SanPham], [id_MauSac], [id_KichCo], [id_Hang], [id_ChatLieu], [id_CTSP_KhuyenMai], [maCTSP], [mota], [soLuongCon], [giaBan], [maVach], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (4, 1, 2, 3, 4, 1, 2, N'CTSP4', N'None', 230, CAST(10000.00 AS Decimal(38, 2)), NULL, 1, CAST(N'2024-03-14T21:27:47.993' AS DateTime), CAST(N'2024-03-14T21:27:47.993' AS DateTime))
INSERT [dbo].[ChiTietSanPham] ([id], [id_SanPham], [id_MauSac], [id_KichCo], [id_Hang], [id_ChatLieu], [id_CTSP_KhuyenMai], [maCTSP], [mota], [soLuongCon], [giaBan], [maVach], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (5, 3, 3, 1, 3, 4, 1, N'CTSP5', N'None', 229, CAST(10000.00 AS Decimal(38, 2)), NULL, 1, CAST(N'2024-03-14T21:27:47.993' AS DateTime), CAST(N'2024-03-14T21:27:47.993' AS DateTime))
INSERT [dbo].[ChiTietSanPham] ([id], [id_SanPham], [id_MauSac], [id_KichCo], [id_Hang], [id_ChatLieu], [id_CTSP_KhuyenMai], [maCTSP], [mota], [soLuongCon], [giaBan], [maVach], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (6, 1, 1, 2, 1, 1, 3, N'CTSP6', N'None', 230, CAST(1000.00 AS Decimal(38, 2)), NULL, 1, CAST(N'2024-03-14T21:27:47.993' AS DateTime), CAST(N'2024-03-14T21:27:47.993' AS DateTime))
INSERT [dbo].[ChiTietSanPham] ([id], [id_SanPham], [id_MauSac], [id_KichCo], [id_Hang], [id_ChatLieu], [id_CTSP_KhuyenMai], [maCTSP], [mota], [soLuongCon], [giaBan], [maVach], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (7, 4, 3, 1, 4, 1, 1, N'CTSP7', N'None', 230, CAST(10000.00 AS Decimal(38, 2)), NULL, 0, CAST(N'2024-03-14T21:27:47.993' AS DateTime), CAST(N'2024-03-14T21:27:47.993' AS DateTime))
INSERT [dbo].[ChiTietSanPham] ([id], [id_SanPham], [id_MauSac], [id_KichCo], [id_Hang], [id_ChatLieu], [id_CTSP_KhuyenMai], [maCTSP], [mota], [soLuongCon], [giaBan], [maVach], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (8, 1, 1, 2, 4, 3, 1, N'CTSP8', N'None', 232, CAST(1000.00 AS Decimal(38, 2)), NULL, 1, CAST(N'2024-03-14T21:27:47.993' AS DateTime), CAST(N'2024-03-14T21:27:47.993' AS DateTime))
INSERT [dbo].[ChiTietSanPham] ([id], [id_SanPham], [id_MauSac], [id_KichCo], [id_Hang], [id_ChatLieu], [id_CTSP_KhuyenMai], [maCTSP], [mota], [soLuongCon], [giaBan], [maVach], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (9, 2, 2, 1, 1, 1, 2, N'CTSP9', N'None', 232, CAST(100000.00 AS Decimal(38, 2)), NULL, 1, CAST(N'2024-03-14T21:27:47.993' AS DateTime), CAST(N'2024-03-14T21:27:47.993' AS DateTime))
INSERT [dbo].[ChiTietSanPham] ([id], [id_SanPham], [id_MauSac], [id_KichCo], [id_Hang], [id_ChatLieu], [id_CTSP_KhuyenMai], [maCTSP], [mota], [soLuongCon], [giaBan], [maVach], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (10, 1, 2, 4, 2, 3, 2, N'CTSP10', N'None', 232, CAST(10000.00 AS Decimal(38, 2)), NULL, 0, CAST(N'2024-03-14T21:27:47.993' AS DateTime), CAST(N'2024-03-14T21:27:47.993' AS DateTime))
INSERT [dbo].[ChiTietSanPham] ([id], [id_SanPham], [id_MauSac], [id_KichCo], [id_Hang], [id_ChatLieu], [id_CTSP_KhuyenMai], [maCTSP], [mota], [soLuongCon], [giaBan], [maVach], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (11, 4, 1, 4, 1, 1, 1, N'CTSP11', N'None', 232, CAST(1000000.00 AS Decimal(38, 2)), NULL, 1, CAST(N'2024-03-14T21:27:47.993' AS DateTime), CAST(N'2024-03-14T21:27:47.993' AS DateTime))
INSERT [dbo].[ChiTietSanPham] ([id], [id_SanPham], [id_MauSac], [id_KichCo], [id_Hang], [id_ChatLieu], [id_CTSP_KhuyenMai], [maCTSP], [mota], [soLuongCon], [giaBan], [maVach], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (12, 3, 1, 2, 1, 1, NULL, N'CTSP12', N'None', 232, CAST(1000.00 AS Decimal(38, 2)), NULL, 1, CAST(N'2024-04-01T14:01:04.127' AS DateTime), CAST(N'2024-04-01T14:01:04.127' AS DateTime))
INSERT [dbo].[ChiTietSanPham] ([id], [id_SanPham], [id_MauSac], [id_KichCo], [id_Hang], [id_ChatLieu], [id_CTSP_KhuyenMai], [maCTSP], [mota], [soLuongCon], [giaBan], [maVach], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (13, 6, 4, 2, 1, 2, NULL, N'airr0001', N'None', 200, CAST(250000.00 AS Decimal(38, 2)), NULL, 0, CAST(N'2024-04-03T10:14:36.123' AS DateTime), CAST(N'2024-04-03T10:14:36.123' AS DateTime))
SET IDENTITY_INSERT [dbo].[ChiTietSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[CTSP_KhuyenMai] ON 

INSERT [dbo].[CTSP_KhuyenMai] ([id], [id_CTSP], [id_KhuyenMai], [donGia], [donGiaConLai], [trangThai], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (1, 2, 2, CAST(23422.33 AS Decimal(38, 2)), NULL, 1, 1, CAST(N'2024-03-14T21:27:47.993' AS DateTime), CAST(N'2024-03-14T21:27:47.993' AS DateTime))
INSERT [dbo].[CTSP_KhuyenMai] ([id], [id_CTSP], [id_KhuyenMai], [donGia], [donGiaConLai], [trangThai], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (2, 1, 2, CAST(234422.33 AS Decimal(38, 2)), NULL, 1, 1, CAST(N'2024-03-14T21:27:47.993' AS DateTime), CAST(N'2024-03-14T21:27:47.993' AS DateTime))
INSERT [dbo].[CTSP_KhuyenMai] ([id], [id_CTSP], [id_KhuyenMai], [donGia], [donGiaConLai], [trangThai], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (3, 1, 3, CAST(234422.33 AS Decimal(38, 2)), NULL, 1, 1, CAST(N'2024-03-14T21:27:47.993' AS DateTime), CAST(N'2024-03-14T21:27:47.993' AS DateTime))
INSERT [dbo].[CTSP_KhuyenMai] ([id], [id_CTSP], [id_KhuyenMai], [donGia], [donGiaConLai], [trangThai], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (4, 2, 3, CAST(232422.33 AS Decimal(38, 2)), NULL, 1, 1, CAST(N'2024-03-14T21:27:47.993' AS DateTime), CAST(N'2024-03-14T21:27:47.993' AS DateTime))
SET IDENTITY_INSERT [dbo].[CTSP_KhuyenMai] OFF
GO
SET IDENTITY_INSERT [dbo].[Hang] ON 

INSERT [dbo].[Hang] ([id], [maHang], [ten], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (1, N'h1', N'nike', 1, CAST(N'2024-03-14T21:27:47.990' AS DateTime), CAST(N'2024-03-14T21:27:47.990' AS DateTime))
INSERT [dbo].[Hang] ([id], [maHang], [ten], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (2, N'h2', N'adidas', 1, CAST(N'2024-03-14T21:27:47.990' AS DateTime), CAST(N'2024-03-14T21:27:47.990' AS DateTime))
INSERT [dbo].[Hang] ([id], [maHang], [ten], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (3, N'h3', N'fuma', 1, CAST(N'2024-03-14T21:27:47.990' AS DateTime), CAST(N'2024-03-14T21:27:47.990' AS DateTime))
INSERT [dbo].[Hang] ([id], [maHang], [ten], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (4, N'h4', N'vans', 1, CAST(N'2024-03-14T21:27:47.990' AS DateTime), CAST(N'2024-03-14T21:27:47.990' AS DateTime))
SET IDENTITY_INSERT [dbo].[Hang] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (17, 1, 6, N'8f82ef4c-d412-4eb9-8ef6-3d3051d55e41', NULL, NULL, CAST(123000.00 AS Decimal(38, 2)), CAST(3000.00 AS Decimal(38, 2)), CAST(120000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-03-24T21:43:39.387' AS DateTime), CAST(N'2024-03-28T19:34:26.570' AS DateTime), N'', N'CHUYEN_KHOAN', 1, NULL, CAST(120000.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (18, 1, 6, N'ab3a6cec-1f02-479c-bc37-c6e74620fcaa', NULL, NULL, CAST(240000.00 AS Decimal(38, 2)), CAST(31200.00 AS Decimal(38, 2)), CAST(232000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-03-24T21:45:19.383' AS DateTime), CAST(N'2024-03-28T19:52:26.450' AS DateTime), N'', N'TIEN_MAT', 1, NULL, CAST(208800.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (20, 1, 6, N'6a94b5c2-a5de-4abf-82c2-50626b7289ef', NULL, NULL, CAST(20000.00 AS Decimal(38, 2)), CAST(1100.00 AS Decimal(38, 2)), CAST(21000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-03-24T22:23:14.717' AS DateTime), CAST(N'2024-03-24T22:23:14.717' AS DateTime), N'', N'TIEN_MAT', 1, NULL, CAST(18900.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (21, 1, 6, N'0913b0b0-dc35-4228-9fb4-7b580305dd98', NULL, NULL, CAST(10.00 AS Decimal(38, 2)), CAST(10.00 AS Decimal(38, 2)), CAST(10.00 AS Decimal(38, 2)), NULL, CAST(N'2024-03-24T22:25:15.283' AS DateTime), CAST(N'2024-03-28T19:25:28.707' AS DateTime), N'abf', N'TIEN_MAT', 1, 1, CAST(1.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (22, 1, 6, N'a68eca3f-cbad-4daa-8e65-3c4e35283efa', NULL, NULL, CAST(130000.00 AS Decimal(38, 2)), CAST(10000.00 AS Decimal(38, 2)), CAST(120000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-03-24T22:29:54.657' AS DateTime), CAST(N'2024-03-28T19:52:29.147' AS DateTime), N'', N'TIEN_MAT', 1, NULL, CAST(120000.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (23, 1, 6, N'f219b9ce-bdbc-4472-a2a7-88494cb8ec69', NULL, NULL, CAST(20000.00 AS Decimal(38, 2)), CAST(200.00 AS Decimal(38, 2)), CAST(22000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-03-25T11:04:36.263' AS DateTime), CAST(N'2024-03-25T11:04:36.263' AS DateTime), N'Đã mua hàng', N'TIEN_MAT', 0, 1, CAST(19800.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (24, 1, 6, N'3824d2ee-b6b0-4782-b9d8-43d1201b4357', NULL, NULL, CAST(20000.00 AS Decimal(38, 2)), CAST(200.00 AS Decimal(38, 2)), CAST(22000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-03-25T11:04:46.937' AS DateTime), CAST(N'2024-03-28T19:52:31.650' AS DateTime), N'Đã mua hàng', N'TIEN_MAT', 1, 1, CAST(19800.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (25, 1, 6, N'57f46af3-566f-47ad-b4a8-354fb5890157', NULL, NULL, CAST(200000.00 AS Decimal(38, 2)), CAST(179000.00 AS Decimal(38, 2)), CAST(21000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-03-27T10:50:46.563' AS DateTime), CAST(N'2024-03-27T10:50:46.563' AS DateTime), N'', N'TIEN_MAT', 0, NULL, CAST(21000.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (26, 1, 6, N'93687eb7-8f90-4ed3-b3dd-7f2acba9ace5', NULL, NULL, CAST(13000.00 AS Decimal(38, 2)), CAST(1000.00 AS Decimal(38, 2)), CAST(12000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-03-27T10:56:12.397' AS DateTime), CAST(N'2024-03-27T10:56:12.397' AS DateTime), N'Da thanh toan', N'TIEN_MAT', 0, NULL, CAST(12000.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (27, 1, 6, N'bff50ad9-e69e-41dc-8111-87e284b1b138', NULL, NULL, CAST(35000.00 AS Decimal(38, 2)), CAST(5000.00 AS Decimal(38, 2)), CAST(30000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-03-27T11:15:11.477' AS DateTime), CAST(N'2024-03-27T11:15:11.477' AS DateTime), N'', N'TIEN_MAT', 0, NULL, CAST(30000.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (28, 1, 6, N'9970143e-dcdd-4e32-9570-04950c13d8e3', NULL, NULL, CAST(300000.00 AS Decimal(38, 2)), CAST(270000.00 AS Decimal(38, 2)), CAST(30000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-03-29T13:37:43.533' AS DateTime), CAST(N'2024-03-29T14:03:58.627' AS DateTime), N'', N'TIEN_MAT', 1, NULL, CAST(30000.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (29, 1, 6, N'72cf30bd-7b3f-46b4-b6b8-4039533ba81b', NULL, NULL, CAST(200000.00 AS Decimal(38, 2)), CAST(70000.00 AS Decimal(38, 2)), CAST(130000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-03-29T14:27:44.803' AS DateTime), CAST(N'2024-03-29T14:27:44.803' AS DateTime), N'', N'TIEN_MAT', 1, NULL, CAST(130000.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (30, 1, 6, N'28c44de0-9c14-486e-bd92-013adee760d3', NULL, NULL, CAST(12000.00 AS Decimal(38, 2)), CAST(1000.00 AS Decimal(38, 2)), CAST(11000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-03-29T19:13:34.333' AS DateTime), CAST(N'2024-03-29T19:13:34.333' AS DateTime), N'', N'TIEN_MAT', 1, NULL, CAST(11000.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (31, 1, 6, N'aac219e0-9436-41bd-be88-3be1a37faa52', NULL, NULL, CAST(110000.00 AS Decimal(38, 2)), CAST(100000.00 AS Decimal(38, 2)), CAST(10000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-03-29T19:41:24.443' AS DateTime), CAST(N'2024-03-29T19:41:24.443' AS DateTime), N'', N'TIEN_MAT', 1, NULL, CAST(10000.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (32, 1, 6, N'17ae1419-9709-4599-9a14-fe6ce5aff17a', NULL, NULL, CAST(0.00 AS Decimal(38, 2)), CAST(0.00 AS Decimal(38, 2)), CAST(10000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-03-29T19:44:50.810' AS DateTime), CAST(N'2024-03-29T19:44:50.810' AS DateTime), N'', N'TIEN_MAT', 0, NULL, CAST(10000.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (33, 1, 6, N'd5d61dbc-4d2c-4c70-972d-20905c00db33', NULL, NULL, CAST(0.00 AS Decimal(38, 2)), CAST(0.00 AS Decimal(38, 2)), CAST(10000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-03-29T19:45:46.170' AS DateTime), CAST(N'2024-03-29T19:45:46.170' AS DateTime), N'', N'TIEN_MAT', 0, NULL, CAST(10000.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (34, 1, 6, N'170b4d27-a7e2-48b0-a011-8bfc660ca22d', NULL, NULL, CAST(20000.00 AS Decimal(38, 2)), CAST(10000.00 AS Decimal(38, 2)), CAST(10000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-03-29T19:48:20.980' AS DateTime), CAST(N'2024-03-29T19:48:42.633' AS DateTime), N'', N'TIEN_MAT', 1, NULL, CAST(10000.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (35, 1, 6, N'acd7e419-ba06-4266-9b0c-762cfae1e9b9', NULL, NULL, CAST(20000.00 AS Decimal(38, 2)), CAST(10000.00 AS Decimal(38, 2)), CAST(10000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-03-30T20:19:12.260' AS DateTime), CAST(N'2024-03-30T20:19:22.637' AS DateTime), N'', N'TIEN_MAT', 1, NULL, CAST(10000.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (36, 1, 6, N'b543b034-17e8-4a38-be8c-bad2dc8ad7e9', NULL, NULL, CAST(22000.00 AS Decimal(38, 2)), CAST(10000.00 AS Decimal(38, 2)), CAST(12000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-03-30T20:35:25.287' AS DateTime), CAST(N'2024-03-30T20:35:25.287' AS DateTime), N'', N'TIEN_MAT', 1, NULL, CAST(12000.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (37, 4, 6, N'182340d2-751a-44da-afaf-dbb883f6652d', NULL, NULL, CAST(32000.00 AS Decimal(38, 2)), CAST(1000.00 AS Decimal(38, 2)), CAST(31000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-03-30T21:18:03.997' AS DateTime), CAST(N'2024-03-30T21:18:03.997' AS DateTime), N'', N'TIEN_MAT', 1, NULL, CAST(31000.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (39, 4, 6, N'e6816877-7ce7-4630-980c-db57d9a1c0f8', NULL, NULL, CAST(22000.00 AS Decimal(38, 2)), CAST(4400.00 AS Decimal(38, 2)), CAST(20000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-03-30T21:24:22.127' AS DateTime), CAST(N'2024-03-30T21:24:22.127' AS DateTime), N'', N'CHUYEN_KHOAN', 1, 2, CAST(17600.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (40, 1, 6, N'3d0be47d-773e-455c-85cd-ca1f04408ef4', NULL, NULL, CAST(30000.00 AS Decimal(38, 2)), CAST(28000.00 AS Decimal(38, 2)), CAST(2000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-04-01T17:33:10.763' AS DateTime), CAST(N'2024-04-01T17:33:10.763' AS DateTime), N'', N'TIEN_MAT', 1, NULL, CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (41, 1, 6, N'a21c8a5a-72f7-434b-b6e0-8cd52e44b1f0', NULL, NULL, CAST(22000.00 AS Decimal(38, 2)), CAST(4000.00 AS Decimal(38, 2)), CAST(20000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-04-01T17:34:34.317' AS DateTime), CAST(N'2024-04-01T17:34:34.317' AS DateTime), N'', N'TIEN_MAT', 1, 1, CAST(18000.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (42, 1, 6, N'4a78734f-b1ff-485f-932b-d8dc6f6f9ff3', NULL, NULL, CAST(3000.00 AS Decimal(38, 2)), CAST(1000.00 AS Decimal(38, 2)), CAST(2000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-04-01T17:35:22.400' AS DateTime), CAST(N'2024-04-01T17:35:22.400' AS DateTime), N'', N'TIEN_MAT', 1, NULL, CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (43, 1, 6, N'9ae6c218-8c24-4cf0-bbbd-d766a5ddec53', NULL, NULL, CAST(40000.00 AS Decimal(38, 2)), CAST(10000.00 AS Decimal(38, 2)), CAST(30000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-04-01T17:38:37.670' AS DateTime), CAST(N'2024-04-01T17:38:52.067' AS DateTime), N'', N'TIEN_MAT', 1, NULL, CAST(30000.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (44, 6, 6, N'4daf43af-1eb9-43ed-bb4d-3285b59f653c', NULL, NULL, CAST(22000.00 AS Decimal(38, 2)), CAST(1000.00 AS Decimal(38, 2)), CAST(21000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-04-01T17:40:37.640' AS DateTime), CAST(N'2024-04-01T17:40:37.640' AS DateTime), N'', N'TIEN_MAT', 1, NULL, CAST(21000.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (45, 1, 6, N'06942603-6b13-4285-93c9-b9adc6a815fd', NULL, NULL, CAST(42000.00 AS Decimal(38, 2)), CAST(2000.00 AS Decimal(38, 2)), CAST(40000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-04-03T10:21:13.273' AS DateTime), CAST(N'2024-04-03T10:21:13.273' AS DateTime), N'', N'TIEN_MAT', 1, NULL, CAST(40000.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (46, 1, 6, N'ec303b73-40a2-4231-b901-37bda24ffc54', NULL, NULL, CAST(23000.00 AS Decimal(38, 2)), CAST(1000.00 AS Decimal(38, 2)), CAST(22000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-04-03T19:16:09.460' AS DateTime), CAST(N'2024-04-03T19:16:09.460' AS DateTime), N'ok', N'TIEN_MAT', 1, NULL, CAST(22000.00 AS Decimal(10, 2)))
INSERT [dbo].[HoaDon] ([id], [id_KhachHang], [id_NhanVien], [maHoaDon], [tenNguoiNhan], [diaChi], [tienKhachTra], [tienThuaLai], [thanhTien], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [ghiChu], [hinhThucThanhToan], [trangThaiThanhToan], [maVoucher], [tienSauGiamGia]) VALUES (47, 1, 6, N'320f400e-0b9a-4bfa-a446-406a1d5ec71e', NULL, NULL, CAST(2000.00 AS Decimal(38, 2)), CAST(1000.00 AS Decimal(38, 2)), CAST(1000.00 AS Decimal(38, 2)), NULL, CAST(N'2024-04-03T19:17:58.777' AS DateTime), CAST(N'2024-04-03T19:17:58.777' AS DateTime), N'', N'TIEN_MAT', 1, NULL, CAST(1000.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (17, 2, CAST(10000.00 AS Decimal(38, 2)), 12, 0, CAST(N'2024-03-24T21:43:39.430' AS DateTime), CAST(N'2024-03-24T21:43:39.430' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (18, 1, CAST(1000.00 AS Decimal(38, 2)), 12, 0, CAST(N'2024-03-24T21:45:19.417' AS DateTime), CAST(N'2024-03-24T21:45:19.417' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (18, 3, CAST(10000.00 AS Decimal(38, 2)), 22, 0, CAST(N'2024-03-24T21:45:19.420' AS DateTime), CAST(N'2024-03-24T21:45:19.420' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (20, 1, CAST(1000.00 AS Decimal(38, 2)), 1, 0, CAST(N'2024-03-24T22:23:14.747' AS DateTime), CAST(N'2024-03-24T22:23:14.747' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (20, 5, CAST(10000.00 AS Decimal(38, 2)), 2, 0, CAST(N'2024-03-24T22:23:14.747' AS DateTime), CAST(N'2024-03-24T22:23:14.747' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (21, 1, CAST(1000.00 AS Decimal(38, 2)), 1, 0, CAST(N'2024-03-24T22:25:15.317' AS DateTime), CAST(N'2024-03-24T22:25:15.317' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (21, 6, CAST(1000.00 AS Decimal(38, 2)), 2, 0, CAST(N'2024-03-24T22:25:15.320' AS DateTime), CAST(N'2024-03-24T22:25:15.320' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (22, 3, CAST(10000.00 AS Decimal(38, 2)), 12, 0, CAST(N'2024-03-24T22:29:54.683' AS DateTime), CAST(N'2024-03-24T22:29:54.683' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (23, 1, CAST(1000.00 AS Decimal(38, 2)), 1, 0, CAST(N'2024-03-25T11:04:36.300' AS DateTime), CAST(N'2024-03-25T11:04:36.300' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (23, 4, CAST(10000.00 AS Decimal(38, 2)), 2, 0, CAST(N'2024-03-25T11:04:36.300' AS DateTime), CAST(N'2024-03-25T11:04:36.300' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (23, 8, CAST(1000.00 AS Decimal(38, 2)), 1, 0, CAST(N'2024-03-25T11:04:36.300' AS DateTime), CAST(N'2024-03-25T11:04:36.300' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (24, 1, CAST(1000.00 AS Decimal(38, 2)), 1, 0, CAST(N'2024-03-25T11:04:46.973' AS DateTime), CAST(N'2024-03-25T11:04:46.973' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (24, 4, CAST(10000.00 AS Decimal(38, 2)), 2, 0, CAST(N'2024-03-25T11:04:46.977' AS DateTime), CAST(N'2024-03-25T11:04:46.977' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (24, 8, CAST(1000.00 AS Decimal(38, 2)), 1, 0, CAST(N'2024-03-25T11:04:46.977' AS DateTime), CAST(N'2024-03-25T11:04:46.977' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (25, 1, CAST(1000.00 AS Decimal(38, 2)), 1, 0, CAST(N'2024-03-27T10:50:46.597' AS DateTime), CAST(N'2024-03-27T10:50:46.597' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (25, 4, CAST(10000.00 AS Decimal(38, 2)), 2, 0, CAST(N'2024-03-27T10:50:46.597' AS DateTime), CAST(N'2024-03-27T10:50:46.597' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (26, 2, CAST(10000.00 AS Decimal(38, 2)), 1, 0, CAST(N'2024-03-27T10:56:12.430' AS DateTime), CAST(N'2024-03-27T10:56:12.430' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (26, 6, CAST(1000.00 AS Decimal(38, 2)), 2, 0, CAST(N'2024-03-27T10:56:12.430' AS DateTime), CAST(N'2024-03-27T10:56:12.430' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (27, 2, CAST(10000.00 AS Decimal(38, 2)), 1, 0, CAST(N'2024-03-27T11:15:11.517' AS DateTime), CAST(N'2024-03-27T11:15:11.517' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (27, 3, CAST(10000.00 AS Decimal(38, 2)), 2, 0, CAST(N'2024-03-27T11:15:11.517' AS DateTime), CAST(N'2024-03-27T11:15:11.517' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (28, 2, CAST(10000.00 AS Decimal(38, 2)), 1, 0, CAST(N'2024-03-29T13:37:43.567' AS DateTime), CAST(N'2024-03-29T13:37:43.567' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (28, 5, CAST(10000.00 AS Decimal(38, 2)), 2, 0, CAST(N'2024-03-29T13:37:43.570' AS DateTime), CAST(N'2024-03-29T13:37:43.570' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (29, 3, CAST(10000.00 AS Decimal(38, 2)), 12, 0, CAST(N'2024-03-29T14:27:44.837' AS DateTime), CAST(N'2024-03-29T14:27:44.837' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (29, 5, CAST(10000.00 AS Decimal(38, 2)), 1, 0, CAST(N'2024-03-29T14:27:44.837' AS DateTime), CAST(N'2024-03-29T14:27:44.837' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (30, 3, CAST(10000.00 AS Decimal(38, 2)), 1, 0, CAST(N'2024-03-29T19:13:34.377' AS DateTime), CAST(N'2024-03-29T19:13:34.377' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (30, 6, CAST(1000.00 AS Decimal(38, 2)), 1, 0, CAST(N'2024-03-29T19:13:34.380' AS DateTime), CAST(N'2024-03-29T19:13:34.380' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (31, 5, CAST(10000.00 AS Decimal(38, 2)), 1, 0, CAST(N'2024-03-29T19:41:24.493' AS DateTime), CAST(N'2024-03-29T19:41:24.493' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (32, 3, CAST(10000.00 AS Decimal(38, 2)), 1, 0, CAST(N'2024-03-29T19:44:50.857' AS DateTime), CAST(N'2024-03-29T19:44:50.857' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (33, 2, CAST(10000.00 AS Decimal(38, 2)), 1, 0, CAST(N'2024-03-29T19:45:46.220' AS DateTime), CAST(N'2024-03-29T19:45:46.220' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (34, 2, CAST(10000.00 AS Decimal(38, 2)), 1, 0, CAST(N'2024-03-29T19:48:21.030' AS DateTime), CAST(N'2024-03-29T19:48:21.030' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (35, 5, CAST(10000.00 AS Decimal(38, 2)), 1, 0, CAST(N'2024-03-30T20:19:12.300' AS DateTime), CAST(N'2024-03-30T20:19:12.300' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (36, 1, CAST(1000.00 AS Decimal(38, 2)), 12, 0, CAST(N'2024-03-30T20:35:25.313' AS DateTime), CAST(N'2024-03-30T20:35:25.313' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (37, 1, CAST(1000.00 AS Decimal(38, 2)), 1, 0, CAST(N'2024-03-30T21:18:04.033' AS DateTime), CAST(N'2024-03-30T21:18:04.033' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (37, 5, CAST(10000.00 AS Decimal(38, 2)), 1, 0, CAST(N'2024-03-30T21:18:04.037' AS DateTime), CAST(N'2024-03-30T21:18:04.037' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (37, 7, CAST(10000.00 AS Decimal(38, 2)), 2, 0, CAST(N'2024-03-30T21:18:04.040' AS DateTime), CAST(N'2024-03-30T21:18:04.040' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (39, 2, CAST(10000.00 AS Decimal(38, 2)), 2, 0, CAST(N'2024-03-30T21:24:22.150' AS DateTime), CAST(N'2024-03-30T21:24:22.150' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (40, 1, CAST(1000.00 AS Decimal(38, 2)), 2, 0, CAST(N'2024-04-01T17:33:10.810' AS DateTime), CAST(N'2024-04-01T17:33:10.810' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (41, 2, CAST(10000.00 AS Decimal(38, 2)), 2, 0, CAST(N'2024-04-01T17:34:34.370' AS DateTime), CAST(N'2024-04-01T17:34:34.370' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (42, 1, CAST(1000.00 AS Decimal(38, 2)), 2, 0, CAST(N'2024-04-01T17:35:22.447' AS DateTime), CAST(N'2024-04-01T17:35:22.447' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (43, 4, CAST(10000.00 AS Decimal(38, 2)), 1, 0, CAST(N'2024-04-01T17:38:37.713' AS DateTime), CAST(N'2024-04-01T17:38:37.713' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (43, 5, CAST(10000.00 AS Decimal(38, 2)), 2, 0, CAST(N'2024-04-01T17:38:37.717' AS DateTime), CAST(N'2024-04-01T17:38:37.717' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (44, 1, CAST(1000.00 AS Decimal(38, 2)), 1, 0, CAST(N'2024-04-01T17:40:37.690' AS DateTime), CAST(N'2024-04-01T17:40:37.690' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (44, 4, CAST(10000.00 AS Decimal(38, 2)), 2, 0, CAST(N'2024-04-01T17:40:37.693' AS DateTime), CAST(N'2024-04-01T17:40:37.693' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (45, 3, CAST(10000.00 AS Decimal(38, 2)), 2, 0, CAST(N'2024-04-03T10:21:13.307' AS DateTime), CAST(N'2024-04-03T10:21:13.307' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (45, 5, CAST(10000.00 AS Decimal(38, 2)), 2, 0, CAST(N'2024-04-03T10:21:13.307' AS DateTime), CAST(N'2024-04-03T10:21:13.307' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (46, 3, CAST(10000.00 AS Decimal(38, 2)), 2, 0, CAST(N'2024-04-03T19:16:09.503' AS DateTime), CAST(N'2024-04-03T19:16:09.503' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (46, 6, CAST(1000.00 AS Decimal(38, 2)), 2, 0, CAST(N'2024-04-03T19:16:09.503' AS DateTime), CAST(N'2024-04-03T19:16:09.503' AS DateTime))
INSERT [dbo].[HoaDonChiTiet] ([id_HoaDon], [id_CTSP], [donGia], [soLuong], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (47, 1, CAST(1000.00 AS Decimal(38, 2)), 1, 0, CAST(N'2024-04-03T19:17:58.830' AS DateTime), CAST(N'2024-04-03T19:17:58.830' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([id], [maKH], [hoTen], [ngaySinh], [gioiTinh], [diaChi], [SDT], [email], [capBac], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (1, N'None', N'None', CAST(N'2000-11-11' AS Date), 1, N'None', N'None', N'None', N'None', 1, CAST(N'2024-03-14T21:27:47.993' AS DateTime), CAST(N'2024-03-14T21:27:47.993' AS DateTime))
INSERT [dbo].[KhachHang] ([id], [maKH], [hoTen], [ngaySinh], [gioiTinh], [diaChi], [SDT], [email], [capBac], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (2, N'kh2', N'Nguyễn Văn Hậu', CAST(N'2001-11-11' AS Date), 1, N'HN', N'01234566', N'email.com', N'bạc', 0, CAST(N'2024-03-14T21:27:47.993' AS DateTime), CAST(N'2024-03-14T21:27:47.993' AS DateTime))
INSERT [dbo].[KhachHang] ([id], [maKH], [hoTen], [ngaySinh], [gioiTinh], [diaChi], [SDT], [email], [capBac], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (3, N'kh3', N'Nguyễn Thị Hoàng', CAST(N'2002-11-11' AS Date), 1, N'HN', N'01234567', N'email.com', N'đồng', 1, CAST(N'2024-03-14T21:27:47.993' AS DateTime), CAST(N'2024-03-14T21:27:47.993' AS DateTime))
INSERT [dbo].[KhachHang] ([id], [maKH], [hoTen], [ngaySinh], [gioiTinh], [diaChi], [SDT], [email], [capBac], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (4, N'kh4', N'Lương Duy Công', CAST(N'2003-11-11' AS Date), 0, N'HN', N'01234568', N'email.com', N'nhôm', 0, CAST(N'2024-03-14T21:27:47.993' AS DateTime), CAST(N'2024-03-14T21:27:47.993' AS DateTime))
INSERT [dbo].[KhachHang] ([id], [maKH], [hoTen], [ngaySinh], [gioiTinh], [diaChi], [SDT], [email], [capBac], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (5, N'kh5', N'Trần Bình', CAST(N'2004-11-11' AS Date), 1, N'HN', N'01234560', N'email.com', N'vàng', 1, CAST(N'2024-03-14T21:27:47.993' AS DateTime), CAST(N'2024-03-14T21:27:47.993' AS DateTime))
INSERT [dbo].[KhachHang] ([id], [maKH], [hoTen], [ngaySinh], [gioiTinh], [diaChi], [SDT], [email], [capBac], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (6, N'KH005', N'TrầnVăn Thảo', CAST(N'2024-04-16' AS Date), 1, N'HN', N'012345669', N'Email.gmail', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhuyenMai] ON 

INSERT [dbo].[KhuyenMai] ([id], [maKM], [tenKM], [loaiKM], [ngayBatDau], [ngayKetThuc], [giaTri], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [maChiTietSanPham]) VALUES (1, N'km1', N'8/3', N'km sâu', CAST(N'2023-03-07T00:00:00.000' AS DateTime), CAST(N'2023-03-09T00:00:00.000' AS DateTime), 12, 1, CAST(N'2024-03-14T21:27:47.990' AS DateTime), CAST(N'2024-03-14T21:27:47.990' AS DateTime), NULL)
INSERT [dbo].[KhuyenMai] ([id], [maKM], [tenKM], [loaiKM], [ngayBatDau], [ngayKetThuc], [giaTri], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [maChiTietSanPham]) VALUES (2, N'km2', N'20/11', N'km sâu', CAST(N'2023-11-19T00:00:00.000' AS DateTime), CAST(N'2023-11-21T00:00:00.000' AS DateTime), 12, 1, CAST(N'2024-03-14T21:27:47.990' AS DateTime), CAST(N'2024-03-14T21:27:47.990' AS DateTime), NULL)
INSERT [dbo].[KhuyenMai] ([id], [maKM], [tenKM], [loaiKM], [ngayBatDau], [ngayKetThuc], [giaTri], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [maChiTietSanPham]) VALUES (3, N'km3', N'22/12', N'đợt', CAST(N'2023-12-20T00:00:00.000' AS DateTime), CAST(N'2023-12-25T00:00:00.000' AS DateTime), 12, 1, CAST(N'2024-03-14T21:27:47.990' AS DateTime), CAST(N'2024-03-14T21:27:47.990' AS DateTime), NULL)
INSERT [dbo].[KhuyenMai] ([id], [maKM], [tenKM], [loaiKM], [ngayBatDau], [ngayKetThuc], [giaTri], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [maChiTietSanPham]) VALUES (4, N'km4', N'26/3', N'km sâu', CAST(N'2023-03-25T00:00:00.000' AS DateTime), CAST(N'2023-03-02T00:00:00.000' AS DateTime), 10, 1, CAST(N'2024-03-14T21:27:47.990' AS DateTime), CAST(N'2024-03-14T21:27:47.990' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[KhuyenMai] OFF
GO
SET IDENTITY_INSERT [dbo].[KichCo] ON 

INSERT [dbo].[KichCo] ([id], [maKichCo], [ten], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (1, N'kc1', N'S', 1, CAST(N'2024-03-14T21:27:47.990' AS DateTime), CAST(N'2024-03-14T21:27:47.990' AS DateTime))
INSERT [dbo].[KichCo] ([id], [maKichCo], [ten], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (2, N'kc2', N'M', 1, CAST(N'2024-03-14T21:27:47.990' AS DateTime), CAST(N'2024-03-14T21:27:47.990' AS DateTime))
INSERT [dbo].[KichCo] ([id], [maKichCo], [ten], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (3, N'kc3', N'L', 1, CAST(N'2024-03-14T21:27:47.990' AS DateTime), CAST(N'2024-03-14T21:27:47.990' AS DateTime))
INSERT [dbo].[KichCo] ([id], [maKichCo], [ten], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (4, N'kc3', N'XL', 1, CAST(N'2024-03-14T21:27:47.990' AS DateTime), CAST(N'2024-03-14T21:27:47.990' AS DateTime))
INSERT [dbo].[KichCo] ([id], [maKichCo], [ten], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (5, N'kc4', N'XL', 1, CAST(N'2024-03-14T21:27:47.990' AS DateTime), CAST(N'2024-03-14T21:27:47.990' AS DateTime))
SET IDENTITY_INSERT [dbo].[KichCo] OFF
GO
SET IDENTITY_INSERT [dbo].[LichSuGia] ON 

INSERT [dbo].[LichSuGia] ([id], [id_CTSP], [gia], [ngayBatDau], [ngayKetThuc]) VALUES (1, 13, CAST(250000.00 AS Decimal(38, 2)), CAST(N'2024-04-03T10:14:37.463' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[LichSuGia] OFF
GO
SET IDENTITY_INSERT [dbo].[MauSac] ON 

INSERT [dbo].[MauSac] ([id], [maMauSac], [ten], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (1, N'm1', N'Vàng', 1, CAST(N'2024-03-14T21:27:47.990' AS DateTime), CAST(N'2024-03-14T21:27:47.990' AS DateTime))
INSERT [dbo].[MauSac] ([id], [maMauSac], [ten], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (2, N'm2', N'Xanh ', 1, CAST(N'2024-03-14T21:27:47.990' AS DateTime), CAST(N'2024-03-14T21:27:47.990' AS DateTime))
INSERT [dbo].[MauSac] ([id], [maMauSac], [ten], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (3, N'm3', N'Đỏ', 1, CAST(N'2024-03-14T21:27:47.990' AS DateTime), CAST(N'2024-03-14T21:27:47.990' AS DateTime))
INSERT [dbo].[MauSac] ([id], [maMauSac], [ten], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (4, N'm4', N'Trắng', 1, CAST(N'2024-03-14T21:27:47.990' AS DateTime), CAST(N'2024-03-14T21:27:47.990' AS DateTime))
SET IDENTITY_INSERT [dbo].[MauSac] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([id], [maKH], [hoTen], [ngaySinh], [gioiTinh], [diaChi], [SDT], [email], [matKhau], [vaiTro], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [maNV]) VALUES (1, N'nv6', N'Trần Văn Công', CAST(N'2000-11-11' AS Date), 0, N'HN', N'012345', N'email.com', N'123', N'ADMIN', 1, CAST(N'2024-03-14T21:27:47.990' AS DateTime), CAST(N'2024-03-14T21:27:47.990' AS DateTime), NULL)
INSERT [dbo].[NhanVien] ([id], [maKH], [hoTen], [ngaySinh], [gioiTinh], [diaChi], [SDT], [email], [matKhau], [vaiTro], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [maNV]) VALUES (2, N'nv2', N'Thu Thao', CAST(N'2001-11-11' AS Date), 0, N'HN', N'012346', N'email.com', N'123', N'Nhân Viên', 1, CAST(N'2024-03-14T21:27:47.990' AS DateTime), CAST(N'2024-03-14T21:27:47.990' AS DateTime), NULL)
INSERT [dbo].[NhanVien] ([id], [maKH], [hoTen], [ngaySinh], [gioiTinh], [diaChi], [SDT], [email], [matKhau], [vaiTro], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [maNV]) VALUES (3, N'nv3', N'Duy Công', CAST(N'2002-11-11' AS Date), 1, N'HN', N'1', N'email.com', N'1', N'Nhân Viên', 1, CAST(N'2024-03-14T21:27:47.990' AS DateTime), CAST(N'2024-03-14T21:27:47.990' AS DateTime), NULL)
INSERT [dbo].[NhanVien] ([id], [maKH], [hoTen], [ngaySinh], [gioiTinh], [diaChi], [SDT], [email], [matKhau], [vaiTro], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [maNV]) VALUES (4, N'ql2', N'trần văn d', CAST(N'2003-11-11' AS Date), 1, N'HN', N'012348', N'email.com', N'123', N'Nhân Viên', 0, CAST(N'2024-03-14T21:27:47.990' AS DateTime), CAST(N'2024-03-14T21:27:47.990' AS DateTime), NULL)
INSERT [dbo].[NhanVien] ([id], [maKH], [hoTen], [ngaySinh], [gioiTinh], [diaChi], [SDT], [email], [matKhau], [vaiTro], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [maNV]) VALUES (5, N'nv1', N'trần văn e', CAST(N'2004-11-11' AS Date), 1, N'HN', N'012349', N'email.com', N'123', N'Nhân viên', 1, CAST(N'2024-03-14T21:27:47.990' AS DateTime), CAST(N'2024-03-14T21:27:47.990' AS DateTime), NULL)
INSERT [dbo].[NhanVien] ([id], [maKH], [hoTen], [ngaySinh], [gioiTinh], [diaChi], [SDT], [email], [matKhau], [vaiTro], [trangThaiXoa], [ngayTao], [ngaySuaCuoi], [maNV]) VALUES (6, NULL, N'TranBinh', CAST(N'2004-11-11' AS Date), 1, N'HN', N'123', NULL, N'123', N'ADMIN', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([id], [maSP], [ten], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (1, N'SP0022', N'Fila Z', 0, CAST(N'2024-03-14T21:27:47.987' AS DateTime), CAST(N'2024-04-03T18:50:38.903' AS DateTime))
INSERT [dbo].[SanPham] ([id], [maSP], [ten], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (2, N'SP004', N'Fila Oakmont', 1, CAST(N'2024-03-14T21:27:47.987' AS DateTime), CAST(N'2024-04-03T18:50:09.603' AS DateTime))
INSERT [dbo].[SanPham] ([id], [maSP], [ten], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (3, N'SP2222', N'Fila Oakmont Tr', 1, CAST(N'2024-03-14T21:27:47.987' AS DateTime), CAST(N'2024-04-03T18:48:41.040' AS DateTime))
INSERT [dbo].[SanPham] ([id], [maSP], [ten], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (4, N'SP11', N'Nike max', 1, CAST(N'2024-03-14T21:27:47.987' AS DateTime), CAST(N'2024-04-03T18:48:51.327' AS DateTime))
INSERT [dbo].[SanPham] ([id], [maSP], [ten], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (5, N'SP0022', N'Fila Z', 0, CAST(N'2024-04-01T14:00:44.223' AS DateTime), CAST(N'2024-04-03T18:50:38.903' AS DateTime))
INSERT [dbo].[SanPham] ([id], [maSP], [ten], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (6, N'SP001', N'Airforeone', 1, CAST(N'2024-04-03T10:12:51.630' AS DateTime), CAST(N'2024-04-03T18:47:37.937' AS DateTime))
INSERT [dbo].[SanPham] ([id], [maSP], [ten], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (7, N'NIKE12', N'Air focre one', 1, CAST(N'2024-04-03T18:41:46.137' AS DateTime), CAST(N'2024-04-03T18:49:04.257' AS DateTime))
INSERT [dbo].[SanPham] ([id], [maSP], [ten], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (8, N'KKKKK', N'Air focre ', 1, CAST(N'2024-04-03T18:42:24.777' AS DateTime), CAST(N'2024-04-03T18:42:24.777' AS DateTime))
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[Voucher] ON 

INSERT [dbo].[Voucher] ([id], [maVoucher], [tenVoucher], [loaiVoucher], [ngayBatDau], [ngayKetThuc], [giaTri], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (1, N'VOUCHER001', N'Voucher 1', N'Loai1', CAST(N'2024-03-22' AS Date), CAST(N'2024-04-22' AS Date), CAST(10.00 AS Decimal(18, 2)), 0, CAST(N'2024-03-22T22:48:06.830' AS DateTime), CAST(N'2024-03-22T22:48:06.830' AS DateTime))
INSERT [dbo].[Voucher] ([id], [maVoucher], [tenVoucher], [loaiVoucher], [ngayBatDau], [ngayKetThuc], [giaTri], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (2, N'VOUCHER002', N'Voucher 2', N'Lo?i 2', CAST(N'2024-03-23' AS Date), CAST(N'2024-04-23' AS Date), CAST(12.00 AS Decimal(18, 2)), 0, CAST(N'2024-03-22T22:48:06.830' AS DateTime), CAST(N'2024-03-22T22:48:06.830' AS DateTime))
INSERT [dbo].[Voucher] ([id], [maVoucher], [tenVoucher], [loaiVoucher], [ngayBatDau], [ngayKetThuc], [giaTri], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (3, N'VOUCHER003', N'Voucher 3', N'Lo?i 1', CAST(N'2024-03-24' AS Date), CAST(N'2024-04-24' AS Date), CAST(11.00 AS Decimal(18, 2)), 0, CAST(N'2024-03-22T22:48:06.830' AS DateTime), CAST(N'2024-03-22T22:48:06.830' AS DateTime))
INSERT [dbo].[Voucher] ([id], [maVoucher], [tenVoucher], [loaiVoucher], [ngayBatDau], [ngayKetThuc], [giaTri], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (4, N'VOUCHER006', N'VOUCHER006', N'km sâu', CAST(N'2024-04-22' AS Date), CAST(N'2024-04-22' AS Date), CAST(10.00 AS Decimal(18, 2)), 0, CAST(N'2024-04-01T14:08:30.413' AS DateTime), CAST(N'2024-04-01T14:08:30.413' AS DateTime))
INSERT [dbo].[Voucher] ([id], [maVoucher], [tenVoucher], [loaiVoucher], [ngayBatDau], [ngayKetThuc], [giaTri], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (5, N'VOUCHER007', N'VOUCHER007', N'đợt', CAST(N'2024-04-22' AS Date), CAST(N'2024-04-22' AS Date), CAST(10.00 AS Decimal(18, 2)), 0, CAST(N'2024-04-01T14:12:35.050' AS DateTime), CAST(N'2024-04-01T14:12:35.050' AS DateTime))
INSERT [dbo].[Voucher] ([id], [maVoucher], [tenVoucher], [loaiVoucher], [ngayBatDau], [ngayKetThuc], [giaTri], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (6, N'VOUCHER012', N'VOUCHER008', N'km sâu', CAST(N'2024-04-22' AS Date), CAST(N'2024-04-22' AS Date), CAST(20.00 AS Decimal(18, 2)), 0, CAST(N'2024-04-01T14:22:00.420' AS DateTime), CAST(N'2024-04-01T14:22:00.420' AS DateTime))
INSERT [dbo].[Voucher] ([id], [maVoucher], [tenVoucher], [loaiVoucher], [ngayBatDau], [ngayKetThuc], [giaTri], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (7, N'VOUCHER009', N'Voucher 9', N'đợt', CAST(N'2024-04-23' AS Date), CAST(N'2024-04-23' AS Date), CAST(12.00 AS Decimal(18, 2)), 0, CAST(N'2024-04-01T14:23:50.907' AS DateTime), CAST(N'2024-04-01T14:23:50.907' AS DateTime))
INSERT [dbo].[Voucher] ([id], [maVoucher], [tenVoucher], [loaiVoucher], [ngayBatDau], [ngayKetThuc], [giaTri], [trangThaiXoa], [ngayTao], [ngaySuaCuoi]) VALUES (8, N'VOUCHER12', N'Voucher 2', N'đợt', CAST(N'2024-04-23' AS Date), CAST(N'2024-04-23' AS Date), CAST(12.00 AS Decimal(18, 2)), 0, CAST(N'2024-04-02T23:05:20.360' AS DateTime), CAST(N'2024-04-02T23:05:20.360' AS DateTime))
SET IDENTITY_INSERT [dbo].[Voucher] OFF
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT ((1)) FOR [trangThaiThanhToan]
GO
ALTER TABLE [dbo].[Voucher] ADD  DEFAULT ((0)) FOR [trangThaiXoa]
GO
ALTER TABLE [dbo].[Voucher] ADD  DEFAULT (getdate()) FOR [ngayTao]
GO
ALTER TABLE [dbo].[Voucher] ADD  DEFAULT (getdate()) FOR [ngaySuaCuoi]
GO
ALTER TABLE [dbo].[Anh]  WITH CHECK ADD  CONSTRAINT [FK_Anh_CTSP] FOREIGN KEY([id_CTSP])
REFERENCES [dbo].[ChiTietSanPham] ([id])
GO
ALTER TABLE [dbo].[Anh] CHECK CONSTRAINT [FK_Anh_CTSP]
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_CTSP_ChatLieu] FOREIGN KEY([id_ChatLieu])
REFERENCES [dbo].[ChatLieu] ([id])
GO
ALTER TABLE [dbo].[ChiTietSanPham] CHECK CONSTRAINT [FK_CTSP_ChatLieu]
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_CTSP_Hang] FOREIGN KEY([id_Hang])
REFERENCES [dbo].[Hang] ([id])
GO
ALTER TABLE [dbo].[ChiTietSanPham] CHECK CONSTRAINT [FK_CTSP_Hang]
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_CTSP_KichCo] FOREIGN KEY([id_KichCo])
REFERENCES [dbo].[KichCo] ([id])
GO
ALTER TABLE [dbo].[ChiTietSanPham] CHECK CONSTRAINT [FK_CTSP_KichCo]
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_CTSP_MauSac] FOREIGN KEY([id_MauSac])
REFERENCES [dbo].[MauSac] ([id])
GO
ALTER TABLE [dbo].[ChiTietSanPham] CHECK CONSTRAINT [FK_CTSP_MauSac]
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_CTSP_SanPham] FOREIGN KEY([id_SanPham])
REFERENCES [dbo].[SanPham] ([id])
GO
ALTER TABLE [dbo].[ChiTietSanPham] CHECK CONSTRAINT [FK_CTSP_SanPham]
GO
ALTER TABLE [dbo].[CTSP_KhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_CTSP_KhuyenMai_CTSP] FOREIGN KEY([id_CTSP])
REFERENCES [dbo].[ChiTietSanPham] ([id])
GO
ALTER TABLE [dbo].[CTSP_KhuyenMai] CHECK CONSTRAINT [FK_CTSP_KhuyenMai_CTSP]
GO
ALTER TABLE [dbo].[CTSP_KhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_CTSP_KhuyenMai_KhuyenMai] FOREIGN KEY([id_KhuyenMai])
REFERENCES [dbo].[KhuyenMai] ([id])
GO
ALTER TABLE [dbo].[CTSP_KhuyenMai] CHECK CONSTRAINT [FK_CTSP_KhuyenMai_KhuyenMai]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([id_KhachHang])
REFERENCES [dbo].[KhachHang] ([id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([id_NhanVien])
REFERENCES [dbo].[NhanVien] ([id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_VoucherId] FOREIGN KEY([maVoucher])
REFERENCES [dbo].[Voucher] ([id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_VoucherId]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_HDCT_CTSP] FOREIGN KEY([id_CTSP])
REFERENCES [dbo].[ChiTietSanPham] ([id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK_HDCT_CTSP]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_HDCT_HD] FOREIGN KEY([id_HoaDon])
REFERENCES [dbo].[HoaDon] ([id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK_HDCT_HD]
GO
ALTER TABLE [dbo].[LichSuGia]  WITH CHECK ADD  CONSTRAINT [FK_LichSuGia_CTSP] FOREIGN KEY([id_CTSP])
REFERENCES [dbo].[ChiTietSanPham] ([id])
GO
ALTER TABLE [dbo].[LichSuGia] CHECK CONSTRAINT [FK_LichSuGia_CTSP]
GO
/****** Object:  StoredProcedure [dbo].[CapNhatLichSuGia]    Script Date: 4/3/2024 7:37:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[CapNhatLichSuGia]
    @id_CTSP INT,
    @giaCu DECIMAL(38, 2),
	@giaMoi DECIMAL(38, 2)
AS
BEGIN
   declare @cur_date datetime;
   set @cur_date=GETDATE();
-- C?p nh?t ngay ket thuc 
	if exists (select 1 from lichsugia where id_CTSP = @id_CTSP and gia = @giaCu)
	begin
		update lichSuGia set ngayketThuc = @cur_date where id_CTSP = @id_CTSP and gia = @giaCu
	end
    -- Thêm dòng m?i vào b?ng l?ch s? giá bán
    INSERT INTO lichSuGia (id_CTSP, gia ,ngaybatdau,ngayketthuc)
    VALUES (@id_CTSP, @giaMoi,@cur_date,null)
      
END
GO
USE [master]
GO
ALTER DATABASE [BanGiayTheHans] SET  READ_WRITE 
GO
