-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2016 at 11:01 AM
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
(1, 'Xào'),
(2, 'Kho'),
(4, 'Gỏi/Trộn'),
(6, 'Nướng'),
(8, 'Om/Rim'),
(10, 'Lẩu'),
(12, 'Hấp/Tiềm'),
(14, 'Quay/Rôti'),
(16, 'Canh/Súp'),
(18, 'Hầm'),
(20, 'Chiên'),
(22, 'Khác');

-- --------------------------------------------------------

--
-- Table structure for table `dipnau`
--

CREATE TABLE `dipnau` (
  `id_dipnau` int(11) NOT NULL,
  `name_dipnau` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dipnau`
--

INSERT INTO `dipnau` (`id_dipnau`, `name_dipnau`) VALUES
(1, 'Hàng ngày'),
(3, 'Cuối tuần'),
(4, 'Sinh nhật'),
(5, 'Giáng sinh'),
(6, 'Khác'),
(7, 'Món chay'),
(8, 'Tết');

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
(28, 'CÀ BÁT OM THỊT BA CHỈ', 'Là một món ăn ngon với sự kết hợp của thịt và cà bát, là khúc biến tấu tuyệt vời cho bữa cơm trưa, lại đầy đủ dưỡng chất nữa, rất đơn giản và dễ thực hiện  ', '- Cà bát: 300g\r\n- Thịt ba chỉ: 200g\r\n- Riềng nhỏ: 1 củ\r\n- Nghệ tươi: 1 củ\r\n- Chanh: 1 trái\r\n- Lá tía tô: 1 ít\r\n- Cơm mẻ, hành lá, ớt, tỏi băm\r\n- Đường, tiêu, muối, nước mắm, dầu ăn\r\nHạt nêm (hương vị heo) bổ sung canxi Hạt nêm (hương vị heo) bổ sung canxi', 'http://monngonmoingay.com/wp-content/uploads/2015/08/IMG_0081-ca-bat-om-thit-ba-chi.png', '', '1. SƠ CHẾ:\r\n– Cà bát cắt múi cau, ngâm qua nước chanh cho trắng, vớt ra để ráo.\r\n– Riềng, nghệ gọt vỏ, băm nhỏ, vắt lấy nước cốt. Hành lá cắt khúc. Lá tía tô cắt dày 0,5cm.\r\n– Thịt ba chỉ cắt miếng dày 1cm, ướp hành tỏi, 1M nước riềng, 1M nước nghệ, 1M cơm mẻ, 1M nước mắm, 1m đường, 1m Hạt nêm Aji-ngon®, 1/2m tiêu.\r\n2. THỰC HIỆN:\r\n– Phi thơm hành tỏi, cho thịt vào xào lửa lớn cho thịt săn, thêm 1 chén nước, đảo đều cho thịt thấm gia vị, tiếp tục cho cà vào, thêm chút nước đậy vung, om cà vài phút cho chín, nêm lại vừa ăn, thêm hành lá và lá tía tô vào. Tắt bếp.\r\n3. CÁCH DÙNG:\r\n– Múc cà bát om thịt ba chỉ ra dĩa, trang trí ớt sợi và tía tô, dùng nóng với cơm trắng và nước mắm.\r\nMách nhỏ\r\n– Để món ăn có hương vị đặc trưng hơn, ta có thể sử dụng thêm mắm tôm.\r\n– Ngâm cà vào nước chanh để cà không bị thâm đen sau khi cắt.\r\n– Cà nhanh chín nên chỉ xào sơ rồi om', 0, 2, 0),
(29, 'BÁNH MÌ BÌ SÀI GÒN', 'Món ăn sáng phổ biến, vừa ngon vừa đảm bảo nguồn năng lượng học tập và làm việc cho mọi người, đặc biệt chế biến nhanh gọn, không tốn nhiều thời gian buổi sáng.', 'NGUYÊN LIỆU\r\n- Thịt nách hoặc thịt ba chỉ: 300g\r\n- Da heo: 150g\r\n- Thính: 3M\r\n- Bánh mì: 4 ổ\r\n- Nước dừa: 1 chén\r\n- Đồ chua, ớt, ngò rí, hành tỏi\r\n- Ớt, hành lá, đường, muối\r\n- Nước mắm, ngũ vị hương, dầu ăn\r\nGiấm gạo lên men  Giấm gạo lên men LISA®\r\nHạt nêm (hương vị heo) bổ sung canxi Hạt nêm (hương vị heo) bổ sung canxi', 'http://monngonmoingay.com/wp-content/uploads/2015/08/IMG_0055-banh-mi-bi-Sai-Gon.png', '', '1. SƠ CHẾ:\r\n– Hành tỏi ớt băm nhỏ, lấy 1 ít nước cốt hành tỏi. Phi thơm 1 ít tỏi.\r\n– Ướp thịt với 2m nước hành tỏi, 1/2m tiêu, 1/2m Hạt nêm Aji-ngon®, 1/3m ngũ vị hương, để thấm 30 phút.\r\n– Làm bì: da heo luộc qua nước có pha 1m Hạt nêm Aji-ngon® vừa chín tới vớt ra ngâm nước đá. Sau đó, nghiêng dao lạng thật mỏng rồi cắt sợi.\r\n– Làm mỡ hành: phi 2M dầu nóng chế vào chén đựng hành lá có 1 ít muối và khuấy đều.\r\n2. THỰC HIỆN:\r\n– Pha nước mắm: trộn đều 5M nước, 2M nước mắm,1M Giấm gạo lên men LISA®, 2M đường, 1 ít tỏi băm.\r\n– Đun nóng ít đầu, chiên thịt xém mắt, sau đó thêm nước dừa và nấu nhỏ lửa đến khi thịt chín, để nguội, cắt sợi cỡ cọng giá.\r\n– Trộn đều thịt, da, thính, tỏ băm, tỏi phi, 1/4m muối, 1/2m đường, 1/2m Bột ngọt AJI-NO-MOTO®.\r\n– Nướng lại bánh mì cho nóng, cắt dọc, phết mỡ hành, sau đó xếp bì, đồ chua, đầu hành, ngò rí, ớt cắt sợi. Chan nước mắm chua ngọt, kẹp lại.\r\n3. CÁCH DÙNG:\r\n– Dùng khi bánh mì còn nóng sẽ ngon hơn.\r\nMách nhỏ\r\n– Để thịt có độ giòn ngon hơn ta nên chọn phần thịt nách.\r\n– Nên để thịt thật nguội rồi mới cắt để thịt có sợi đẹp và không bị nát.', 0, 2, 0),
(30, 'BÁNH MÌ BÌ SÀI GÒN', 'Món ăn sáng phổ biến, vừa ngon vừa đảm bảo nguồn năng lượng học tập và làm việc cho mọi người, đặc biệt chế biến nhanh gọn, không tốn nhiều thời gian buổi sáng.', 'NGUYÊN LIỆU\r\n- Thịt nách hoặc thịt ba chỉ: 300g\r\n- Da heo: 150g\r\n- Thính: 3M\r\n- Bánh mì: 4 ổ\r\n- Nước dừa: 1 chén\r\n- Đồ chua, ớt, ngò rí, hành tỏi\r\n- Ớt, hành lá, đường, muối\r\n- Nước mắm, ngũ vị hương, dầu ăn\r\nGiấm gạo lên men  Giấm gạo lên men LISA®\r\nHạt nêm (hương vị heo) bổ sung canxi Hạt nêm (hương vị heo) bổ sung canxi', 'http://monngonmoingay.com/wp-content/uploads/2015/08/IMG_0055-banh-mi-bi-Sai-Gon.png', '', '1. SƠ CHẾ:\r\n– Hành tỏi ớt băm nhỏ, lấy 1 ít nước cốt hành tỏi. Phi thơm 1 ít tỏi.\r\n– Ướp thịt với 2m nước hành tỏi, 1/2m tiêu, 1/2m Hạt nêm Aji-ngon®, 1/3m ngũ vị hương, để thấm 30 phút.\r\n– Làm bì: da heo luộc qua nước có pha 1m Hạt nêm Aji-ngon® vừa chín tới vớt ra ngâm nước đá. Sau đó, nghiêng dao lạng thật mỏng rồi cắt sợi.\r\n– Làm mỡ hành: phi 2M dầu nóng chế vào chén đựng hành lá có 1 ít muối và khuấy đều.\r\n2. THỰC HIỆN:\r\n– Pha nước mắm: trộn đều 5M nước, 2M nước mắm,1M Giấm gạo lên men LISA®, 2M đường, 1 ít tỏi băm.\r\n– Đun nóng ít đầu, chiên thịt xém mắt, sau đó thêm nước dừa và nấu nhỏ lửa đến khi thịt chín, để nguội, cắt sợi cỡ cọng giá.\r\n– Trộn đều thịt, da, thính, tỏ băm, tỏi phi, 1/4m muối, 1/2m đường, 1/2m Bột ngọt AJI-NO-MOTO®.\r\n– Nướng lại bánh mì cho nóng, cắt dọc, phết mỡ hành, sau đó xếp bì, đồ chua, đầu hành, ngò rí, ớt cắt sợi. Chan nước mắm chua ngọt, kẹp lại.\r\n3. CÁCH DÙNG:\r\n– Dùng khi bánh mì còn nóng sẽ ngon hơn.\r\nMách nhỏ\r\n– Để thịt có độ giòn ngon hơn ta nên chọn phần thịt nách.\r\n– Nên để thịt thật nguội rồi mới cắt để thịt có sợi đẹp và không bị nát.', 0, 2, 0),
(31, 'HEO QUAY KHO MĂNG', 'Heo quay kho măng là món ăn ngon có sự kết hợp hài hòa của các nguyên liệu vừa giàu năng lượng vừa nhiều chất xơ, ngoài ra cách chế biến này còn để tái chế biến các món quay dùng không hết trong các bữa tiệc thành món ăn thơm ngon hấp dẫn, thích hợp dùng khi thời tiết đang giá lạnh.', 'NGUYÊN LIỆU\r\nHeo quay: 300g\r\nMăng vàng: 150g\r\nTrứng cút: 8 quả\r\nDừa xiêm: 1 trái\r\nTiêu, đường, dầu ăn\r\nỚt sừng, hành lá, tỏi băm\r\nNước tương LISA\r\nHạt nêm (hương vị heo) bổ sung canxi Hạt nêm (hương vị heo) bổ sung canxi', 'http://monngonmoingay.com/wp-content/uploads/2015/08/201205170432230000006_heo-quay-kho-mang-49an576.png', '', '1. SƠ CHẾ:\r\n– Thịt heo quay cắt miếng bản 2cm, ướp 1m tỏi băm, 1m hạt nêm Aji-ngon® và 1.5M nước tương LISA,1/3m tiêu.\r\n– Măng cắt khúc, khứa vào hai bên thân măng. Trứng cút luộc chín, bóc vỏ. Ớt sừng bỏ hạt, cắt khúc. Hành lá cắt khúc 4cm.\r\n2. THỰC HIỆN:\r\n– Phi thơm tỏi, xào sơ thịt và măng, cho nước dừa vào, thêm trứng cút, ớt sừng, kho nhỏ lửa đến khi thịt mềm, nước kho sánh lại là được.\r\n3. CÁCH DÙNG:\r\nCho món kho măng ra dĩa, rắc ít tiêu và hành lá lên trên, dùng nóng với cơm trắng.\r\nMách nhỏ\r\nNước tương LISA sẽ cho các món kho có màu sắc sáng đẹp.\r\nLựa măng có bản to, chắc, màu vàng sáng, không có mùi chua.', 0, 2, 0),
(32, 'HEO QUAY KHO MĂNG', 'Heo quay kho măng là món ăn ngon có sự kết hợp hài hòa của các nguyên liệu vừa giàu năng lượng vừa nhiều chất xơ, ngoài ra cách chế biến này còn để tái chế biến các món quay dùng không hết trong các bữa tiệc thành món ăn thơm ngon hấp dẫn, thích hợp dùng khi thời tiết đang giá lạnh.', 'NGUYÊN LIỆU\r\nHeo quay: 300g\r\nMăng vàng: 150g\r\nTrứng cút: 8 quả\r\nDừa xiêm: 1 trái\r\nTiêu, đường, dầu ăn\r\nỚt sừng, hành lá, tỏi băm\r\nNước tương LISA\r\nHạt nêm (hương vị heo) bổ sung canxi Hạt nêm (hương vị heo) bổ sung canxi', 'http://monngonmoingay.com/wp-content/uploads/2015/08/201205170432230000006_heo-quay-kho-mang-49an576.png', '', '1. SƠ CHẾ:\r\n– Thịt heo quay cắt miếng bản 2cm, ướp 1m tỏi băm, 1m hạt nêm Aji-ngon® và 1.5M nước tương LISA,1/3m tiêu.\r\n– Măng cắt khúc, khứa vào hai bên thân măng. Trứng cút luộc chín, bóc vỏ. Ớt sừng bỏ hạt, cắt khúc. Hành lá cắt khúc 4cm.\r\n2. THỰC HIỆN:\r\n– Phi thơm tỏi, xào sơ thịt và măng, cho nước dừa vào, thêm trứng cút, ớt sừng, kho nhỏ lửa đến khi thịt mềm, nước kho sánh lại là được.\r\n3. CÁCH DÙNG:\r\nCho món kho măng ra dĩa, rắc ít tiêu và hành lá lên trên, dùng nóng với cơm trắng.\r\nMách nhỏ\r\nNước tương LISA sẽ cho các món kho có màu sắc sáng đẹp.\r\nLựa măng có bản to, chắc, màu vàng sáng, không có mùi chua.', 0, 2, 0);

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
  MODIFY `id_cooking_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `dipnau`
--
ALTER TABLE `dipnau`
  MODIFY `id_dipnau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `id_material` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `mons`
--
ALTER TABLE `mons`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
