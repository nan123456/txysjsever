/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50623
Source Host           : localhost:3306
Source Database       : 同欣易送检

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2016-12-13 23:45:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pc_积分记录表
-- ----------------------------
DROP TABLE IF EXISTS `pc_积分记录表`;
CREATE TABLE `pc_积分记录表` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `时间戳` varchar(255) NOT NULL,
  `积分时间戳` varchar(255) NOT NULL,
  `操作` varchar(255) NOT NULL,
  `变化值` varchar(255) NOT NULL,
  `说明` text,
  `时间` varchar(255) NOT NULL,
  PRIMARY KEY (`id`,`时间戳`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
