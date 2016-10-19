-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2016 at 11:02 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `monngon`
--

-- --------------------------------------------------------

--
-- Table structure for table `mons`
--

CREATE TABLE `mons` (
  `id` int(50) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `material` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `video` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `mons`
--

INSERT INTO `mons` (`id`, `title`, `description`, `material`, `image`, `video`) VALUES
(8, 'MÌ CAY CHAY', 'Mì cay là món ăn ngày càng phổ biến với giới trẻ và cả thực khách trung niên. Vậy hôm nay Món Ngon Mỗi Ngày sẽ giới thiệu đến bạn món Mì Cay Chay, giúp thực đơn nhà mình thêm màu sắc mới mẻ nhé. Với những nguyên liệu đơn giản như thịt bò chay, cá viên chay quyện cùng nước mì đậm đà thơm mùi ớt hiểm, ớt bột Hàn Quốc, hài hòa chua – ngọt – cay cùng sợi mì udon dẻo, thấm vị, món ngon này chắc hẳn sẽ khiến bữa chay của bạn thêm thú vị!\r\n\r\nDễ\r\n4 người\r\n30 phút\r\n15/10/2016\r\nXem clip  like', '1. SƠ CHẾ:\r\n– Thịt bò chay ngâm nước ấm, vắt ráo. Cá viên chay cắt đôi, nêm 1/2m hạt nêm Aji-ngon® hạt sen và nấm hương.\r\n– Nấm kim châm cắt đôi. Hẹ lá cắt khúc 3cm. Rau tần ô cắt khúc. Rau quế, ngò gai cắt nhỏ.\r\n– Me cho vào 2/3 chén nước sôi để lấy 1/2 chén nước cốt me.\r\n2. THỰC HIỆN:\r\nĐun nóng 2M dầu ăn, cho boa-rô vào phi thơm, rồi thêm 2m ớt bột và ớt hiểm băm vào xào, sau đó trút thịt bò chay và cá viên vào xào thơm. Cho 1.5 lít nước dùng chay vào nồi, nêm 1M muối, 1M bột ngọt AJI-NO-MOTO®, 3M hạt nêm Aji-ngon® từ hạt sen và nấm hương, 2m ớt bột Hàn Quốc, 50g đường phèn, 2m nước mắm chay, 1/2 chén nước me, khuấy đều cho tan gia vị, nếm vị vừa ăn, tắt lửa.\r\n3. CÁCH DÙNG:\r\nCho mì, nấm, rau các loại vào nồi nước dùng nấu 2 phút, rắc rau quế và ngò gai cắt nhỏ lên trên. Múc ra tô, thêm tàu hũ ky chiên giòn vào, dùng nóng.', '', 'https://www.youtube.com/watch?v=R12ci7XegIM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mons`
--
ALTER TABLE `mons`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mons`
--
ALTER TABLE `mons`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
