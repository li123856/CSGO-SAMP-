-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 12 月 03 日 08:23
-- 服务器版本: 5.5.20
-- PHP 版本: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `csgo`
--

-- --------------------------------------------------------

--
-- 表的结构 `用户`
--

CREATE TABLE IF NOT EXISTS `用户` (
  `编号` int(11) NOT NULL AUTO_INCREMENT,
  `密匙` varchar(64) NOT NULL,
  `名字` varchar(64) NOT NULL,
  `密码` varchar(128) NOT NULL,
  `皮肤` int(11) NOT NULL,
  `金币` int(11) NOT NULL DEFAULT '0',
  `禁言` int(11) NOT NULL DEFAULT '0',
  `等级` int(11) NOT NULL DEFAULT '0',
  `经验` int(11) NOT NULL DEFAULT '0',
  `面向角度` float NOT NULL,
  PRIMARY KEY (`编号`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
