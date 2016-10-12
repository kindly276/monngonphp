-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2016 at 10:55 AM
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
CREATE DATABASE IF NOT EXISTS `monngon` DEFAULT CHARACTER SET utf8 COLLATE utf8_vietnamese_ci;
USE `monngon`;

-- --------------------------------------------------------

--
-- Table structure for table `mons`
--

CREATE TABLE `mons` (
  `id` int(50) NOT NULL,
  `title` text COLLATE utf8_vietnamese_ci NOT NULL,
  `description` text COLLATE utf8_vietnamese_ci NOT NULL,
  `material` text COLLATE utf8_vietnamese_ci NOT NULL,
  `image` varchar(1000) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `mons`
--

INSERT INTO `mons` (`id`, `title`, `description`, `material`, `image`) VALUES
(1, 'CÀ BÁT OM THỊT BA CHỈ', 'Là một món ăn ngon với sự kết hợp của thịt và cà bát, là khúc biến tấu tuyệt vời cho bữa cơm trưa, lại đầy đủ dưỡng chất nữa, rất đơn giản và dễ thực hiện ', '- Cà bát: 300g - Thịt ba chỉ: 200g - Riềng nhỏ: 1 củ - Nghệ tươi: 1 củ - Chanh: 1 trái - Lá tía tô: 1 ít - Cơm mẻ, hành lá, ớt, tỏi băm - Đường, tiêu, muối, nước mắm, dầu ăn Aji-ngon® Hạt nêm (hương vị heo) bổ sung canxi Hạt nêm (hương vị heo) bổ sung canxi', 'http://monngonmoingay.com/wp-content/uploads/2016/09/309-MiQuangXaoLuon-540-360.jpg');

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
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
