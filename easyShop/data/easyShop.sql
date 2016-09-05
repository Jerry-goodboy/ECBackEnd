DROP DATABASE IF EXISTS `easyShop`;
CREATE DATABASE `easyShop`;
USE `easyShop`;
-- 管理员表
DROP TABLE IF EXISTS `easy_admin`;
CREATE TABLE `easy_admin`(
`id` tinyint UNSIGNED AUTO_INCREMENT KEY,
`username` varchar(20) NOT NULL UNIQUE,
`password` varchar(32) NOT NULL,
`email` varchar(50) NOT NULL);

-- 分类表
DROP TABLE IF EXISTS `easy_cate`;
CREATE TABLE `easy_cate`(
`id` smallInt UNSIGNED AUTO_INCREMENT KEY,
`cName` varchar(50) UNIQUE);

-- 商品表
DROP TABLE IF EXISTS `easy_pro`;
CREATE TABLE `easy_pro`(
`id` INT UNSIGNED AUTO_INCREMENT KEY,
`pName` varchar(50) NOT NULL UNIQUE,
`pSn` varchar(50) NOT NULL,
`pNum` int UNSIGNED DEFAULT 1,
`mPrice` decimal(10,2) NOT NULL,
`iPrice` decimal(10,2)	NOT NULL,
`pDesc` text,
`pImg` varchar(50) NOT NULL,
`pubTime` int UNSIGNED NOT NULL,
`isShow` tinyint(1) DEFAULT 1,
`isHot` tinyint(1) DEFAULT 0,
`cId` smallInt UNSIGNED NOT NULL);

-- 用户表
DROP TABLE IF EXISTS `easy_user`;
CREATE TABLE `easy_user`(
`id` int UNSIGNED AUTO_INCREMENT KEY,
`username` varchar(32) NOT NULL UNIQUE,
`password` char(32) NOT NULL,
`sex` enum("男","女","保密") NOT NULL DEFAULT "保密",
`face` varchar(50) NOT NULL,
`regTime` int UNSIGNED NOT NULL);

-- 相册表
DROP TABLE IF EXISTS `easy_album`;
CREATE TABLE `easy_album`(
`id` int UNSIGNED AUTO_INCREMENT KEY,
`pid` int UNSIGNED NOT NULL,
`albumPath` varchar(50) NOT NULL);

