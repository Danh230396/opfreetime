-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2016 at 06:13 PM
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
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Da Nang', 'Da Nang la mot thanh pho dep truc thuoc mien trung nuoc ta', NULL, NULL),
(2, 'Ha Noi', 'Ha Noi la thanh pho thu do cua Viet Nam', NULL, NULL),
(3, 'Ho Chi Minh', 'Ho Chi Minh la thanh pho lon nhat Viet Nam', NULL, NULL),
(4, 'Can Tho', 'Can Tho la thanh pho tho mong nhat cua dong bang song Cua Long', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `description`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 'Hai Chau', 'Hai Chau la quan giau co nhat Da Nang', 1, NULL, NULL),
(2, 'Ngu Hanh Son', 'Ngu Hanh Son la qua co danh lam thang canh, su huu nhieu di tich dep nhat', 1, NULL, NULL),
(3, 'Tan Binh', 'La quan lon cua ho Chi MInh', 3, NULL, NULL),
(4, 'Thu Duc', 'La mot trong nhung vung da dat yen binh nhat cua thanh pho', 3, NULL, NULL);

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
(3, 7, 2, 'Chung kêt thể thao giai huyện', 'Chung kêt thể thao giai huyện', 'Tran trung ket nay se dien ra rat kich tính mời các bạn đón xem', '22023655309489.jpg', 6.35, 6.00, '2016-07-12 00:00:00', 'Tại sân Ba Đình thành phố Đa Nẵng', '2016-07-25 01:11:18', '2016-07-25 01:11:18');

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
(25, 9, 9, 1, '2016-07-20 23:53:24', '2016-07-20 23:53:24');

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
('2016_07_25_054727_create_events_table', 17);

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
(7, 7, 2, 'nguyen ngoc hon', 'Vừa tạo một sự kiện', 'Đường dẫn tạm', '2016-07-25 01:11:18', '2016-07-25 01:11:18');

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
(7, 'nguyen ngoc hon', '2016-06-16', 'Nam', 'nguyenngochon@gmail.com', '$2y$10$tXQ5CEK2QoHpK3IP7.K.RuvH3FWOER6YqQkU7ps3bW77Yi6yOAFku', 1, 1, '3624803335799.jpg', 'Hon la mot thang thich nhay', '12/12', 'Giao tiep tot', 'Designer', 'BCGAHRit34ZdlKViSqRHKTvFxsM7d9160QXC9pabSkqMXSjr31sAY6HhcL9T', '2016-06-28 15:41:31', '2016-07-23 12:46:46'),
(8, 'Tu Phuong Danh', '2016-07-22', 'Nam', 'tuphuongdanh1996@gmail.com', '$2y$10$TmYvAGBM0qqYBD1u0o20qOjcjeULBqE6sCjV1PEjYLpXaQgIvEtD6', 3, 3, '16976532434960.PNG', 'Là một người khá yêu đời, đến với opfreetime tôi muốn tối ưu hóa thời gian rảnh của tôi. Tôi có hàng giờ thời gian rảnh mỗi ngày, nhưng không biết làm gì hết.', '12/12', 'Toi thieu nhieu ky nang', 'Website developer', 'IVULUiZa9W9vBig2bCbGpUHia10so8M2tO9Dm3eZBpyIXiOpN75LUiXGqeEy', '2016-07-10 16:15:27', '2016-07-18 09:37:10'),
(9, 'Huynh Van Tu', '2016-07-06', 'Nam', 'huynhvantu@gmail.com', '$2y$10$sUZyuXsTgAQ17Ucf3VY3yOEAQwplSpMxinib2mceW/pUdfUj/ayGm', 3, 3, '8816577451258.jpg', 'Tôi là một người thích chơi game', '12/12', 'Chém gió cấp trung ương', 'Tester', 'hKX1xj5jn77X2xAOBJU8pYB5a4H7j8D9O7fb4Evp', '2016-07-20 22:11:55', '2016-07-20 22:16:22');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_city_id_foreign` (`city_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `fixed_times`
--
ALTER TABLE `fixed_times`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `hobbies`
--
ALTER TABLE `hobbies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `notifies`
--
ALTER TABLE `notifies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user_hobbies`
--
ALTER TABLE `user_hobbies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `notifies`
--
ALTER TABLE `notifies`
  ADD CONSTRAINT `notifies_type_notify_id_foreign` FOREIGN KEY (`type_notify_id`) REFERENCES `type_notifies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_hobbies`
--
ALTER TABLE `user_hobbies`
  ADD CONSTRAINT `user_hobbies_hobby_id_foreign` FOREIGN KEY (`hobby_id`) REFERENCES `hobbies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_hobbies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
