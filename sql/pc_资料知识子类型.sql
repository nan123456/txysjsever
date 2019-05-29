/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50623
Source Host           : localhost:3306
Source Database       : 同欣易送检

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2016-11-30 21:37:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pc_资料知识子类型
-- ----------------------------
DROP TABLE IF EXISTS `pc_资料知识子类型`;
CREATE TABLE `pc_资料知识子类型` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `时间戳` varchar(100) NOT NULL,
  `资料知识类型` varchar(100) NOT NULL,
  `资料知识子类型` varchar(100) NOT NULL,
  `添加时间` varchar(100) NOT NULL,
  PRIMARY KEY (`id`,`时间戳`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_资料知识子类型
-- ----------------------------
INSERT INTO `pc_资料知识子类型` VALUES ('5', '1480512179880', '质量验收资料', '子类1', '2016-11-30/21:23:0');
INSERT INTO `pc_资料知识子类型` VALUES ('6', '1480512191511', '质量验收资料', '子类2', '2016-11-30/21:23:11');
INSERT INTO `pc_资料知识子类型` VALUES ('7', '1480512198535', '质量验收资料', '子类3', '2016-11-30/21:23:18');
