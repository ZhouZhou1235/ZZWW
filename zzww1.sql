-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2024-02-29 20:38:02
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `zzww`
--

-- --------------------------------------------------------

--
-- 表的结构 `account`
--

CREATE TABLE `account` (
  `Id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `furrytype` varchar(255) DEFAULT NULL,
  `headimg` varchar(255) DEFAULT NULL,
  `backimg` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `controlnum` varchar(255) DEFAULT NULL,
  `jointime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `starnum` int(11) DEFAULT NULL,
  `candynum` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bulletball`
--

CREATE TABLE `bulletball` (
  `Id` int(11) NOT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `lives` varchar(255) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `collections`
--

CREATE TABLE `collections` (
  `Id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `info` varchar(1024) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE `comment` (
  `Id` int(11) NOT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `work_id` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `furrygallery`
--

CREATE TABLE `furrygallery` (
  `Id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `claw` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `gallerycollections`
--

CREATE TABLE `gallerycollections` (
  `Id` int(11) NOT NULL,
  `galleryid` int(255) NOT NULL,
  `collectionid` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `lib`
--

CREATE TABLE `lib` (
  `Id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `info` varchar(1024) NOT NULL,
  `username` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `galleryid` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phpcolumn`
--

CREATE TABLE `phpcolumn` (
  `Id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `claw` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sendcandy`
--

CREATE TABLE `sendcandy` (
  `Id` int(11) NOT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `receiver_id` varchar(255) DEFAULT NULL,
  `candynum` int(11) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tags`
--

CREATE TABLE `tags` (
  `Id` int(11) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `creator` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tagsgallery`
--

CREATE TABLE `tagsgallery` (
  `Id` int(11) NOT NULL,
  `tagid` int(11) NOT NULL,
  `galleryid` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `zzwwboard`
--

CREATE TABLE `zzwwboard` (
  `Id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转储表的索引
--

--
-- 表的索引 `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `bulletball`
--
ALTER TABLE `bulletball`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `furrygallery`
--
ALTER TABLE `furrygallery`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `gallerycollections`
--
ALTER TABLE `gallerycollections`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `lib`
--
ALTER TABLE `lib`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `phpcolumn`
--
ALTER TABLE `phpcolumn`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `sendcandy`
--
ALTER TABLE `sendcandy`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `tagsgallery`
--
ALTER TABLE `tagsgallery`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `zzwwboard`
--
ALTER TABLE `zzwwboard`
  ADD PRIMARY KEY (`Id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `account`
--
ALTER TABLE `account`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `bulletball`
--
ALTER TABLE `bulletball`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `collections`
--
ALTER TABLE `collections`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `comment`
--
ALTER TABLE `comment`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `furrygallery`
--
ALTER TABLE `furrygallery`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `gallerycollections`
--
ALTER TABLE `gallerycollections`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `lib`
--
ALTER TABLE `lib`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `phpcolumn`
--
ALTER TABLE `phpcolumn`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sendcandy`
--
ALTER TABLE `sendcandy`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `tags`
--
ALTER TABLE `tags`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `tagsgallery`
--
ALTER TABLE `tagsgallery`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `zzwwboard`
--
ALTER TABLE `zzwwboard`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
