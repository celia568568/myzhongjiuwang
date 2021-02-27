-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2021-02-27 15:05:27
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
-- 数据库： `zjw`
--

-- --------------------------------------------------------

--
-- 表的结构 `zjwitems`
--

CREATE TABLE `zjwitems` (
  `id` int(8) NOT NULL,
  `productId` mediumint(30) NOT NULL,
  `shopId` int(10) NOT NULL,
  `imageUrl` char(128) NOT NULL,
  `url` char(128) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `salePrice` decimal(10,2) NOT NULL,
  `num` int(20) NOT NULL,
  `cartImg` char(128) NOT NULL,
  `is_select` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zjwitems`
--

INSERT INTO `zjwitems` (`id`, `productId`, `shopId`, `imageUrl`, `url`, `productName`, `salePrice`, `num`, `cartImg`, `is_select`) VALUES
(1, 95390, 0, 'http://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/95390/1_220.png', 'https://www.zhongjiu.cn/productdetail/95390.htm', '42度天佑德青稞酒小黑125ml×4', '119.00', 1, 'https://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/95390/1_50.png', 0),
(2, 1319, 1, 'https://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/1319/1_220.png', 'https://www.zhongjiu.cn/productdetail/1319.htm', '53°茅台酒股份公司王子酒500ml', '238.00', 1, 'https://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/1319/1_50.png', 0),
(3, 112463, 2, 'http://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/112463/1_220.png', 'https://www.zhongjiu.cn/productdetail/112463.htm', '42°天佑德17版海拔2800红盒500ml', '168.00', 1, 'https://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/112463/1_50.png', 0),
(4, 331883, 3, 'http://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/331883/1_220.png', 'https://www.zhongjiu.cn/productdetail/331883.htm', '53°习酒窖藏1988雅致版500ml', '788.00', 1, 'https://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/331883/1_50.png', 0),
(5, 331870, 4, 'http://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/331870/1_220.png', 'https://www.zhongjiu.cn/productdetail/331870.htm', '53°重沙经典酒500ml', '299.00', 1, 'https://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/331870/1_50.png', 0),
(6, 675, 5, 'http://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/675/1_220.png', 'https://www.zhongjiu.cn/productdetail/675.htm', '52°剑南春500ml', '469.00', 1, 'https://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/675/1_50.png', 0),
(7, 205986, 6, 'http://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/588/Products/205986/1_220.png', 'https://www.zhongjiu.cn/productdetail/205986.htm', '53°红旗十九酒500ml', '439.00', 1, 'https://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/588/Products/205986/1_50.png', 0),
(8, 2538, 7, 'http://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/2538/1_220.png', 'https://www.zhongjiu.cn/productdetail/2538.htm', '43°红星蓝瓶八年陈酿 500ml （12瓶装）', '360.00', 1, 'https://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/2538/1_50.png', 0),
(9, 2953, 8, 'http://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/2953/1_220.png', 'https://www.zhongjiu.cn/productdetail/2953.htm', '温莎12年调配苏格兰威士忌 700ml', '109.00', 1, 'https://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/2953/1_50.png', 0),
(10, 437, 9, 'http://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/437/1_220.png', 'https://www.zhongjiu.cn/productdetail/437.htm', '40°马爹利名士700ml', '599.00', 1, 'https://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/437/1_50.png', 0);

--
-- 转储表的索引
--

--
-- 表的索引 `zjwitems`
--
ALTER TABLE `zjwitems`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `zjwitems`
--
ALTER TABLE `zjwitems`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
