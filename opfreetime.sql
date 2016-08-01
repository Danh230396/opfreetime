-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2016 at 09:47 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `opfreetime`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` int(11) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `code`, `published`, `ordering`) VALUES
(1, 'An Giang', '805', 1, 63),
(2, 'Bà Rịa - Vũng Tầu', '717', 1, 46),
(3, 'Bình Dương', '711', 1, 45),
(4, 'Bình Phước', '707', 1, 44),
(5, 'Bình Thuận', '715', 1, 43),
(6, 'Bình Định', '507', 1, 42),
(7, 'Bắc Giang', '221', 1, 41),
(8, 'Bắc Kạn', '207', 1, 40),
(9, 'Bắc Ninh', '223', 1, 39),
(10, 'Bến Tre', '811', 1, 38),
(11, 'Cao Bằng', '203', 1, 37),
(12, 'Cà Mau', '823', 1, 36),
(13, 'Cần Thơ', '815', 1, 35),
(14, 'Gia Lai', '603', 1, 34),
(15, 'Hà Giang', '201', 1, 47),
(16, 'Hà Nam', '111', 1, 48),
(17, 'Hà Nội', '101', 1, 49),
(18, 'Hà Tây', '105', 1, 62),
(19, 'Hà Tĩnh', '405', 1, 61),
(20, 'Hòa Bình', '305', 1, 60),
(21, 'Hưng Yên', '109', 1, 59),
(22, 'Hải Dương', '107', 1, 58),
(23, 'Hải Phòng', '103', 1, 57),
(24, 'Hồ Chí Minh', '701', 1, 1),
(25, 'Khánh Hòa', '511', 1, 56),
(27, 'Kiên Giang', '813', 1, 55),
(28, 'Kon Tum', '601', 1, 54),
(29, 'Lai Châu', '301', 1, 53),
(30, 'Long An', '801', 1, 52),
(31, 'Lào Cai', '205', 1, 51),
(32, 'Lâm Đồng', '703', 1, 50),
(33, 'Lạng Sơn', '209', 1, 33),
(34, 'Nam Định', '113', 1, 32),
(35, 'Nghệ An', '403', 1, 15),
(36, 'Ninh Bình', '117', 1, 14),
(37, 'Ninh Thuận', '705', 1, 13),
(38, 'Phú Thọ', '217', 1, 12),
(39, 'Phú Yên', '509', 1, 11),
(40, 'Quảng Bình', '407', 1, 10),
(41, 'Quảng Nam', '503', 1, 9),
(42, 'Quảng Ngãi', '505', 1, 7),
(43, 'Quảng Ninh', '225', 1, 6),
(44, 'Quảng Trị', '409', 1, 5),
(45, 'Sơn La', '303', 1, 4),
(46, 'Thanh Hóa', '401', 1, 3),
(47, 'Thái Bình', '115', 1, 2),
(48, 'Thái Nguyên', '215', 1, 16),
(49, 'Thừa Thiên - Huế', '411', 1, 17),
(50, 'Tiền Giang', '807', 1, 31),
(51, 'Trà Vinh', '817', 1, 30),
(52, 'Tuyên Quang', '211', 1, 29),
(53, 'Tây Ninh', '709', 1, 28),
(54, 'Vĩnh Long', '809', 1, 27),
(55, 'Vĩnh Phúc', '104', 1, 26),
(56, 'Yên Bái', '213', 1, 25),
(57, 'Đà Nẵng', '501', 1, 24),
(58, 'Đắk Lắk', '605', 1, 23),
(59, 'Đồng Nai', '713', 1, 22),
(60, 'Đồng Tháp', '803', 1, 21),
(61, 'Bạc Liêu', '821', 1, 20),
(62, 'Sóc Trăng', '819', 1, 19),
(63, 'Hậu Giang', '825', 1, 18),
(64, 'Đắk Nông', '607', 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(11) NOT NULL,
  `published` int(11) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `code`, `city_id`, `published`, `ordering`) VALUES
(2, 'Quận Ba Đình', '10101', 17, 1, 5),
(3, 'Quận Tây Hồ', '10103', 17, 1, 5),
(4, 'Quận Hoàn Kiếm', '10105', 17, 1, 5),
(5, 'Quận Hai Bà Trưng', '10107', 17, 1, 5),
(6, 'Quận Đống Đa', '10109', 17, 1, 5),
(7, 'Quận Thanh Xuân', '10111', 17, 1, 5),
(8, 'Quận Cầu Giấy', '10113', 17, 1, 5),
(9, 'Huyện Sóc Sơn', '10115', 17, 1, 5),
(10, 'Huyện Đông Anh', '10117', 17, 1, 5),
(11, 'Huyện Gia Lâm', '10119', 17, 1, 5),
(12, 'Huyện Từ Liêm', '10121', 17, 1, 5),
(13, 'Huyện Thanh Trì', '10123', 17, 1, 5),
(15, 'Quận Hồng Bàng', '10301', 23, 1, 5),
(16, 'Quận Ngô Quyền', '10303', 23, 1, 5),
(17, 'Quận Lê Chân', '10305', 23, 1, 5),
(18, 'Quận Kiến An', '10307', 23, 1, 5),
(19, 'Thị xã Đồ Sơn', '10309', 23, 1, 5),
(20, 'Huyện Thuỷ Nguyên', '10311', 23, 1, 5),
(21, 'Huyện An Hải', '10313', 23, 1, 5),
(22, 'Huyện An Lão', '10315', 23, 1, 5),
(23, 'Huyện Kiến Thuỵ', '10317', 23, 1, 5),
(24, 'Huyện Tiên Lãng', '10319', 23, 1, 5),
(25, 'Huyện Vĩnh Bảo', '10321', 23, 1, 5),
(26, 'Huyện Cát Hải', '10323', 23, 1, 5),
(27, 'Huyện Bạch Long Vĩ', '10325', 23, 1, 5),
(29, 'Thị xã Vĩnh Yên', '10401', 55, 1, 5),
(30, 'Huyện Lập Thạch', '10403', 55, 1, 5),
(31, 'Huyện Tam Dương', '10405', 55, 1, 5),
(32, 'Huyện Vĩnh Tường', '10407', 55, 1, 5),
(33, 'Huyện Yên Lạc', '10409', 55, 1, 5),
(34, 'Huyện Mê Linh', '10411', 55, 1, 5),
(35, 'Huyện Bình Xuyên', '10413', 55, 1, 5),
(37, 'Thị xã Hà Đông', '10501', 18, 1, 5),
(38, 'Thị xã Sơn Tây', '10503', 18, 1, 5),
(39, 'Huyện Ba Vì', '10505', 18, 1, 5),
(40, 'Huyện Phúc Thọ', '10507', 18, 1, 5),
(41, 'Huyện Đan Phượng', '10509', 18, 1, 5),
(42, 'Huyện Thạch Thất', '10511', 18, 1, 5),
(43, 'Huyện Hoài Đức', '10513', 18, 1, 5),
(44, 'Huyện Quốc Oai', '10515', 18, 1, 5),
(45, 'Huyện Chương Mỹ', '10517', 18, 1, 5),
(46, 'Huyện Thanh Oai', '10519', 18, 1, 5),
(47, 'Huyện Thường Tín', '10521', 18, 1, 5),
(48, 'Huyện Mỹ Đức', '10523', 18, 1, 5),
(49, 'Huyện ứng Hòa', '10525', 18, 1, 5),
(50, 'Huyện Phú Xuyên', '10527', 18, 1, 5),
(52, 'Thị xã Bắc Ninh', '22301', 9, 1, 5),
(53, 'Huyện Yên Phong', '22303', 9, 1, 5),
(54, 'Huyện Quế Võ', '22305', 9, 1, 5),
(55, 'Huyện Tiên Du', '22307', 9, 1, 5),
(56, 'Huyện Từ Sơn', '22308', 9, 1, 5),
(57, 'Huyện Thuận Thành', '22309', 9, 1, 5),
(58, 'Huyện Lương Tài', '22311', 9, 1, 5),
(59, 'Huyện Gia Bình', '22312', 9, 1, 5),
(61, 'Thành phố Hải Dương', '10701', 22, 1, 5),
(62, 'Huyện Chí Linh', '10703', 22, 1, 5),
(63, 'Huyện Nam Sách', '10705', 22, 1, 5),
(64, 'Huyện Thanh Hà', '10707', 22, 1, 5),
(65, 'Huyện Kinh Môn', '10709', 22, 1, 5),
(66, 'Huyện Kim Thành', '10711', 22, 1, 5),
(67, 'Huyện Gia Lộc', '10713', 22, 1, 5),
(68, 'Huyện Tứ Kỳ', '10715', 22, 1, 5),
(69, 'Huyện Cẩm Giàng', '10717', 22, 1, 5),
(70, 'Huyện Bình Giang', '10719', 22, 1, 5),
(71, 'Huyện Thanh Miện', '10721', 22, 1, 5),
(72, 'Huyện Ninh Giang', '10723', 22, 1, 5),
(74, 'Thị xã Hưng Yên', '10901', 21, 1, 5),
(75, 'Huyện Văn Lâm', '10902', 21, 1, 5),
(76, 'Huyện Mỹ Văn', '10903', 21, 1, 5),
(77, 'Huyện Yên Mỹ', '10904', 21, 1, 5),
(78, 'Huyện Châu Giang', '10905', 21, 1, 5),
(79, 'Huyện Khoái Châu', '10906', 21, 1, 5),
(80, 'Huyện Ân Thi', '10907', 21, 1, 5),
(81, 'Huyện Kim Động', '10909', 21, 1, 5),
(82, 'Huyện Phù Cừ', '10911', 21, 1, 5),
(83, 'Huyện Tiên Lữ', '10913', 21, 1, 5),
(85, 'Thị xã Phủ Lý', '11101', 16, 1, 5),
(86, 'Huyện Duy Tiên', '11103', 16, 1, 5),
(87, 'Huyện Kim Bảng', '11105', 16, 1, 5),
(88, 'Huyện Lý Nhân', '11107', 16, 1, 5),
(89, 'Huyện Thanh Liêm', '11109', 16, 1, 5),
(90, 'Huyện Bình Lục', '11111', 16, 1, 5),
(92, 'Thành phố Nam Định', '11301', 34, 1, 5),
(93, 'Huyện Vụ Bản', '11303', 34, 1, 5),
(94, 'Huyện Mỹ Lộc', '11305', 34, 1, 5),
(95, 'Huyện ý Yên', '11307', 34, 1, 5),
(96, 'Huyện Nam Trực', '11309', 34, 1, 5),
(97, 'Huyện Trực Ninh', '11311', 34, 1, 5),
(98, 'Huyện Xuân Trường', '11313', 34, 1, 5),
(99, 'Huyện Giao Thủy', '11315', 34, 1, 5),
(100, 'Huyện Nghĩa Hưng', '11317', 34, 1, 5),
(101, 'Huyện Hải Hậu', '11319', 34, 1, 5),
(103, 'Thị xã Thái Bình', '11501', 47, 1, 5),
(104, 'Huyện Quỳnh Phụ', '11503', 47, 1, 5),
(105, 'Huyện Hưng Hà', '11505', 47, 1, 5),
(106, 'Huyện Thái Thụy', '11507', 47, 1, 5),
(107, 'Huyện Đông Hưng', '11509', 47, 1, 5),
(108, 'Huyện Vũ Thư', '11511', 47, 1, 5),
(109, 'Huyện Kiến Xương', '11513', 47, 1, 5),
(110, 'Huyện Tiền Hải', '11515', 47, 1, 5),
(112, 'Thị xã Ninh Bình', '11701', 36, 1, 5),
(113, 'Thị xã Tam Điệp', '11703', 36, 1, 5),
(114, 'Huyện Nho Quan', '11705', 36, 1, 5),
(115, 'Huyện Gia Viễn', '11707', 36, 1, 5),
(116, 'Huyện Hoa Lư', '11709', 36, 1, 5),
(117, 'Huyện Yên Mô', '11711', 36, 1, 5),
(118, 'Huyện Yên Khánh', '11713', 36, 1, 5),
(119, 'Huyện Kim Sơn', '11715', 36, 1, 5),
(121, 'Thị xã Hà Giang', '20101', 15, 1, 5),
(122, 'Huyện Đồng Văn', '20103', 15, 1, 5),
(123, 'Huyện Mèo Vạc', '20105', 15, 1, 5),
(124, 'Huyện Yên Minh', '20107', 15, 1, 5),
(125, 'Huyện Quản Bạ', '20109', 15, 1, 5),
(126, 'Huyện Bắc Mê', '20111', 15, 1, 5),
(127, 'Huyện Hoàng Su Phì', '20113', 15, 1, 5),
(128, 'Huyện Vị Xuyên', '20115', 15, 1, 5),
(129, 'Huyện Xín Mần', '20117', 15, 1, 5),
(130, 'Huyện Bắc Quang', '20119', 15, 1, 5),
(132, 'Thị xã Cao Bằng', '20301', 11, 1, 5),
(133, 'Huyện Bảo Lạc', '20303', 11, 1, 5),
(134, 'Huyện Hà Quảng', '20305', 11, 1, 5),
(135, 'Huyện Thông Nông', '20307', 11, 1, 5),
(136, 'Huyện Trà Lĩnh', '20309', 11, 1, 5),
(137, 'Huyện Trùng Khánh', '20311', 11, 1, 5),
(138, 'Huyện Nguyên Bình', '20313', 11, 1, 5),
(139, 'Huyện Hoà An', '20315', 11, 1, 5),
(140, 'Huyện Quảng Hoà', '20317', 11, 1, 5),
(141, 'Huyện Hạ Lang', '20319', 11, 1, 5),
(142, 'Huyện Thạch An', '20321', 11, 1, 5),
(144, 'Thị xã Lào Cai', '20501', 31, 1, 5),
(145, 'Thị xã Cam Đường', '20503', 31, 1, 5),
(146, 'Huyện Mường Khương', '20505', 31, 1, 5),
(147, 'Huyện Bát Xát', '20507', 31, 1, 5),
(148, 'Huyện Bắc Hà', '20509', 31, 1, 5),
(149, 'Huyện Bảo Thắng', '20511', 31, 1, 5),
(150, 'Huyện Sa Pa', '20513', 31, 1, 5),
(151, 'Huyện Bảo Yên', '20515', 31, 1, 5),
(152, 'Huyện Than Uyên', '20517', 31, 1, 5),
(153, 'Huyện Văn Bàn', '20519', 31, 1, 5),
(155, 'Thị xã Bắc Kạn', '20701', 8, 1, 5),
(156, 'Huyện Ba Bể', '20703', 8, 1, 5),
(157, 'Huyện Ngân Sơn', '20705', 8, 1, 5),
(158, 'Huyện Chợ Đồn', '20707', 8, 1, 5),
(159, 'Huyện Na Rì', '20709', 8, 1, 5),
(160, 'Huyện Bạch Thông', '20711', 8, 1, 5),
(161, 'Huyện Chợ Mới', '20713', 8, 1, 5),
(163, 'Thị xã Lạng Sơn', '20901', 33, 1, 5),
(164, 'Huyện Tràng Định', '20903', 33, 1, 5),
(165, 'Huyện Văn Lãng', '20905', 33, 1, 5),
(166, 'Huyện Bình Gia', '20907', 33, 1, 5),
(167, 'Huyện Bắc Sơn', '20909', 33, 1, 5),
(168, 'Huyện Văn Quan', '20911', 33, 1, 5),
(169, 'Huyện Cao Lộc', '20913', 33, 1, 5),
(170, 'Huyện Lộc Bình', '20915', 33, 1, 5),
(171, 'Huyện Chi Lăng', '20917', 33, 1, 5),
(172, 'Huyện Đình Lập', '20919', 33, 1, 5),
(173, 'Huyện Hữu Lũng', '20921', 33, 1, 5),
(175, 'Thị xã Tuyên Quang', '21101', 52, 1, 5),
(176, 'Huyện Nà Hang', '21103', 52, 1, 5),
(177, 'Huyện Chiêm Hóa', '21105', 52, 1, 5),
(178, 'Huyện Hàm Yên', '21107', 52, 1, 5),
(179, 'Huyện Yên Sơn', '21109', 52, 1, 5),
(180, 'Huyện Sơn Dương', '21111', 52, 1, 5),
(182, 'Thị xã Yên Bái', '21301', 56, 1, 5),
(183, 'Thị xã Nghĩa Lộ', '21303', 56, 1, 5),
(184, 'Huyện Lục Yên', '21305', 56, 1, 5),
(185, 'Huyện Văn Yên', '21307', 56, 1, 5),
(186, 'Huyện Mù Căng Chải', '21309', 56, 1, 5),
(187, 'Huyện Trấn Yên', '21311', 56, 1, 5),
(188, 'Huyện Yên Bình', '21313', 56, 1, 5),
(189, 'Huyện Văn Chấn', '21315', 56, 1, 5),
(190, 'Huyện Trạm Tấu', '21317', 56, 1, 5),
(192, 'Thành phố Thái Nguyên', '21501', 48, 1, 5),
(193, 'Thị xã Sông Công', '21503', 48, 1, 5),
(194, 'Huyện Định Hóa', '21505', 48, 1, 5),
(195, 'Huyện Võ Nhai', '21507', 48, 1, 5),
(196, 'Huyện Phú Lương', '21509', 48, 1, 5),
(197, 'Huyện Đồng Hỷ', '21511', 48, 1, 5),
(198, 'Huyện Đại Từ', '21513', 48, 1, 5),
(199, 'Huyện Phú Bình', '21515', 48, 1, 5),
(200, 'Huyện Phổ Yên', '21517', 48, 1, 5),
(202, 'Thành phố Việt Trì', '21701', 38, 1, 5),
(203, 'Thị xã Phú Thọ', '21703', 38, 1, 5),
(204, 'Huyện Đoan Hùng', '21705', 38, 1, 5),
(205, 'Huyện Hạ Hoà', '21707', 38, 1, 5),
(206, 'Huyện Thanh Ba', '21709', 38, 1, 5),
(207, 'Huyện Phong Châu', '21711', 38, 1, 5),
(208, 'Huyện Lâm Thao', '21712', 38, 1, 5),
(209, 'Huyện Sông Thao', '21713', 38, 1, 5),
(210, 'Huyện Yên Lập', '21715', 38, 1, 5),
(211, 'Huyện Tam Thanh', '21717', 38, 1, 5),
(212, 'Huyện Thanh Thuỷ', '21718', 38, 1, 5),
(213, 'Huyện Thanh Sơn', '21719', 38, 1, 5),
(215, 'Thị xã Bắc Giang', '22101', 7, 1, 5),
(216, 'Huyện Yên Thế', '22103', 7, 1, 5),
(217, 'Huyện Tân Yên', '22105', 7, 1, 5),
(218, 'Huyện Lục Ngạn', '22107', 7, 1, 5),
(219, 'Huyện Hiệp Hòa', '22109', 7, 1, 5),
(220, 'Huyện Lạng Giang', '22111', 7, 1, 5),
(221, 'Huyện Sơn Động', '22113', 7, 1, 5),
(222, 'Huyện Lục Nam', '22115', 7, 1, 5),
(223, 'Huyện Việt Yên', '22117', 7, 1, 5),
(224, 'Huyện Yên Dũng', '22119', 7, 1, 5),
(226, 'Thành phố Hạ Long', '22501', 43, 1, 5),
(227, 'Thị xã Cẩm Phả', '22503', 43, 1, 5),
(228, 'Thị xã Uông Bí', '22505', 43, 1, 5),
(229, 'Huyện Bình Liêu', '22507', 43, 1, 5),
(230, 'Thị Xã Móng Cái', '22509', 43, 1, 5),
(231, 'Huyện Quảng Hà', '22511', 43, 1, 5),
(232, 'Huyện Tiên Yên', '22513', 43, 1, 5),
(233, 'Huyện Ba Chẽ', '22515', 43, 1, 5),
(234, 'Huyện Vân Đồn', '22517', 43, 1, 5),
(235, 'Huyện Hoành Bồ', '22519', 43, 1, 5),
(236, 'Huyện Đông Triều', '22521', 43, 1, 5),
(237, 'Huyện Cô Tô', '22523', 43, 1, 5),
(238, 'Huyện Yên Hưng', '22525', 43, 1, 5),
(240, 'Thị xã Điện Biên Phủ', '30101', 29, 1, 5),
(241, 'Thị xã Lai Châu', '30103', 29, 1, 5),
(242, 'Huyện Mường Tè', '30105', 29, 1, 5),
(243, 'Huyện Phong Thổ', '30107', 29, 1, 5),
(244, 'Huyện Sìn Hồ', '30109', 29, 1, 5),
(245, 'Huyện Mường Lay', '30111', 29, 1, 5),
(246, 'Huyện Tủa Chùa', '30113', 29, 1, 5),
(247, 'Huyện Tuần Giáo', '30115', 29, 1, 5),
(248, 'Huyện Điện Biên', '30117', 29, 1, 5),
(249, 'Huyện Điện Biên Đông', '30119', 29, 1, 5),
(251, 'Thị xã Sơn La', '30301', 45, 1, 5),
(252, 'Huyện Quỳnh Nhai', '30303', 45, 1, 5),
(253, 'Huyện Mường La', '30305', 45, 1, 5),
(254, 'Huyện Thuận Châu', '30307', 45, 1, 5),
(255, 'Huyện Bắc Yên', '30309', 45, 1, 5),
(256, 'Huyện Phù Yên', '30311', 45, 1, 5),
(257, 'Huyện Mai Sơn', '30313', 45, 1, 5),
(258, 'Huyện Sông Mã', '30315', 45, 1, 5),
(259, 'Huyện Yên Châu', '30317', 45, 1, 5),
(260, 'Huyện Mộc Châu', '30319', 45, 1, 5),
(262, 'Thị xã Hòa Bình', '30501', 20, 1, 5),
(263, 'Huyện Đà Bắc', '30503', 20, 1, 5),
(264, 'Huyện Mai Châu', '30505', 20, 1, 5),
(265, 'Huyện Kỳ Sơn', '30507', 20, 1, 5),
(266, 'Huyện Lương Sơn', '30509', 20, 1, 5),
(267, 'Huyện Kim Bôi', '30511', 20, 1, 5),
(268, 'Huyện Tân Lạc', '30513', 20, 1, 5),
(269, 'Huyện Lạc Sơn', '30515', 20, 1, 5),
(270, 'Huyện Lạc Thủy', '30517', 20, 1, 5),
(271, 'Huyện Yên Thủy', '30519', 20, 1, 5),
(273, 'Thành phố Thanh Hóa', '40101', 46, 1, 5),
(274, 'Thị xã Bỉm Sơn', '40103', 46, 1, 5),
(275, 'Thị xã Sầm Sơn', '40105', 46, 1, 5),
(276, 'Huyện Mường Lát', '40107', 46, 1, 5),
(277, 'Huyện Quan Hóa', '40109', 46, 1, 5),
(278, 'Huyện Quan Sơn', '40111', 46, 1, 5),
(279, 'Huyện Bá Thước', '40113', 46, 1, 5),
(280, 'Huyện Cẩm Thủy', '40115', 46, 1, 5),
(281, 'Huyện Lang Chánh', '40117', 46, 1, 5),
(282, 'Huyện Thạch Thành', '40119', 46, 1, 5),
(283, 'Huyện Ngọc Lạc', '40121', 46, 1, 5),
(284, 'Huyện Thường Xuân', '40123', 46, 1, 5),
(285, 'Huyện Như Xuân', '40125', 46, 1, 5),
(286, 'Huyện Như Thanh', '40127', 46, 1, 5),
(287, 'Huyện Vĩnh Lộc', '40129', 46, 1, 5),
(288, 'Huyện Hà Trung', '40131', 46, 1, 5),
(289, 'Huyện Nga Sơn', '40133', 46, 1, 5),
(290, 'Huyện Yên Định', '40135', 46, 1, 5),
(291, 'Huyện Thọ Xuân', '40137', 46, 1, 5),
(292, 'Huyện Hậu Lộc', '40139', 46, 1, 5),
(293, 'Huyện Thiệu Hoá', '40141', 46, 1, 5),
(294, 'Huyện Hoằng Hóa', '40143', 46, 1, 5),
(295, 'Huyện Đông Sơn', '40145', 46, 1, 5),
(296, 'Huyện Triệu Sơn', '40147', 46, 1, 5),
(297, 'Huyện Quảng Xương', '40149', 46, 1, 5),
(298, 'Huyện Nông Cống', '40151', 46, 1, 5),
(299, 'Huyện Tĩnh Gia', '40153', 46, 1, 5),
(301, 'Thành phố Vinh', '40301', 35, 1, 5),
(302, 'Thị xã Cửa Lò', '40303', 35, 1, 5),
(303, 'Huyện Quế Phong', '40305', 35, 1, 5),
(304, 'Huyện Quỳ Châu', '40307', 35, 1, 5),
(305, 'Huyện Kỳ Sơn', '40309', 35, 1, 5),
(306, 'Huyện Quỳ Hợp', '40311', 35, 1, 5),
(307, 'Huyện Nghĩa Đàn', '40313', 35, 1, 5),
(308, 'Huyện Tương Dương', '40315', 35, 1, 5),
(309, 'Huyện Quỳnh Lưu', '40317', 35, 1, 5),
(310, 'Huyện Tân Kỳ', '40319', 35, 1, 5),
(311, 'Huyện Con Cuông', '40321', 35, 1, 5),
(312, 'Huyện Yên Thành', '40323', 35, 1, 5),
(313, 'Huyện Diễn Châu', '40325', 35, 1, 5),
(314, 'Huyện Anh Sơn', '40327', 35, 1, 5),
(315, 'Huyện Đô Lương', '40329', 35, 1, 5),
(316, 'Huyện Thanh Chương', '40331', 35, 1, 5),
(317, 'Huyện Nghi Lộc', '40333', 35, 1, 5),
(318, 'Huyện Nam Đàn', '40335', 35, 1, 5),
(319, 'Huyện Hưng Nguyên', '40337', 35, 1, 5),
(321, 'Thị xã Hà Tĩnh', '40501', 19, 1, 5),
(322, 'Thị xã Hồng Lĩnh', '40503', 19, 1, 5),
(323, 'Huyện Nghi Xuân', '40505', 19, 1, 5),
(324, 'Huyện Đức Thọ', '40507', 19, 1, 5),
(325, 'Huyện Hương Sơn', '40509', 19, 1, 5),
(326, 'Huyện Can Lộc', '40511', 19, 1, 5),
(327, 'Huyện Thạch Hà', '40513', 19, 1, 5),
(328, 'Huyện Cẩm Xuyên', '40515', 19, 1, 5),
(329, 'Huyện Hương Khê', '40517', 19, 1, 5),
(330, 'Huyện Kỳ Anh', '40519', 19, 1, 5),
(332, 'Thị xã Đồng Hới', '40701', 40, 1, 5),
(333, 'Huyện Tuyên Hóa', '40703', 40, 1, 5),
(334, 'Huyện Minh Hóa', '40705', 40, 1, 5),
(335, 'Huyện Quảng Trạch', '40707', 40, 1, 5),
(336, 'Huyện Bố Trạch', '40709', 40, 1, 5),
(337, 'Huyện Quảng Ninh', '40711', 40, 1, 5),
(338, 'Huyện Lệ Thủy', '40713', 40, 1, 5),
(340, 'Thị xã Đông Hà', '40901', 44, 1, 5),
(341, 'Thị xã Quảng Trị', '40903', 44, 1, 5),
(342, 'Huyện Vĩnh Linh', '40905', 44, 1, 5),
(343, 'Huyện Gio Linh', '40907', 44, 1, 5),
(344, 'Huyện Cam Lộ', '40909', 44, 1, 5),
(345, 'Huyện Triệu Phong', '40911', 44, 1, 5),
(346, 'Huyện Hải Lăng', '40913', 44, 1, 5),
(347, 'Huyện Hướng Hóa', '40915', 44, 1, 5),
(348, 'Huyện Đa Krông', '40917', 44, 1, 5),
(350, 'Thành phố Huế', '41101', 49, 1, 5),
(351, 'Huyện Phong Điền', '41103', 49, 1, 5),
(352, 'Huyện Quảng Điền', '41105', 49, 1, 5),
(353, 'Huyện Hương Trà', '41107', 49, 1, 5),
(354, 'Huyện Phú Vang', '41109', 49, 1, 5),
(355, 'Huyện Hương Thủy', '41111', 49, 1, 5),
(356, 'Huyện Phú Lộc', '41113', 49, 1, 5),
(357, 'Huyện A Lưới', '41115', 49, 1, 5),
(358, 'Huyện Nam Đông', '41117', 49, 1, 5),
(360, 'Quận Hải Châu', '50101', 57, 1, 5),
(361, 'Quận Thanh Khê', '50103', 57, 1, 5),
(362, 'Quận Sơn Trà', '50105', 57, 1, 5),
(363, 'Quận Ngũ Hành Sơn', '50107', 57, 1, 5),
(364, 'Quận Liên Chiểu', '50109', 57, 1, 5),
(365, 'Huyện Hoà Vang', '50111', 57, 1, 5),
(366, 'Huyện Đảo Hoàng Sa', '50113', 57, 1, 5),
(368, 'Thị xã Tam Kỳ', '50301', 41, 1, 1),
(369, 'Thị xã Hội An', '50303', 41, 1, 2),
(370, 'Huyện Hiên', '50305', 41, 1, 13),
(371, 'Huyện Đại Lộc', '50307', 41, 1, 12),
(372, 'Huyện Điện Bàn', '50309', 41, 1, 11),
(373, 'Huyện Duy Xuyên', '50311', 41, 1, 10),
(374, 'Huyện Giằng', '50313', 41, 1, 9),
(375, 'Huyện Thăng Bình', '50315', 41, 1, 8),
(376, 'Huyện Quế Sơn', '50317', 41, 1, 7),
(377, 'Huyện Hiệp Đức', '50319', 41, 1, 6),
(378, 'Huyện Tiên Phước', '50321', 41, 1, 5),
(379, 'Huyện Phước Sơn', '50323', 41, 1, 4),
(380, 'Huyện Núi Thành', '50325', 41, 1, 3),
(381, 'Huyện Trà My', '50327', 41, 1, 14),
(383, 'Thị xã Quảng Ngãi', '50501', 42, 1, 5),
(384, 'Huyện Lý Sơn', '50503', 42, 1, 5),
(385, 'Huyện Bình Sơn', '50505', 42, 1, 5),
(386, 'Huyện Trà Bồng', '50507', 42, 1, 5),
(387, 'Huyện Sơn Tịnh', '50509', 42, 1, 5),
(388, 'Huyện Sơn Tây', '50511', 42, 1, 5),
(389, 'Huyện Sơn Hà', '50513', 42, 1, 5),
(390, 'Huyện Tư Nghĩa', '50515', 42, 1, 5),
(391, 'Huyện Nghĩa Hành', '50517', 42, 1, 5),
(392, 'Huyện Minh Long', '50519', 42, 1, 5),
(393, 'Huyện Mộ Đức', '50521', 42, 1, 5),
(394, 'Huyện Đức Phổ', '50523', 42, 1, 5),
(395, 'Huyện Ba Tơ', '50525', 42, 1, 5),
(397, 'Thành phố Qui Nhơn', '50701', 6, 1, 5),
(398, 'Huyện An Lão', '50703', 6, 1, 5),
(399, 'Huyện Hoài Nhơn', '50705', 6, 1, 5),
(400, 'Huyện Hoài Ân', '50707', 6, 1, 5),
(401, 'Huyện Phù Mỹ', '50709', 6, 1, 5),
(402, 'Huyện Vĩnh Thạnh', '50711', 6, 1, 5),
(403, 'Huyện Phù Cát', '50713', 6, 1, 5),
(404, 'Huyện Tây Sơn', '50715', 6, 1, 5),
(405, 'Huyện An Nhơn', '50717', 6, 1, 5),
(406, 'Huyện Tuy Phước', '50719', 6, 1, 5),
(407, 'Huyện Vân Canh', '50721', 6, 1, 5),
(409, 'Thành phố Tuy Hòa', '50901', 39, 1, 1),
(410, 'Huyện Đồng Xuân', '50903', 39, 1, 2),
(411, 'Huyện Sông Cầu', '50905', 39, 1, 3),
(412, 'Huyện Tuy An', '50907', 39, 1, 4),
(413, 'Huyện Sơn Hòa', '50909', 39, 1, 5),
(414, 'Huyện Đông Hòa', '50911', 39, 1, 6),
(415, 'Huyện Sông Hinh', '50913', 39, 1, 7),
(417, 'Thành phố Nha Trang', '51101', 25, 1, 5),
(418, 'Huyện Vạn Ninh', '51103', 25, 1, 5),
(419, 'Huyện Ninh Hòa', '51105', 25, 1, 5),
(420, 'Huyện Diên Khánh', '51107', 25, 1, 5),
(421, 'Huyện Cam Ranh', '51109', 25, 1, 5),
(422, 'Huyện Khánh Vĩnh', '51111', 25, 1, 5),
(423, 'Huyện Khánh Sơn', '51113', 25, 1, 5),
(424, 'Huyện Trường Sa', '51115', 25, 1, 5),
(426, 'Thị xã Kon Tum', '60101', 28, 1, 5),
(427, 'Huyện Đắk Glei', '60103', 28, 1, 5),
(428, 'Huyện Ngọc Hồi', '60105', 28, 1, 5),
(429, 'Huyện Đắk Tô', '60107', 28, 1, 5),
(430, 'Huyện Kon Plông', '60109', 28, 1, 5),
(431, 'Huyện Đak Hà', '60111', 28, 1, 5),
(432, 'Huyện Sa Thầy', '60113', 28, 1, 5),
(434, 'Thị xã Pleiku', '60301', 14, 1, 5),
(435, 'Huyện KBang', '60303', 14, 1, 5),
(436, 'Huyện Mang Yang', '60305', 14, 1, 5),
(437, 'Huyện Chư Păh', '60307', 14, 1, 5),
(438, 'Huyện Ia Grai', '60309', 14, 1, 5),
(439, 'Huyện An Khê', '60311', 14, 1, 5),
(440, 'Huyện Kông Chro', '60313', 14, 1, 5),
(441, 'Huyện Đức Cơ', '60315', 14, 1, 5),
(442, 'Huyện Chư Prông', '60317', 14, 1, 5),
(443, 'Huyện Chư Sê', '60319', 14, 1, 5),
(444, 'Huyện Ayun Pa', '60321', 14, 1, 5),
(445, 'Huyện Krông Pa', '60323', 14, 1, 5),
(447, 'Thành phố Buôn Ma Thuột', '60501', 58, 1, 5),
(448, 'Huyện Ea H''leo', '60503', 58, 1, 5),
(449, 'Huyện Ea Súp', '60505', 58, 1, 5),
(450, 'Huyện Krông Năng', '60507', 58, 1, 5),
(451, 'Huyện Krông Búk', '60509', 58, 1, 5),
(452, 'Huyện Buôn Đôn', '60511', 58, 1, 5),
(453, 'Huyện Cư M''gar', '60513', 58, 1, 5),
(454, 'Huyện Ea Kar', '60515', 58, 1, 5),
(455, 'Huyện M''Đrắk', '60517', 58, 1, 5),
(456, 'Huyện Krông Pắc', '60519', 58, 1, 5),
(457, 'Huyện Cư Jút', '60703', 64, 1, 2),
(458, 'Huyện Krông A Na', '60523', 58, 1, 5),
(459, 'Huyện Krông Bông', '60525', 58, 1, 5),
(460, 'Huyện Đắk Mil', '60705', 64, 1, 3),
(461, 'Huyện Krông Nô', '60707', 64, 1, 4),
(462, 'Huyện Lắk', '60531', 58, 1, 5),
(463, 'Huyện Đắk R''Lấp', '60533', 58, 1, 5),
(464, 'Huyện Đăk Glong', '60701', 64, 1, 5),
(466, 'Quận 1', '70101', 24, 1, 24),
(467, 'Quận 2', '70103', 24, 1, 15),
(468, 'Quận 3', '70105', 24, 1, 16),
(469, 'Quận 4', '70107', 24, 1, 17),
(470, 'Quận 5', '70109', 24, 1, 18),
(471, 'Quận 6', '70111', 24, 1, 19),
(472, 'Quận 7', '70113', 24, 1, 20),
(473, 'Quận 8', '70115', 24, 1, 21),
(474, 'Quận 9', '70117', 24, 1, 22),
(475, 'Quận 10', '70119', 24, 1, 1),
(476, 'Quận 11', '70121', 24, 1, 23),
(477, 'Quận 12', '70123', 24, 1, 14),
(478, 'Quận Gò Vấp', '70125', 24, 1, 13),
(479, 'Quận Tân Bình', '70127', 24, 1, 4),
(480, 'Quận Bình Thạnh', '70129', 24, 1, 11),
(481, 'Quận Phú Nhuận', '70131', 24, 1, 9),
(482, 'Quận Thủ Đức', '70133', 24, 1, 8),
(483, 'Huyện Củ Chi', '70135', 24, 1, 12),
(484, 'Huyện Hóc Môn', '70137', 24, 1, 6),
(485, 'Huyện Bình Chánh', '70139', 24, 1, 5),
(486, 'Huyện Nhà Bè', '70141', 24, 1, 7),
(487, 'Huyện Cần Giờ', '70143', 24, 1, 10),
(489, 'Thành phố Đà Lạt', '70301', 32, 1, 5),
(490, 'Thị xã Bảo Lộc', '70303', 32, 1, 5),
(491, 'Huyện Lạc Dương', '70305', 32, 1, 5),
(492, 'Huyện Đơn Dương', '70307', 32, 1, 5),
(493, 'Huyện Đức Trọng', '70309', 32, 1, 5),
(494, 'Huyện Lâm Hà', '70311', 32, 1, 5),
(495, 'Huyện Bảo Lâm', '70313', 32, 1, 5),
(496, 'Huyện Di Linh', '70315', 32, 1, 5),
(497, 'Huyện Đạ Huoai', '70317', 32, 1, 5),
(498, 'Huyện Đạ Tẻh', '70319', 32, 1, 5),
(499, 'Huyện Cát Tiên', '70321', 32, 1, 5),
(501, 'Thị xã Phan Rang-Tháp Chàm', '70501', 37, 1, 5),
(502, 'Huyện Ninh Sơn', '70503', 37, 1, 5),
(503, 'Huyện Ninh Hải', '70505', 37, 1, 5),
(504, 'Huyện Ninh Phước', '70507', 37, 1, 5),
(506, 'Huyện Đồng Phú', '70701', 4, 1, 5),
(507, 'Huyện Phước Long', '70703', 4, 1, 5),
(508, 'Huyện Lộc Ninh', '70705', 4, 1, 5),
(509, 'Huyện Bù Đăng', '70707', 4, 1, 5),
(510, 'Huyện Bình Long', '70709', 4, 1, 5),
(512, 'Thị xã Tây Ninh', '70901', 53, 1, 5),
(513, 'Huyện Tân Biên', '70903', 53, 1, 5),
(514, 'Huyện Tân Châu', '70905', 53, 1, 5),
(515, 'Huyện Dương Minh Châu', '70907', 53, 1, 5),
(516, 'Huyện Châu Thành', '70909', 53, 1, 5),
(517, 'Huyện Hòa Thành', '70911', 53, 1, 5),
(518, 'Huyện Bến Cầu', '70913', 53, 1, 5),
(519, 'Huyện Gò Dầu', '70915', 53, 1, 5),
(520, 'Huyện Trảng Bàng', '70917', 53, 1, 5),
(522, 'Thị xã Thủ Dầu Một', '71101', 3, 1, 5),
(523, 'Huyện Bến Cát', '71103', 3, 1, 5),
(524, 'Huyện Tân Uyên', '71105', 3, 1, 5),
(525, 'Huyện Thuận An', '71107', 3, 1, 5),
(527, 'Thành phố Biên Hòa', '71301', 59, 1, 5),
(528, 'Huyện Tân Phú', '71303', 59, 1, 5),
(529, 'Huyện Định Quán', '71305', 59, 1, 5),
(530, 'Huyện Vĩnh Cừu', '71307', 59, 1, 5),
(531, 'Huyện Thống Nhất', '71309', 59, 1, 5),
(532, 'Huyện Long Khánh', '71311', 59, 1, 5),
(533, 'Huyện Xuân Lộc', '71313', 59, 1, 5),
(534, 'Huyện Long Thành', '71315', 59, 1, 5),
(535, 'Huyện Nhơn Trạch', '71317', 59, 1, 5),
(537, 'Thị xã Phan Thiết', '71501', 5, 1, 5),
(538, 'Huyện Tuy Phong', '71503', 5, 1, 5),
(539, 'Huyện Bắc Bình', '71505', 5, 1, 5),
(540, 'Huyện Hàm Thuận Bắc', '71507', 5, 1, 5),
(541, 'Huyện Hàm Thuận Nam', '71509', 5, 1, 5),
(542, 'Huyện Tánh Linh', '71511', 5, 1, 5),
(543, 'Huyện Hàm Tân', '71513', 5, 1, 5),
(544, 'Huyện Đức Linh', '71515', 5, 1, 5),
(545, 'Huyện Phú Quí', '71517', 5, 1, 5),
(547, 'Thành phố Vũng Tầu', '71701', 2, 1, 5),
(548, 'Thị xã Bà Rịa', '71703', 2, 1, 5),
(549, 'Huyện Châu Đức', '71705', 2, 1, 5),
(550, 'Huyện Xuyên Mộc', '71707', 2, 1, 5),
(551, 'Huyện Tân Thành', '71709', 2, 1, 5),
(552, 'Huyện Long Đất', '71711', 2, 1, 5),
(553, 'Huyện Côn Đảo', '71713', 2, 1, 5),
(555, 'Thị xã Tân An', '80101', 30, 1, 5),
(556, 'Huyện Tân Hưng', '80103', 30, 1, 5),
(557, 'Huyện Vĩnh Hưng', '80105', 30, 1, 5),
(558, 'Huyện Mộc Hóa', '80107', 30, 1, 5),
(559, 'Huyện Tân Thạnh', '80109', 30, 1, 5),
(560, 'Huyện Thạnh Hóa', '80111', 30, 1, 5),
(561, 'Huyện Đức Huệ', '80113', 30, 1, 5),
(562, 'Huyện Đức Hòa', '80115', 30, 1, 5),
(563, 'Huyện Bến Lức', '80117', 30, 1, 5),
(564, 'Huyện Thủ Thừa', '80119', 30, 1, 5),
(565, 'Huyện Châu Thành', '80121', 30, 1, 5),
(566, 'Huyện Tân Trụ', '80123', 30, 1, 5),
(567, 'Huyện Cần Đước', '80125', 30, 1, 5),
(568, 'Huyện Cần Giuộc', '80127', 30, 1, 5),
(570, 'Thị xã Cao Lãnh', '80301', 60, 1, 5),
(571, 'Thị xã Sa Đéc', '80303', 60, 1, 5),
(572, 'Huyện Tân Hồng', '80305', 60, 1, 5),
(573, 'Huyện Hồng Ngự', '80307', 60, 1, 5),
(574, 'Huyện Tam Nông', '80309', 60, 1, 5),
(575, 'Huyện Thanh Bình', '80311', 60, 1, 5),
(576, 'Huyện Tháp Mười', '80313', 60, 1, 5),
(577, 'Huyện Cao Lãnh', '80315', 60, 1, 5),
(578, 'Huyện Lấp Vò', '80317', 60, 1, 5),
(579, 'Huyện Lai Vung', '80319', 60, 1, 5),
(580, 'Huyện Châu Thành', '80321', 60, 1, 5),
(582, 'Thành Phố Long Xuyên', '80501', 1, 1, 5),
(583, 'Thị xã Châu Đốc', '80503', 1, 1, 5),
(584, 'Huyện An Phú', '80505', 1, 1, 5),
(585, 'Huyện Tân Châu', '80507', 1, 1, 5),
(586, 'Huyện Phú Tân', '80509', 1, 1, 5),
(587, 'Huyện Châu Phú', '80511', 1, 1, 5),
(588, 'Huyện Tịnh Biên', '80513', 1, 1, 5),
(589, 'Huyện Tri Tôn', '80515', 1, 1, 5),
(590, 'Huyện Chợ Mới', '80517', 1, 1, 5),
(591, 'Huyện Châu Thành', '80519', 1, 1, 5),
(592, 'Huyện Thoại Sơn', '80521', 1, 1, 5),
(594, 'Thành phố Mỹ Tho', '80701', 50, 1, 5),
(595, 'Thị xã Gò Công', '80703', 50, 1, 5),
(596, 'Huyện Tân Phước', '80705', 50, 1, 5),
(597, 'Huyện Châu Thành', '80707', 50, 1, 5),
(598, 'Huyện Cai Lậy', '80709', 50, 1, 5),
(599, 'Huyện Chợ Gạo', '80711', 50, 1, 5),
(600, 'Huyện Cái Bè', '80713', 50, 1, 5),
(601, 'Huyện Gò Công Tây', '80715', 50, 1, 5),
(602, 'Huyện Gò Công Đông', '80717', 50, 1, 5),
(604, 'Thị xã Vĩnh Long', '80901', 54, 1, 5),
(605, 'Huyện Long Hồ', '80903', 54, 1, 5),
(606, 'Huyện Mang Thít', '80905', 54, 1, 5),
(607, 'Huyện Bình Minh', '80907', 54, 1, 5),
(608, 'Huyện Tam Bình', '80909', 54, 1, 5),
(609, 'Huyện Trà Ôn', '80911', 54, 1, 5),
(610, 'Huyện Vũng Liêm', '80913', 54, 1, 5),
(612, 'Thị xã Bến Tre', '81101', 10, 1, 5),
(613, 'Huyện Châu Thành', '81103', 10, 1, 5),
(614, 'Huyện Chợ Lách', '81105', 10, 1, 5),
(615, 'Huyện Mỏ Cày', '81107', 10, 1, 5),
(616, 'Huyện Giồng Trôm', '81109', 10, 1, 5),
(617, 'Huyện Bình Đại', '81111', 10, 1, 5),
(618, 'Huyện Ba Tri', '81113', 10, 1, 5),
(619, 'Huyện Thạnh Phú', '81115', 10, 1, 5),
(621, 'Thị xã Rạch Giá', '81301', 27, 1, 5),
(622, 'Huyện Hà Tiên', '81303', 27, 1, 5),
(623, 'Huyện Hòn Đất', '81305', 27, 1, 5),
(624, 'Huyện Tân Hiệp', '81307', 27, 1, 5),
(625, 'Huyện Châu Thành', '81309', 27, 1, 5),
(626, 'Huyện Giồng Giềng', '81311', 27, 1, 5),
(627, 'Huyện Gò Quao', '81313', 27, 1, 5),
(628, 'Huyện An Biên', '81315', 27, 1, 5),
(629, 'Huyện An Minh', '81317', 27, 1, 5),
(630, 'Huyện Vĩnh Thuận', '81319', 27, 1, 5),
(631, 'Huyện Phú Quốc', '81321', 27, 1, 5),
(632, 'Huyện Kiên Hải', '81323', 27, 1, 5),
(633, 'Thị xã Hà Tiên', '81325', 27, 1, 5),
(635, 'Thành phố Cần Thơ', '81501', 13, 1, 5),
(636, 'Thị xã Vị Thanh', '81502', 13, 1, 5),
(637, 'Huyện Thốt Nốt', '81503', 13, 1, 5),
(638, 'Huyện Ô Môn', '81505', 13, 1, 5),
(639, 'Huyện Châu Thành', '81507', 13, 1, 5),
(640, 'Huyện Phụng Hiệp', '81509', 13, 1, 5),
(641, 'Huyện Vị Thuỷ', '81511', 13, 1, 5),
(642, 'Huyện Long Mỹ', '81513', 13, 1, 5),
(644, 'Thị xã Trà Vinh', '81701', 51, 1, 5),
(645, 'Huyện Càng Long', '81703', 51, 1, 5),
(646, 'Huyện Châu Thành', '81705', 51, 1, 5),
(647, 'Huyện Cầu Kè', '81707', 51, 1, 5),
(648, 'Huyện Tiểu Cần', '81709', 51, 1, 5),
(649, 'Huyện Cầu Ngang', '81711', 51, 1, 5),
(650, 'Huyện Trà Cú', '81713', 51, 1, 5),
(651, 'Huyện Duyên Hải', '81715', 51, 1, 5),
(653, 'Thị xã Sóc Trăng', '81901', 62, 1, 5),
(654, 'Huyện Kế Sách', '81903', 62, 1, 5),
(655, 'Huyện Long Phú', '81905', 62, 1, 5),
(656, 'Huyện Mỹ Tú', '81907', 62, 1, 5),
(657, 'Huyện Mỹ Xuyên', '81909', 62, 1, 5),
(658, 'Huyện Thạnh Trị', '81911', 62, 1, 5),
(659, 'Huyện Vĩnh Châu', '81913', 62, 1, 5),
(661, 'Thị xã Bạc Liêu', '82101', 61, 1, 5),
(662, 'Huyện Hồng Dân', '82103', 61, 1, 5),
(663, 'Huyện Vĩnh Lợi', '82105', 61, 1, 5),
(664, 'Huyện Giá Rai', '82107', 61, 1, 5),
(666, 'Thị xã Cà Mau', '82301', 12, 1, 5),
(667, 'Huyện Thới Bình', '82303', 12, 1, 5),
(668, 'Huyện U Minh', '82305', 12, 1, 5),
(669, 'Huyện Trần Văn Thời', '82307', 12, 1, 5),
(670, 'Huyện Cái Nước', '82309', 12, 1, 5),
(671, 'Huyện Đầm Dơi', '82311', 12, 1, 5),
(672, 'Huyện Ngọc Hiển', '82313', 12, 1, 5),
(673, 'Huyện Đắk Song', '60709', 64, 1, 6),
(674, 'Thị xã Gia Nghĩa', '60713', 64, 1, 1),
(675, 'Huyện Tuy Đức', '60715', 64, 1, 7),
(676, 'Huyện Phú Hòa', '50915', 39, 1, 8),
(677, 'Huyện Tây Hoà', '50917', 39, 1, 9),
(678, 'Thị xã Đồng Xoài', '70711', 4, 1, 5),
(679, 'Quận Bình Tân', '70145', 24, 1, 3),
(680, 'Quận Tân Phú', '70147', 24, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `type_event_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `startTime` double(8,2) NOT NULL,
  `endTime` double(8,2) NOT NULL,
  `date` datetime NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `user_id`, `type_event_id`, `title`, `slug`, `content`, `image`, `startTime`, `endTime`, `date`, `address`, `created_at`, `updated_at`) VALUES
(3, 7, 2, 'Chung kêt thể thao giai huyện', 'Chung kêt thể thao giai huyện', 'Tran trung ket nay se dien ra rat kich tính mời các bạn đón xem', '22023655309489.jpg', 6.35, 6.00, '2016-07-12 00:00:00', 'Tại sân Ba Đình thành phố Đa Nẵng', '2016-07-25 01:11:18', '2016-07-25 01:11:18'),
(4, 7, 2, 'Giai dau bong chuyen', 'Giai dau bong chuyen', 'Giai dau bong lon nhat thanh pho', '3599855252901.jpg', 8.30, 8.40, '2016-07-14 00:00:00', 'Da NAng', '2016-07-31 07:06:57', '2016-07-31 07:06:57');

-- --------------------------------------------------------

--
-- Table structure for table `fixed_times`
--

CREATE TABLE `fixed_times` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `startTime` double(8,2) NOT NULL,
  `endTime` double(8,2) NOT NULL,
  `day` int(11) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `note` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fixed_times`
--

INSERT INTO `fixed_times` (`id`, `user_id`, `startTime`, `endTime`, `day`, `date`, `month`, `note`, `created_at`, `updated_at`) VALUES
(30, 8, 17.00, 21.00, 0, 0, 0, 'date', '2016-07-11 23:08:21', '2016-07-24 02:56:55'),
(31, 8, 18.00, 20.25, 0, 0, 0, 'date', '2016-07-11 23:08:21', '2016-07-11 23:08:21'),
(32, 9, 18.00, 23.00, 0, 0, 0, 'date', '2016-07-20 22:17:12', '2016-07-20 22:17:12'),
(33, 9, 8.00, 10.00, 0, 0, 0, 'date', '2016-07-20 22:17:12', '2016-07-20 22:17:12'),
(34, 9, 14.00, 17.00, 3, 0, 0, 'week', '2016-07-20 22:17:12', '2016-07-20 22:17:12'),
(35, 9, 12.00, 14.00, 0, 16, 0, 'month', '2016-07-20 22:17:12', '2016-07-20 22:17:12'),
(36, 9, 14.00, 9.00, 0, 10, 6, 'year', '2016-07-20 22:17:12', '2016-07-20 22:17:12'),
(37, 7, 10.00, 9.00, 0, 0, 0, 'date', '2016-07-23 12:58:58', '2016-07-23 12:58:58'),
(38, 7, 16.00, 20.00, 0, 15, 2, 'year', '2016-07-23 14:45:13', '2016-07-23 15:26:24'),
(39, 7, 18.00, 20.00, 3, 0, 0, 'week', '2016-07-23 14:51:44', '2016-07-23 14:51:44'),
(40, 7, 15.00, 6.00, 0, 15, 0, 'month', '2016-07-11 18:59:33', '2016-07-23 15:33:28'),
(41, 7, 3.10, 6.40, 0, 5, 0, 'month', '2016-07-23 15:32:07', '2016-07-23 15:35:28'),
(42, 7, 7.00, 12.00, 0, 9, 7, 'year', '2016-07-23 15:32:07', '2016-07-23 15:33:51');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id1` int(11) NOT NULL,
  `user_id2` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `user_id1`, `user_id2`, `status`, `created_at`, `updated_at`) VALUES
(8, 7, 8, 1, '2016-07-14 22:30:37', '2016-07-14 22:33:19'),
(9, 8, 7, 1, '2016-07-14 22:33:19', '2016-07-14 22:33:19'),
(22, 9, 9, 1, '2016-07-20 23:51:22', '2016-07-20 23:53:24'),
(23, 8, 9, 1, '2016-07-20 23:52:21', '2016-07-20 23:52:34'),
(24, 9, 8, 1, '2016-07-20 23:52:34', '2016-07-20 23:52:34'),
(25, 9, 9, 1, '2016-07-20 23:53:24', '2016-07-20 23:53:24'),
(26, 12, 9, 0, '2016-07-31 08:15:50', '2016-07-31 08:15:50'),
(27, 12, 8, 1, '2016-07-31 08:15:57', '2016-07-31 08:27:02'),
(28, 13, 8, 1, '2016-07-31 08:17:29', '2016-07-31 08:27:04'),
(29, 13, 7, 1, '2016-07-31 08:17:34', '2016-07-31 08:21:28'),
(30, 14, 8, 1, '2016-07-31 08:21:05', '2016-07-31 08:27:07'),
(31, 14, 7, 1, '2016-07-31 08:21:10', '2016-07-31 08:21:23'),
(32, 7, 14, 1, '2016-07-31 08:21:23', '2016-07-31 08:21:23'),
(33, 7, 13, 1, '2016-07-31 08:21:28', '2016-07-31 08:21:28'),
(34, 15, 8, 1, '2016-07-31 08:24:15', '2016-07-31 08:27:14'),
(35, 15, 7, 1, '2016-07-31 08:24:22', '2016-07-31 10:37:59'),
(36, 16, 8, 1, '2016-07-31 08:25:34', '2016-07-31 08:27:12'),
(37, 16, 9, 0, '2016-07-31 08:25:40', '2016-07-31 08:25:40'),
(38, 16, 7, 1, '2016-07-31 08:25:45', '2016-07-31 10:37:57'),
(39, 8, 12, 1, '2016-07-31 08:27:02', '2016-07-31 08:27:02'),
(40, 8, 13, 1, '2016-07-31 08:27:04', '2016-07-31 08:27:04'),
(41, 8, 14, 1, '2016-07-31 08:27:07', '2016-07-31 08:27:07'),
(42, 8, 16, 1, '2016-07-31 08:27:12', '2016-07-31 08:27:12'),
(43, 8, 15, 1, '2016-07-31 08:27:14', '2016-07-31 08:27:14'),
(44, 7, 16, 1, '2016-07-31 10:37:57', '2016-07-31 10:37:57'),
(45, 7, 15, 1, '2016-07-31 10:38:00', '2016-07-31 10:38:00');

-- --------------------------------------------------------

--
-- Table structure for table `hobbies`
--

CREATE TABLE `hobbies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type_hobby_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hobbies`
--

INSERT INTO `hobbies` (`id`, `name`, `description`, `type_hobby_id`, `created_at`, `updated_at`) VALUES
(1, 'Bóng đá', 'Là môn thể thao vua, mỗi đội gồm có 11 người chơi', 1, NULL, NULL),
(2, 'Bóng chuyền', 'Là môn thể thao mang tính đồng đội cao', 1, NULL, NULL),
(4, 'Liên minh', 'Cộng đồng liên minh hiện tại rất lớn trên thế giới', 2, NULL, NULL),
(5, '3Q', 'sở hữu fan hâm mộ đông đảo', 2, NULL, NULL),
(6, 'Nhảy', 'có nhiều thể loại khác nhau', 3, NULL, NULL),
(7, 'Hát', 'Là một môn nghệ thuật cực kỳ vĩ đại', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `massages`
--

CREATE TABLE `massages` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id1` int(10) UNSIGNED NOT NULL,
  `user_id2` int(10) UNSIGNED NOT NULL,
  `msg` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `massages`
--

INSERT INTO `massages` (`id`, `user_id1`, `user_id2`, `msg`, `created_at`, `updated_at`) VALUES
(10, 7, 16, 'Hi Trang, Minh la Hon', '2016-07-31 23:48:01', '2016-07-31 23:48:01'),
(11, 7, 16, 'Trang, mai len truong nhe, moi nguoi nho minh noi lai do', '2016-07-31 23:50:57', '2016-07-31 23:50:57'),
(12, 8, 7, 'Hi Hon, minh Danh day, dao nay the nao?', '2016-07-31 23:54:22', '2016-07-31 23:54:22'),
(13, 7, 8, 'Ukm, chao Danh, minh va nhu ngay nao', '2016-07-31 23:55:49', '2016-07-31 23:55:49'),
(14, 7, 8, 'Ban the nao roi?', '2016-07-31 23:56:00', '2016-07-31 23:56:00'),
(15, 8, 7, 'Ốm hơn xưa một tý', '2016-07-31 23:56:53', '2016-07-31 23:56:53'),
(16, 7, 8, 'Mấy bữa ni có đi nhậu với mấy đứa không?', '2016-07-31 23:57:24', '2016-07-31 23:57:24'),
(17, 8, 7, 'Ngày nào mà chẳng nhậu', '2016-07-31 23:57:41', '2016-07-31 23:57:41'),
(18, 7, 8, 'Hi Danh', '2016-07-31 23:58:13', '2016-07-31 23:58:13'),
(19, 7, 14, 'Hello Nhung', '2016-07-31 23:59:23', '2016-07-31 23:59:23'),
(20, 8, 12, 'Hi Dung!', '2016-08-01 00:00:06', '2016-08-01 00:00:06'),
(21, 7, 8, 'Đợi tý, mình đang bận\n', '2016-08-01 00:16:23', '2016-08-01 00:16:23'),
(22, 8, 7, 'Okie Hơn, hẹn gặp lại vào tối nay', '2016-08-01 00:16:57', '2016-08-01 00:16:57'),
(23, 7, 8, 'Hello Danh!', '2016-08-01 00:36:00', '2016-08-01 00:36:00'),
(24, 8, 7, 'Ukm, có chuyện gì không?', '2016-08-01 00:36:21', '2016-08-01 00:36:21'),
(25, 7, 8, 'Có chuyện mới nt cho mi được ah?', '2016-08-01 00:36:36', '2016-08-01 00:36:36'),
(26, 8, 7, 'Không có gì thì nhắn làm gì?', '2016-08-01 00:36:55', '2016-08-01 00:36:55');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_06_27_033059_create_backup_table', 2),
('2016_06_27_033326_create_backup2_table', 3),
('2016_06_27_033714_create_cities_table', 4),
('2016_06_27_035317_create_city2_table', 5),
('2016_06_27_035425_create_districts2_table', 6),
('2016_06_27_035205_create_users2_table', 7),
('2016_06_27_041801_create_type_hobbies_table', 8),
('2016_06_27_042026_create_hobbies_table', 9),
('2016_06_27_042342_create_user_hobbies_table', 10),
('2016_06_27_044800_create_fixed_times_table', 11),
('2016_07_12_152222_create_friends_table', 12),
('2016_07_24_063530_create_type_notifies_table', 13),
('2016_07_24_064551_create_notifies_table', 14),
('2016_07_24_071025_create_notifies_table', 15),
('2016_07_25_054241_create_type_events_table', 16),
('2016_07_25_054727_create_events_table', 17),
('2016_07_31_120320_create_massages_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `notifies`
--

CREATE TABLE `notifies` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type_notify_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifies`
--

INSERT INTO `notifies` (`id`, `user_id`, `type_notify_id`, `user_name`, `content`, `link`, `created_at`, `updated_at`) VALUES
(1, 7, 1, 'Nguyen Ngoc Hon', 'Nguyen Ngoc Hon da cap nhat thoi gian ranh cua anh ay trong vong mot tuan', 'duong dan', NULL, NULL),
(2, 9, 1, 'Huynh van Tu', 'Huynh Van Tu da cap nhat thoi gian ranh cua anh ay trong vong mot thang', 'Đường dẫn', NULL, NULL),
(3, 8, 1, 'từ Phương Danh', 'Danh, anh ay da cap nhat thoi gian ranh cua minh trong vong mot tuan', 'Đường dẫn', NULL, NULL),
(4, 7, 1, 'nguyen ngoc hon', 'Đã cập nhật thời gian rảnh của anh ấy', 'Đường dẫn tạm', '2016-07-24 02:49:40', '2016-07-24 02:49:40'),
(5, 7, 1, 'nguyen ngoc hon', 'Đã cập nhật thời gian rảnh của anh ấy', 'Đường dẫn tạm', '2016-07-24 02:49:59', '2016-07-24 02:49:59'),
(6, 8, 1, 'Tu Phuong Danh', 'Đã cập nhật thời gian rảnh của anh ấy', 'Đường dẫn tạm', '2016-07-24 02:56:55', '2016-07-24 02:56:55'),
(7, 7, 2, 'nguyen ngoc hon', 'Vừa tạo một sự kiện', 'Đường dẫn tạm', '2016-07-25 01:11:18', '2016-07-25 01:11:18'),
(8, 7, 2, 'nguyen ngoc hon', 'Vừa tạo một sự kiện', 'Đường dẫn tạm', '2016-07-31 07:06:57', '2016-07-31 07:06:57');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `type_events`
--

CREATE TABLE `type_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_events`
--

INSERT INTO `type_events` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Sự kiện giao dục', 'Liên quan đến các vấn đề giáo dục, và đào tạo', NULL, NULL),
(2, 'Thể thao', 'Liên quan đến các câu lạc bộ thể thao', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `type_hobbies`
--

CREATE TABLE `type_hobbies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_hobbies`
--

INSERT INTO `type_hobbies` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Thể thao', 'Thể thao là một sở thích khá phổ biến, ví dụ bóng đá, bóng chuyền,...', NULL, NULL),
(2, 'Game', 'Là một sở thích rất được ưa chuộng trong giới trẻ ngày nay', NULL, NULL),
(3, 'Nghệ thuật', 'Nghệ thuật mang đễn cho con người nhiều kỹ năng, hát hò, nhảy múa, vvv', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `type_notifies`
--

CREATE TABLE `type_notifies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_notifies`
--

INSERT INTO `type_notifies` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Thời gian rảnh', 'Thông báo sẽ xuất hiện lên trang chủ của người dùng, khi bạn bè của họ cập nhật thời gian rảnh.', NULL, NULL),
(2, 'Bài đăng', 'Là loại thông báo xuất hiện trên trang chủ của người dùng, khi bạn bè của họ đăng một bài post nào đó.', NULL, NULL),
(3, 'Bài đăng', 'Là loại thông báo xuất hiện trên trang chủ của người dùng, khi bạn bè của họ của cập nhật sở thích của họ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intro` text COLLATE utf8_unicode_ci NOT NULL,
  `education` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `skill` text COLLATE utf8_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `birthday`, `gender`, `email`, `password`, `city_id`, `district_id`, `image`, `intro`, `education`, `skill`, `job`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tu Phuong Danh', '2016-06-09', '', 'danhchutich@gmail.com', '$2y$10$XW4YEhHd9ZL.Ww.xzHpMFuA41/zgPMkOKNKSd8srWJBYYLiWAzqG6', 1, 1, '', '', '', '', '', 'UTZdkBu705qooEvRKTtFVv1ulJEGUKlk99rJEqZh0c5bR9NLHri4YJLhV2Z9', '2016-06-27 16:38:48', '2016-06-27 16:56:28'),
(2, 'Huanh', '2016-06-10', '', 'huanh@gmail.com', '$2y$10$shQVBndn9MdVdOrf8v6vP./0jj5EcV72WLGWe8nGceKKjJ4k682gC', 1, 1, '', '', '', '', '', 'uuR9BjBpHQukSD61RaPYvFXGUllJb89zTSIUmbD7', '2016-06-27 16:40:38', '2016-06-27 16:40:38'),
(4, 'ALang Chi', '2016-06-05', '', 'alangchi@gmail.com', '$2y$10$2ULQeDL68uSr.tPSnnsXN.ZDRt4W7UKksUTH93V0BWtAueG0L.ExO', 1, 1, '', '', '', '', '', 'qZeOKAWEDn7wluyz1TpXdd92p9YSlNNm8ggwUtOeOmuz5S2j1T3O6pS4wtho', '2016-06-28 15:20:58', '2016-06-28 15:41:45'),
(7, 'nguyen ngoc hon', '2016-06-16', 'Nam', 'nguyenngochon@gmail.com', '$2y$10$tXQ5CEK2QoHpK3IP7.K.RuvH3FWOER6YqQkU7ps3bW77Yi6yOAFku', 6, 404, '3624803335799.jpg', 'Hon la mot thang thich nhay', '12/12', 'Giao tiep tot', 'Designer', 'BCGAHRit34ZdlKViSqRHKTvFxsM7d9160QXC9pabSkqMXSjr31sAY6HhcL9T', '2016-06-28 15:41:31', '2016-07-30 07:25:38'),
(8, 'Tu Phuong Danh', '2016-07-22', 'Nam', 'tuphuongdanh1996@gmail.com', '$2y$10$TmYvAGBM0qqYBD1u0o20qOjcjeULBqE6sCjV1PEjYLpXaQgIvEtD6', 6, 404, '16976532434960.PNG', 'Là một người khá yêu đời, đến với opfreetime tôi muốn tối ưu hóa thời gian rảnh của tôi. Tôi có hàng giờ thời gian rảnh mỗi ngày, nhưng không biết làm gì hết.', '12/12', 'Toi thieu nhieu ky nang', 'Website developer', 'YRW09nyBVJreJnBjVVYCj4M7TQNrivww8g48QJeActK43HweVVNvB7hSDvrg', '2016-07-10 16:15:27', '2016-07-31 08:01:04'),
(9, 'Huynh Van Tu', '2016-07-06', 'Nam', 'huynhvantu@gmail.com', '$2y$10$sUZyuXsTgAQ17Ucf3VY3yOEAQwplSpMxinib2mceW/pUdfUj/ayGm', 3, 3, '8816577451258.jpg', 'Tôi là một người thích chơi game', '12/12', 'Chém gió cấp trung ương', 'Tester', 'hKX1xj5jn77X2xAOBJU8pYB5a4H7j8D9O7fb4Evp', '2016-07-20 22:11:55', '2016-07-20 22:16:22'),
(12, 'Nguyen Thi Ngoc Dung', '1996-08-10', 'Nữ', 'nguyenthingocdung@gmail.com', '$2y$10$wstNwvUUOsbdZ6A1dhsqe.16gZNlMSPE2mRxygYtaLFIDCnV.fT/K', 15, 123, '29266919240296.jpg', '', '', '', '', 'IYbwZ4JS2wNzXJcRKU4eIqeKGh3LKW7eNV1nh1eF0Fntf11jVojWDWmFiVuG', '2016-07-31 08:06:55', '2016-07-31 08:16:03'),
(13, 'Nguyen thi thuy Linh', '1998-06-11', 'Nữ', 'nguyenthithuylinh@gmail.com', '$2y$10$H64BD4lTj1XNHRwmeFKIi.IvHd9LMd58B5I5xAKvQgV.HJUegNsa.', 16, 87, '21768706981583.jpg', 'Toi la Linh, Linh la toi', '', '', '', 'moghQTGDZbFkYwS3A5bZeSYb9IcvNuBzqYs1Wzhn4I5SMyEIBQxSDyBaZxPH', '2016-07-31 08:16:48', '2016-07-31 08:17:37'),
(14, 'Hoang Thi Cam Nhung', '2016-07-17', 'Nữ', 'hoangthicamnhung@gmail.com', '$2y$10$ny2hxx8vXIVlkZPPX545lOJ6AuFwjwe854S3pbwX15cy6e1eQOyh6', 8, 158, '14034441813766.jpg', 'Toi la Nhung', '', '', '', 'mRu5hoRaUcqZJ4zigXHKPJWsIH5KOaF5WuNRTKrSFBa5LheapKlpNHh0A3Im', '2016-07-31 08:20:18', '2016-07-31 08:22:52'),
(15, 'Nguyen Thi Ly', '2016-07-22', 'Nữ', 'nguyenthily@gmail.com', '$2y$10$OttjnGwH2KioZQ3VAXnuAeVeiGTQqNk9eyUoQ2WYkqNuiPjFJln96', 44, 343, '9311254341777.jpg', 'Toi la Ly', '', '', '', 'aWngMSD51xp2lthrVtMGtVqAwQOBDho4wxE2UO5JZYg3WHc607dwSZ6x1SHY', '2016-07-31 08:23:33', '2016-07-31 08:24:24'),
(16, 'Dinh Thi Le Trang', '2016-07-15', 'Nữ', 'dinhthiletrang@gmail.com', '$2y$10$mlGNgFl0qdUbULYRHTutWeAmXCwUEjrm6uzHEYesgEr97fU9wq13C', 13, 640, '143911575210196.jpg', '', '', '', '', 'DbLSIP6i3MaBocGOrgre3OuYxpXkKSkaxjKn987yKSGVHTv8dL9jidqsdLNg', '2016-07-31 08:25:06', '2016-07-31 08:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `user_hobbies`
--

CREATE TABLE `user_hobbies` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `hobby_id` int(10) UNSIGNED NOT NULL,
  `type_hobby_id` int(11) NOT NULL,
  `aspiration` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_hobbies`
--

INSERT INTO `user_hobbies` (`id`, `user_id`, `hobby_id`, `type_hobby_id`, `aspiration`, `created_at`, `updated_at`) VALUES
(8, 7, 2, 1, 'toi thich bong da', '2016-07-10 16:54:58', '2016-07-10 16:54:58'),
(9, 7, 4, 2, 'Toi muon tim mot ban choi cung,', '2016-07-10 16:55:58', '2016-07-10 16:55:58'),
(10, 7, 2, 1, 'Thoi la nguoi cuc ky thich bong chuyen', '2016-07-10 16:55:58', '2016-07-10 16:55:58'),
(11, 7, 1, 1, 'Toi muon tim mot ban choi cung,', '2016-07-10 16:57:07', '2016-07-10 16:57:07'),
(12, 7, 6, 3, 'Thoi la nguoi cuc ky thich nahy', '2016-07-10 16:57:07', '2016-07-10 16:57:07'),
(13, 8, 6, 3, 'Toi thich nhay', '2016-07-10 23:41:24', '2016-07-10 23:41:24'),
(14, 8, 7, 3, 'Toi thich hat', '2016-07-10 23:41:24', '2016-07-10 23:41:24'),
(15, 8, 2, 1, 'toi thich bong chuyen', '2016-07-10 23:41:48', '2016-07-10 23:41:48'),
(16, 9, 4, 2, 'Tôi rất thích chơi game Liên Minh và mong muốn tìm được một đối thủ xứng đáng với mình', '2016-07-20 22:18:19', '2016-07-20 22:18:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fixed_times`
--
ALTER TABLE `fixed_times`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fixed_times_user_id_foreign` (`user_id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hobbies`
--
ALTER TABLE `hobbies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hobbies_type_hobby_id_foreign` (`type_hobby_id`);

--
-- Indexes for table `massages`
--
ALTER TABLE `massages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `massages_user_id1_foreign` (`user_id1`),
  ADD KEY `massages_user_id2_foreign` (`user_id2`);

--
-- Indexes for table `notifies`
--
ALTER TABLE `notifies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifies_type_notify_id_foreign` (`type_notify_id`),
  ADD KEY `notifies_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `type_events`
--
ALTER TABLE `type_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_hobbies`
--
ALTER TABLE `type_hobbies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_notifies`
--
ALTER TABLE `type_notifies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_city_id_foreign` (`city_id`),
  ADD KEY `users_district_id_foreign` (`district_id`);

--
-- Indexes for table `user_hobbies`
--
ALTER TABLE `user_hobbies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_hobbies_user_id_foreign` (`user_id`),
  ADD KEY `user_hobbies_hobby_id_foreign` (`hobby_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=681;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `fixed_times`
--
ALTER TABLE `fixed_times`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `hobbies`
--
ALTER TABLE `hobbies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `massages`
--
ALTER TABLE `massages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `notifies`
--
ALTER TABLE `notifies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `type_events`
--
ALTER TABLE `type_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `type_hobbies`
--
ALTER TABLE `type_hobbies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `type_notifies`
--
ALTER TABLE `type_notifies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `user_hobbies`
--
ALTER TABLE `user_hobbies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `fixed_times`
--
ALTER TABLE `fixed_times`
  ADD CONSTRAINT `fixed_times_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hobbies`
--
ALTER TABLE `hobbies`
  ADD CONSTRAINT `hobbies_type_hobby_id_foreign` FOREIGN KEY (`type_hobby_id`) REFERENCES `type_hobbies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `massages`
--
ALTER TABLE `massages`
  ADD CONSTRAINT `massages_user_id1_foreign` FOREIGN KEY (`user_id1`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `massages_user_id2_foreign` FOREIGN KEY (`user_id2`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifies`
--
ALTER TABLE `notifies`
  ADD CONSTRAINT `notifies_type_notify_id_foreign` FOREIGN KEY (`type_notify_id`) REFERENCES `type_notifies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_hobbies`
--
ALTER TABLE `user_hobbies`
  ADD CONSTRAINT `user_hobbies_hobby_id_foreign` FOREIGN KEY (`hobby_id`) REFERENCES `hobbies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_hobbies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
