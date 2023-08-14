-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1:3306
-- 生成日期： 2023-06-07 03:25:34
-- 服务器版本： 5.7.31
-- PHP 版本： 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `2112zhangxuekun`
--
CREATE DATABASE IF NOT EXISTS `2112zhangxuekun` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `2112zhangxuekun`;

-- --------------------------------------------------------

--
-- 表的结构 `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) NOT NULL,
  `Age` int(11) DEFAULT NULL,
  `Tel` varchar(255) DEFAULT NULL,
  `Status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `students`
--

INSERT INTO `students` (`ID`, `Username`, `Age`, `Tel`, `Status`) VALUES
(52, '宋雄飞', 42, NULL, 0),
(51, '蒋海龙', 22, NULL, 0),
(50, '蒋海龙', 22, NULL, 0),
(49, '薛鹏宇', 33, NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(255) CHARACTER SET utf8 NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 NOT NULL,
  `loginTime` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `tel`, `code`, `loginTime`) VALUES
(15, '12312', 'g5rHiR', '1686103958143'),
(17, '34124141', '2Picc8', '1686104059402'),
(18, '1234124124', 'MrGfrB', '1686104081457'),
(21, '214124141', 'fSnrOz', '1686104393941'),
(23, '13541512', '', ''),
(24, '9887890', '', ''),
(25, '646132612346', '', ''),
(26, '141212414', '', ''),
(27, '123123123123', '', ''),
(28, '141241212', '', ''),
(29, 'saasdasdasdad', 'dBs170', '1686105543762');

-- --------------------------------------------------------

--
-- 表的结构 `xuekun`
--

DROP TABLE IF EXISTS `xuekun`;
CREATE TABLE IF NOT EXISTS `xuekun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `age` int(11) NOT NULL,
  `createtime` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `xuekun`
--

INSERT INTO `xuekun` (`id`, `username`, `age`, `createtime`) VALUES
(1, '张三', 16, '111'),
(2, '李四', 17, '222'),
(3, '王五', 18, NULL),
(4, '赵六', 19, NULL),
(15, '去', 11, '1686108149231');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
