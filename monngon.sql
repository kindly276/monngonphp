-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2016 at 10:53 AM
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
-- Table structure for table `cachnau`
--

CREATE TABLE `cachnau` (
  `id_cooking_type` int(11) NOT NULL,
  `name_cooking_type` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cachnau`
--

INSERT INTO `cachnau` (`id_cooking_type`, `name_cooking_type`) VALUES
(1, 'sào');

-- --------------------------------------------------------

--
-- Table structure for table `dipnau`
--

CREATE TABLE `dipnau` (
  `id_dipnau` int(11) NOT NULL,
  `name_dipnau` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `id_material` int(11) NOT NULL,
  `name_material` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`id_material`, `name_material`) VALUES
(2, 'Thịt heo'),
(3, 'Thịt gà'),
(4, 'Thịt bò'),
(5, 'Thịt khác'),
(6, 'Cá'),
(7, 'Tôm'),
(8, 'Mực/Bạch tuộc'),
(9, 'Hải sản khác'),
(10, 'Nấm'),
(11, 'Cà rốt'),
(12, 'Khác'),
(13, 'Trứng'),
(14, 'Đậu hũ'),
(15, 'Bánh mì'),
(16, 'Khác'),
(1, 'thử');

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
  `video` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `making` text COLLATE utf8_vietnamese_ci NOT NULL,
  `id_cooking_type` int(11) NOT NULL,
  `id_material` int(11) NOT NULL,
  `id_dipnau` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `mons`
--

INSERT INTO `mons` (`id`, `title`, `description`, `material`, `image`, `video`, `making`, `id_cooking_type`, `id_material`, `id_dipnau`) VALUES
(8, 'MÌ CAY CHAY', 'Mì cay là món ăn ngày càng phổ biến với giới trẻ và cả thực khách trung niên. Vậy hôm nay Món Ngon Mỗi Ngày sẽ giới thiệu đến bạn món Mì Cay Chay, giúp thực đơn nhà mình thêm màu sắc mới mẻ nhé. Với những nguyên liệu đơn giản như thịt bò chay, cá viên chay quyện cùng nước mì đậm đà thơm mùi ớt hiểm, ớt bột Hàn Quốc, hài hòa chua – ngọt – cay cùng sợi mì udon dẻo, thấm vị, món ngon này chắc hẳn sẽ khiến bữa chay của bạn thêm thú vị!\r\n\r\nDễ\r\n4 người\r\n30 phút\r\n15/10/2016\r\nXem clip  like', 'NGUYÊN LIỆU\r\nNước dùng chay 1.5 lít\r\nMe vắt 50g\r\nMì Udon 3 gói\r\nThịt bò chay lát 100g\r\nCá viên chay 200g\r\nHành boaro cắt lát 1 cây\r\nNấm kim châm 100g\r\nRau húng quế, ngò gai, ớt hiểm băm nhỏ, dầu ăn\r\nĂn kèm: Hành boaro, hẹ lá, rau tần ô, lá tàu hủ ky chiên giòn\r\nMuối, đường phèn, ớt bột Hàn Quốc, nước mắm chay, dầu ăn\r\nBột ngọt  Bột ngọt AJI-NO-MOTO®\r\nAji-ngon® Hạt nêm từ nấm hương và hạt sen bổ sung kẽm Hạt nêm từ nấm hương và hạt sen bổ sung kẽm', 'http://monngonmoingay.com/wp-content/uploads/2016/10/1410-MiCayChay-540-360.jpg', 'https://www.youtube.com/watch?v=R12ci7XegIM', 'NGUYÊN LIỆU\r\nNước dùng chay 1.5 lít\r\nMe vắt 50g\r\nMì Udon 3 gói\r\nThịt bò chay lát 100g\r\nCá viên chay 200g\r\nHành boaro cắt lát 1 cây\r\nNấm kim châm 100g\r\nRau húng quế, ngò gai, ớt hiểm băm nhỏ, dầu ăn\r\nĂn kèm: Hành boaro, hẹ lá, rau tần ô, lá tàu hủ ky chiên giòn\r\nMuối, đường phèn, ớt bột Hàn Quốc, nước mắm chay, dầu ăn\r\nBột ngọt  Bột ngọt AJI-NO-MOTO®\r\nAji-ngon® Hạt nêm từ nấm hương và hạt sen bổ sung kẽm Hạt nêm từ nấm hương và hạt sen bổ sung kẽm', 0, 0, 0),
(9, 'CÁ ĐIÊU HỒNG KHO TƯƠNG HỘT', 'Miếng cá ngọt thịt thấm vị tương đậm đà dùng kèm cơm trắng sẽ là bữa ăn khó cưỡng cho những ngày mưa lạnh. Cá được áo một màu nâu đẹp mắt của tương hột, dậy hương thơm lừng. Từng thớ thịt cá đều thấm vị, béo ngọt và chắc thịt. Một món ăn có vẻ cầu kỳ về hương vị nhưng thật ra rất dễ làm mà lại giàu dinh dưỡng, cho bữa ăn gia đình bạn thêm phong phú!', 'NGUYÊN LIỆU\r\nCá điêu hồng 1 con (khoảng 800g)\r\nTương hột vàng băm nhỏ 3M\r\nGừng cắt lát 30g\r\nTỏi bằm 1M\r\nỚt bằm 1M\r\nHành lá cắt nhỏ 2M\r\nHành tím phi 3M\r\nGia vị: Dầu ăn, tiêu sọ bể, đường\r\nĂn kèm: Cơm trắng\r\nTrang trí: Ngò rí\r\nNước tương  Nước tương \r\nBột ngọt  Bột ngọt AJI-NO-MOTO®', 'http://monngonmoingay.com/wp-content/uploads/2016/10/1410-Ca-Dieu-Hong-540-360.jpg', 'https://www.youtube.com/embed/Gx9yQorxOmQ?autoplay=1', '1. SƠ CHẾ:\r\n– Cá điêu hồng làm sạch cắt dọc hai đường trên thân cá sau đó cắt đôi, ướp vào 1M tiêu sọ bể, 2M nước tương “Phú Sĩ” để 15 phút cho cá thấm.\r\n– Tương hột bằm nhỏ.\r\n2. THỰC HIỆN:\r\nLàm nóng dầu, cho tỏi, ớt, gừng vào xào thơm, cho cá vào xào săn, trở đều hai mặt. Để gừng lát phía dưới, cá lên trên, cho vào 2 chén nước sôi, hạ lửa, nêm 1/2M đường, 1/2M bột ngọt AJI-NO-MOTO®, kho nhỏ lửa đến khi cá chín và thấm gia vị, tắt lửa, cho hành lá và hành phi vào.\r\n3. CÁCH DÙNG:\r\nMúc cá ra dùng kèm cơm trắng.\r\nMách nhỏ\r\n– Ướp cá với nước tương và tiêu bể để cá thấm và thơm ngon. \r\n– Lót gừng lát phía dưới để cá không bị dính đáy nồi khi kho.', 0, 0, 0),
(10, 'CANH CHUA TÔM CÀ RI', 'Một chút biến tấu từ món cà ri thông thường, Món Ngon Mỗi Ngày giới thiệu đến bạn một món ăn mới mang phong vị Ấn Độ đến bữa cơm gia đình. Món canh nóng bốc khói thơm ngào ngạt mùi cà ri, sả băm đặc trưng, hương vị đậm đà, chua cay của nước dùng cùng vị tôm ngọt dịu thật hoà hợp. Chúc các bạn thành công với món ăn chế biến đơn giản nhưng vô cùng hấp dẫn này!', 'NGUYÊN LIỆU\r\nTôm bạc đất 200g\r\nCà chua chín đỏ 2 trái\r\nHành tây 1/2 củ\r\nLá cà ry 10 lá\r\nCần tàu 10g\r\nSả bằm 1M\r\nỚt hiểm 5 trái\r\nNước me đặc 2M\r\nTỏi băm, sả băm\r\nGia vị: Dầu ăn, muối, đường, nước mắm, bột cà ri\r\nTrang trí: ngò rí\r\nĂn kèm: Cơm trắng hoặc bún tươi\r\nBột ngọt  Bột ngọt AJI-NO-MOTO®\r\nAji-ngon® Hạt nêm (hương vị heo) bổ sung canxi Hạt nêm (hương vị heo) bổ sung canxi', 'http://monngonmoingay.com/wp-content/uploads/2016/10/1410-Canh-chua-Tom-540-360.jpg', 'https://www.youtube.com/embed/wUB-8hrsE_8?autoplay=1', '1. SƠ CHẾ:\r\n– Tôm chẻ lưng, bỏ phần chỉ đen ở lưng tôm, ướp 1m đường, 1/2M bột cà ry, 1M hạt nêm Aji-ngon®, 1M nước mắm, trộn đều, để 15 phút cho tôm thấm gia vị.\r\n– Cà chua bỏ hạt, băm nhỏ. Hành tây cắt múi cau. Cần tàu, ngò rí cắt khúc 3cm. Ớt hiểm đập dập.\r\n2. THỰC HIỆN:\r\nNấu canh: Làm nóng dầu, cho tôm vào xóc chín, trút ra để riêng, cho tỏi bằm, sả bằm, lá cà ri vào xào thơm. Cho tiếp cà chua băm nhỏ, ớt hiểm xào sơ. Thêm 1.5 lít nước ấm vào nấu sôi, tiếp tục cho hành tây, tôm, nước me vào, nêm thêm 1m muối, 1/2M bột ngọt AJI-NO-MOTO®, 1M đường, 1/2M hạt nêm Aji-ngon®, nếm vị vừa ăn. Cho cần tàu vào trước khi ăn.\r\n3. CÁCH DÙNG:\r\nMúc canh ra tô, dùng nóng với cơm trắng hoặc bún.\r\nMách nhỏ\r\n– Ướp tôm với bột cà ri, nước mắm, hạt nêm Aji-ngon® trước để khi ăn tôm có vị đậm đà và thơm hơn.\r\n– Cho nước thật sôi mới cho tôm vào nấu để tôm săn chắc.', 0, 0, 0),
(11, 'dữ liệu giả', 'dữ liệu giả', 'dữ liệu giả', 'dữ liệu giả', 'dữ liệu giả', 'dữ liệu giả', 0, 0, 0),
(12, 'sds', 'ds', 'ds', '', 'sd', 'sd', 0, 0, 0),
(16, 'hsd', 'hsd', 'hsd', 'hsd', 'hsd', 'hsd', 4, 0, 0),
(19, 'jghn', 'jhj', 'jh', 'hjh', 'hjh', 'hjh', 90, 90, 0),
(23, 'Khóa ngoại', 'Khóa ngoại', 'Khóa ngoại', 'Khóa ngoại', 'Khóa ngoại', 'Khóa ngoại', 80, 80, 0),
(24, 'op;ôp', 'ôppo', 'pôpp', 'ôpp', 'ôp', 'ôpp', 78454, 54654, 0),
(25, 'op;ôp', 'ôppo', 'pôpp', 'ôpp', 'ôp', 'ôpp', 78454, 54654, 0),
(26, 'sđs', 'dsd', 'dsd', 'dsds', 'dsds', 'sds', 343, 434, 0),
(27, 'sđs', 'dsd', 'dsd', 'dsds', 'dsds', 'sds', 343, 434, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cachnau`
--
ALTER TABLE `cachnau`
  ADD PRIMARY KEY (`id_cooking_type`);

--
-- Indexes for table `dipnau`
--
ALTER TABLE `dipnau`
  ADD PRIMARY KEY (`id_dipnau`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id_material`);

--
-- Indexes for table `mons`
--
ALTER TABLE `mons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_material` (`id_material`),
  ADD KEY `fk_id_cachnau` (`id_cooking_type`),
  ADD KEY `fk_id_dipnau` (`id_dipnau`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cachnau`
--
ALTER TABLE `cachnau`
  MODIFY `id_cooking_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dipnau`
--
ALTER TABLE `dipnau`
  MODIFY `id_dipnau` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `id_material` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `mons`
--
ALTER TABLE `mons`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
