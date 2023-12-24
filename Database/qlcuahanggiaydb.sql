-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 24, 2023 lúc 05:15 AM
-- Phiên bản máy phục vụ: 8.0.31
-- Phiên bản PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlcuahanggiaydb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblchitiethd`
--

DROP TABLE IF EXISTS `tblchitiethd`;
CREATE TABLE IF NOT EXISTS `tblchitiethd` (
  `Magiay` varchar(20) NOT NULL,
  `MaHD` varchar(20) NOT NULL,
  `SoLuong` int NOT NULL,
  `GiaBan` int NOT NULL,
  PRIMARY KEY (`Magiay`,`MaHD`),
  KEY `FKMaHD` (`MaHD`),
  KEY `FKMaGiayHD` (`Magiay`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `tblchitiethd`
--

INSERT INTO `tblchitiethd` (`Magiay`, `MaHD`, `SoLuong`, `GiaBan`) VALUES
('SP1', 'HD001', 1, 100),
('SP1', 'HD004', 1, 100),
('SP1', 'HD007', 8, 100),
('SP1', 'HD010', 1, 150),
('SP1', 'HD012', 1, 150),
('SP1', 'HD017', 1, 150),
('SP1', 'HD022', 4, 200),
('SP1', 'HD026', 6, 200),
('SP1', 'HD031', 2, 200),
('SP2', 'HD003', 1, 150),
('SP2', 'HD004', 1, 150),
('SP2', 'HD007', 8, 150),
('SP2', 'HD012', 1, 200),
('SP2', 'HD017', 2, 200),
('SP2', 'HD020', 3, 250),
('SP2', 'HD025', 5, 250),
('SP2', 'HD029', 3, 350),
('SP2', 'HD031', 3, 350),
('SP3', 'HD001', 1, 200),
('SP3', 'HD003', 1, 200),
('SP3', 'HD004', 2, 200),
('SP3', 'HD007', 6, 200),
('SP3', 'HD021', 4, 300),
('SP3', 'HD027', 3, 300),
('SP3', 'HD030', 5, 350),
('SP3', 'HD031', 1, 350),
('SP4', 'HD002', 1, 250),
('SP4', 'HD003', 1, 250),
('SP4', 'HD004', 2, 250),
('SP4', 'HD006', 1, 250),
('SP4', 'HD007', 5, 250),
('SP4', 'HD019', 2, 50),
('SP4', 'HD021', 3, 100),
('SP4', 'HD022', 2, 100),
('SP4', 'HD024', 3, 100),
('SP4', 'HD028', 3, 100),
('SP5', 'HD002', 1, 300),
('SP5', 'HD006', 3, 100),
('SP5', 'HD007', 6, 300),
('SP5', 'HD008', 3, 350),
('SP5', 'HD011', 1, 350),
('SP5', 'HD027', 2, 350),
('SP6', 'HD005', 2, 350),
('SP6', 'HD007', 8, 350),
('SP6', 'HD021', 5, 400),
('SP6', 'HD025', 3, 400),
('SP6', 'HD030', 2, 450);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblchitietpn`
--

DROP TABLE IF EXISTS `tblchitietpn`;
CREATE TABLE IF NOT EXISTS `tblchitietpn` (
  `MaGiay` varchar(20) NOT NULL,
  `MaPN` varchar(20) NOT NULL,
  `SoLuong` int NOT NULL,
  `GiaNhap` int NOT NULL,
  PRIMARY KEY (`MaPN`,`MaGiay`),
  KEY `FKMaPN` (`MaPN`),
  KEY `FKMaGiayPN` (`MaGiay`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `tblchitietpn`
--

INSERT INTO `tblchitietpn` (`MaGiay`, `MaPN`, `SoLuong`, `GiaNhap`) VALUES
('SP1', 'PN001', 10, 50),
('SP2', 'PN001', 10, 100),
('SP3', 'PN001', 10, 150),
('SP4', 'PN001', 10, 200),
('SP5', 'PN001', 10, 250),
('SP6', 'PN001', 10, 300),
('SP5', 'PN002', 10, 300),
('SP1', 'PN003', 3, 100),
('SP2', 'PN003', 3, 150),
('SP3', 'PN003', 3, 200),
('SP4', 'PN003', 3, 250),
('SP1', 'PN004', 15, 150),
('SP2', 'PN004', 15, 200),
('SP6', 'PN004', 15, 350),
('SP3', 'PN005', 12, 250),
('SP4', 'PN005', 15, 50),
('SP5', 'PN006', 2, 350),
('SP2', 'PN007', 1, 250),
('SP2', 'PN008', 1, 300),
('SP3', 'PN009', 2, 300),
('SP6', 'PN009', 1, 400);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblhoadon`
--

DROP TABLE IF EXISTS `tblhoadon`;
CREATE TABLE IF NOT EXISTS `tblhoadon` (
  `MaHD` varchar(20) NOT NULL,
  `MaNV` varchar(20) NOT NULL,
  `MaKH` varchar(20) NOT NULL,
  `NgayBan` varchar(20) NOT NULL,
  `TongTien` double NOT NULL,
  PRIMARY KEY (`MaHD`),
  KEY `FKMaNVHD` (`MaNV`),
  KEY `FKMaKHHD` (`MaKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `tblhoadon`
--

INSERT INTO `tblhoadon` (`MaHD`, `MaNV`, `MaKH`, `NgayBan`, `TongTien`) VALUES
('HD001', 'admin', 'KH1', '08 Oct 2023', 300),
('HD002', 'admin', 'KH2', '08 Oct 2023', 550),
('HD003', 'admin', 'KH5', '08 Oct 2023', 520),
('HD004', 'admin', 'KH6', '08 Oct 2023', 1000),
('HD005', 'admin', 'KH3', '08 Oct 2023', 700),
('HD006', 'admin', 'KH1', '08 Oct 2023', 550),
('HD007', 'admin', 'KH2', '08 Oct 2023', 7690),
('HD008', 'admin', 'KH1', '08 Dec 2023', 1050),
('HD010', 'admin', 'KH6', '13 Dec 2023', 75),
('HD011', 'admin', 'KH6', '13 Dec 2023', 350),
('HD012', 'admin', 'KH4', '14 Dec 2023', 175),
('HD017', 'admin', 'KH1', '20 Dec 2023', 550),
('HD018', 'admin', 'KH1', '20 Dec 2023', 250),
('HD019', 'admin', 'KH1', '20 Dec 2023', 100),
('HD020', 'admin', 'KH1', '20 Dec 2023', 750),
('HD021', 'admin', 'KH1', '22 Dec 2023', 3500),
('HD022', 'admin', 'KH1', '22 Dec 2023', 1000),
('HD023', 'admin', 'KH1', '22 Dec 2023', 0),
('HD024', 'admin', 'KH1', '22 Dec 2023', 300),
('HD025', 'admin', 'KH1', '22 Dec 2023', 2450),
('HD026', 'admin', 'KH1', '22 Dec 2023', 1200),
('HD027', 'admin', 'KH1', '22 Dec 2023', 1600),
('HD028', 'admin', 'KH1', '22 Dec 2023', 300),
('HD029', 'admin', 'KH1', '23 Dec 2023', 1050),
('HD030', 'admin', 'KH1', '23 Dec 2023', 2650),
('HD031', 'admin', 'KH1', '24 Dec 2023', 1800);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblkhachhang`
--

DROP TABLE IF EXISTS `tblkhachhang`;
CREATE TABLE IF NOT EXISTS `tblkhachhang` (
  `MaKH` varchar(20) NOT NULL,
  `Ho` varchar(20) NOT NULL,
  `Ten` varchar(20) NOT NULL,
  `GioiTinh` varchar(20) NOT NULL,
  `DiaChi` varchar(40) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Loai` varchar(20) NOT NULL,
  `TongChiTieu` double NOT NULL,
  PRIMARY KEY (`MaKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `tblkhachhang`
--

INSERT INTO `tblkhachhang` (`MaKH`, `Ho`, `Ten`, `GioiTinh`, `DiaChi`, `Email`, `Loai`, `TongChiTieu`) VALUES
('KH1', 'Nguyễn Tuấn', 'Anh', 'Nam', '12 Võ Nguyên Giáp, Phường 15, Quận 3', 'nguyenanh@gmail.com', 'vip', 58939.3),
('KH2', 'Tăng Chí', 'Chung', 'Nam', '87A Phạm Văn Hai, Phường 5, Tân Bình', 'chungtang@gmail.com', 'đặc biệt', 0),
('KH3', 'Võ Văn Gia', 'Bảo', 'Nam', '115 Thích Quảng Đức, Phú Thọ, Tp Thủ Dầu', 'baovo@gmail.com', 'vip', 98495),
('KH4', 'Nguyễn Đào', 'Kim', 'Nữ', '21 Hoàng Diệu, Phường 3, Quận 9', 'kimnguyen@gmail.com', 'bình thường', 53576),
('KH5', 'Trần Lê Anh', 'Đào', 'Nữ', '111 Trần Mão, phường 10, Quận 5', 'daotran@gmail.com', 'bình thường', 1150),
('KH6', 'Nguyễn Văn', 'An', 'Nam', '74 Đường 36, phường 7, Thủ Đức', 'annguyen@gmail.com', 'bình thường', 6740);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblloai`
--

DROP TABLE IF EXISTS `tblloai`;
CREATE TABLE IF NOT EXISTS `tblloai` (
  `Maloai` varchar(20) NOT NULL,
  `Tenloai` varchar(20) NOT NULL,
  PRIMARY KEY (`Maloai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `tblloai`
--

INSERT INTO `tblloai` (`Maloai`, `Tenloai`) VALUES
('1', 'Sandal'),
('2', 'Running'),
('3', 'Sneaker'),
('4', 'Basketball'),
('5', 'Soccer');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblmausac`
--

DROP TABLE IF EXISTS `tblmausac`;
CREATE TABLE IF NOT EXISTS `tblmausac` (
  `Mamau` varchar(20) NOT NULL,
  `Tenmau` varchar(20) NOT NULL,
  PRIMARY KEY (`Mamau`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `tblmausac`
--

INSERT INTO `tblmausac` (`Mamau`, `Tenmau`) VALUES
('BLK', 'Đen'),
('BLU', 'Xanh dương'),
('GR', 'Xanh lá'),
('ORG', 'Cam'),
('WT', 'Trắng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblnhacungcap`
--

DROP TABLE IF EXISTS `tblnhacungcap`;
CREATE TABLE IF NOT EXISTS `tblnhacungcap` (
  `MaNCC` varchar(20) NOT NULL,
  `TenNCC` varchar(20) NOT NULL,
  `DiaChi` varchar(40) NOT NULL,
  `Email` varchar(40) NOT NULL,
  PRIMARY KEY (`MaNCC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `tblnhacungcap`
--

INSERT INTO `tblnhacungcap` (`MaNCC`, `TenNCC`, `DiaChi`, `Email`) VALUES
('NCC1', 'Fox Shop', '75 Điện Biên Phủ, phường ĐaKao, Quận 1', 'foxshop@gmail.com'),
('NCC2', 'ASEAN SHOES', 'Thôn Phụ Khang, Xã Đường Lâm, Thị Xã Sơn', 'aseanshoe916@gmail.com'),
('NCC3', 'Fugashin Shoemaker', 'Số 429/3, KP. Thạnh Bình, P. An Thạnh', 'fugashinshoemaker@gmail.com'),
('NCC4', 'Giày da Huy Hoàng', '200/13 Ấp Chánh 1, X. Tân Xuân', 'huyhoang@gmail.com'),
('NCC5', 'Tầm xa', 'Số 1166 Nguyễn Bỉnh Khiêm, P. Đông Hải', 'tamxa@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblnhanvien`
--

DROP TABLE IF EXISTS `tblnhanvien`;
CREATE TABLE IF NOT EXISTS `tblnhanvien` (
  `MaNV` varchar(20) NOT NULL,
  `Ho` varchar(30) NOT NULL,
  `Ten` varchar(10) NOT NULL,
  `GioiTinh` varchar(10) NOT NULL,
  `DiaChi` varchar(50) NOT NULL,
  `DienThoai` int NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Luong` int NOT NULL,
  PRIMARY KEY (`MaNV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `tblnhanvien`
--

INSERT INTO `tblnhanvien` (`MaNV`, `Ho`, `Ten`, `GioiTinh`, `DiaChi`, `DienThoai`, `Email`, `Luong`) VALUES
('admin', 'Nguyễn Văn', 'A', 'Nam', '45A Lý Tự Trọng, Phường Bến Nghé, Quận 1, TP.HCM', 912345678, 'admin@gmail.com', 15000000),
('id1', 'Nguyễn Thị', 'Thư', 'Nữ', '216 Võ Văn Ngân, Phường Bình Thọ, TP. Thủ Đức, TP.', 965495254, 'nguyenvanan@gmail.co', 5000000),
('id2', 'Tàu Văn', 'Phà', 'Nam', '123 Lạc Văn Biển, Phường An Phú, Quận 6, TP.HCM', 963548244, 'tauvanpha@gmail.com', 3000000),
('id3', 'Trần', 'Dần', 'Nam', '190 Quang Trung, Phường 10, Quận Gò Vấp, TP.HCM', 985462955, 'trandan@gmail.com', 3000000),
('id4', 'Lê Văn', 'Hoàng', 'Nữ', '17 Cộng Hòa, Phường 4, Quận Tân Bình, TP.HCM', 947536199, 'levanhoang@gmail.com', 3000000),
('id5', 'Nguyễn Thị Lê', 'Kim', 'Nữ', '10 Phổ Quang, Phường 2, Quận Tân Bình, TP.HCM', 998654255, 'nguyenthilekim@gmail', 3000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblphieunhap`
--

DROP TABLE IF EXISTS `tblphieunhap`;
CREATE TABLE IF NOT EXISTS `tblphieunhap` (
  `MaPN` varchar(20) NOT NULL,
  `MaNCC` varchar(20) NOT NULL,
  `MaNV` varchar(20) NOT NULL,
  `NgayNhap` varchar(20) NOT NULL,
  `TongTien` double NOT NULL,
  PRIMARY KEY (`MaPN`),
  KEY `FKMaNCC` (`MaNCC`),
  KEY `FKMaNV` (`MaNV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `tblphieunhap`
--

INSERT INTO `tblphieunhap` (`MaPN`, `MaNCC`, `MaNV`, `NgayNhap`, `TongTien`) VALUES
('PN001', 'NCC1', 'admin', '08 Dec 2023', 10500),
('PN002', 'NCC2', 'admin', '08 Dec 2023', 3000),
('PN003', 'NCC3', 'admin', '11 Dec 2023', 2100),
('PN004', 'NCC1', 'admin', '20 Dec 2023', 10500),
('PN005', 'NCC1', 'admin', '20 Dec 2023', 3750),
('PN006', 'NCC1', 'admin', '22 Dec 2023', 700),
('PN007', 'NCC1', 'admin', '22 Dec 2023', 250),
('PN008', 'NCC1', 'admin', '22 Dec 2023', 300),
('PN009', 'NCC1', 'admin', '23 Dec 2023', 1000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblsanpham`
--

DROP TABLE IF EXISTS `tblsanpham`;
CREATE TABLE IF NOT EXISTS `tblsanpham` (
  `Magiay` varchar(20) NOT NULL,
  `Tengiay` varchar(20) NOT NULL,
  `Soluong` int NOT NULL,
  `Gia` int NOT NULL,
  `Size` int NOT NULL,
  `Doituongsd` varchar(20) NOT NULL,
  `Chatlieu` varchar(20) NOT NULL,
  `Maloai` varchar(20) NOT NULL,
  `Maxx` varchar(20) NOT NULL,
  `Mamau` varchar(20) NOT NULL,
  `Mathuonghieu` varchar(20) NOT NULL,
  PRIMARY KEY (`Magiay`),
  KEY `FKMaXuatXu` (`Maxx`),
  KEY `FKMaThuonghieu` (`Mathuonghieu`),
  KEY `FKMaMau` (`Mamau`),
  KEY `FKMaLoai` (`Maloai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `tblsanpham`
--

INSERT INTO `tblsanpham` (`Magiay`, `Tengiay`, `Soluong`, `Gia`, `Size`, `Doituongsd`, `Chatlieu`, `Maloai`, `Maxx`, `Mamau`, `Mathuonghieu`) VALUES
('SP1', 'Adidas Galaxy', 3, 200, 42, 'Nam', 'Vải', '3', 'US', 'WT', 'AD'),
('SP2', 'Sandal ZX', 3, 350, 40, 'Nam', 'Vải', '1', 'VN', 'BLK', 'Myn'),
('SP3', 'Sandal Bitiss', 4, 350, 40, 'Tất cả', 'Vải', '1', 'VN', 'WT', 'BT'),
('SP4', 'Nike Air Force', 5, 100, 35, 'Nữ', 'Vải', '3', 'CN', 'WT', 'NK'),
('SP5', 'Nike Metcon', 4, 350, 42, 'Nam', 'Vải', '3', 'ID', 'BLK', 'NK'),
('SP6', 'Biti\'s Hunter', 6, 450, 40, 'Nam', 'Vải', '3', 'VN', 'WT', 'BT'),
('SP7', 'Bitis Basic', 6, 200, 41, 'Tất cả', 'Vải', '1', 'VN', 'BLK', 'BT');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltaikhoan`
--

DROP TABLE IF EXISTS `tbltaikhoan`;
CREATE TABLE IF NOT EXISTS `tbltaikhoan` (
  `tendangnhap` varchar(10) NOT NULL,
  `matkhau` varchar(20) NOT NULL,
  PRIMARY KEY (`tendangnhap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `tbltaikhoan`
--

INSERT INTO `tbltaikhoan` (`tendangnhap`, `matkhau`) VALUES
('admin', 'admin'),
('id1', '123'),
('id2', '123'),
('id3', '123'),
('id4', '123'),
('id5', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblthuonghieu`
--

DROP TABLE IF EXISTS `tblthuonghieu`;
CREATE TABLE IF NOT EXISTS `tblthuonghieu` (
  `Mathuonghieu` varchar(20) NOT NULL,
  `Tenthuonghieu` varchar(30) NOT NULL,
  `Diachi` varchar(40) NOT NULL,
  `Email` varchar(30) NOT NULL,
  PRIMARY KEY (`Mathuonghieu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `tblthuonghieu`
--

INSERT INTO `tblthuonghieu` (`Mathuonghieu`, `Tenthuonghieu`, `Diachi`, `Email`) VALUES
('AD', 'Adidas', 'USA', 'adidas@gmail.com'),
('BT', 'Bitis', 'VietNam', 'bitis@gmial.com'),
('Myn', 'Myn Shoes', 'Đà Nẵng', 'mynshoes@gmail.com'),
('NK', 'Nike', 'USA', 'nike@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblxuatxu`
--

DROP TABLE IF EXISTS `tblxuatxu`;
CREATE TABLE IF NOT EXISTS `tblxuatxu` (
  `Maxx` varchar(20) NOT NULL,
  `Tennuoc` varchar(20) NOT NULL,
  PRIMARY KEY (`Maxx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `tblxuatxu`
--

INSERT INTO `tblxuatxu` (`Maxx`, `Tennuoc`) VALUES
('CN', 'China'),
('ID', 'Indonesia'),
('UK', 'United Kingdom'),
('US', 'USA'),
('VN', 'VietNam');

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tblchitiethd`
--
ALTER TABLE `tblchitiethd`
  ADD CONSTRAINT `FKMagGiayHD` FOREIGN KEY (`Magiay`) REFERENCES `tblsanpham` (`Magiay`),
  ADD CONSTRAINT `FKMaHD` FOREIGN KEY (`MaHD`) REFERENCES `tblhoadon` (`MaHD`);

--
-- Các ràng buộc cho bảng `tblchitietpn`
--
ALTER TABLE `tblchitietpn`
  ADD CONSTRAINT `FKMaGiayPN` FOREIGN KEY (`MaGiay`) REFERENCES `tblsanpham` (`Magiay`),
  ADD CONSTRAINT `FKMaPN` FOREIGN KEY (`MaPN`) REFERENCES `tblphieunhap` (`MaPN`);

--
-- Các ràng buộc cho bảng `tblhoadon`
--
ALTER TABLE `tblhoadon`
  ADD CONSTRAINT `FKMaKHHD` FOREIGN KEY (`MaKH`) REFERENCES `tblkhachhang` (`MaKH`),
  ADD CONSTRAINT `FKMaNVHD` FOREIGN KEY (`MaNV`) REFERENCES `tblnhanvien` (`MaNV`);

--
-- Các ràng buộc cho bảng `tblphieunhap`
--
ALTER TABLE `tblphieunhap`
  ADD CONSTRAINT `FKMaNCC` FOREIGN KEY (`MaNCC`) REFERENCES `tblnhacungcap` (`MaNCC`),
  ADD CONSTRAINT `FKMaNV` FOREIGN KEY (`MaNV`) REFERENCES `tblnhanvien` (`MaNV`);

--
-- Các ràng buộc cho bảng `tblsanpham`
--
ALTER TABLE `tblsanpham`
  ADD CONSTRAINT `FKMaLoai` FOREIGN KEY (`Maloai`) REFERENCES `tblloai` (`Maloai`),
  ADD CONSTRAINT `FKMaMau` FOREIGN KEY (`Mamau`) REFERENCES `tblmausac` (`Mamau`),
  ADD CONSTRAINT `FKMaThuonghieu` FOREIGN KEY (`Mathuonghieu`) REFERENCES `tblthuonghieu` (`Mathuonghieu`),
  ADD CONSTRAINT `FKMaXuatXu` FOREIGN KEY (`Maxx`) REFERENCES `tblxuatxu` (`Maxx`);

--
-- Các ràng buộc cho bảng `tbltaikhoan`
--
ALTER TABLE `tbltaikhoan`
  ADD CONSTRAINT `FKMaNVTK` FOREIGN KEY (`tendangnhap`) REFERENCES `tblnhanvien` (`MaNV`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
