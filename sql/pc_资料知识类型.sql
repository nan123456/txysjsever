/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50623
Source Host           : localhost:3306
Source Database       : 同欣易送检

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2016-11-30 21:36:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pc_资料知识类型
-- ----------------------------
DROP TABLE IF EXISTS `pc_资料知识类型`;
CREATE TABLE `pc_资料知识类型` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `时间戳` varchar(100) NOT NULL,
  `资料知识类型` varchar(100) NOT NULL,
  `添加时间` varchar(100) NOT NULL,
  PRIMARY KEY (`id`,`资料知识类型`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_资料知识类型
-- ----------------------------
INSERT INTO `pc_资料知识类型` VALUES ('2', '1479534660727', '法定前期文件', '2016-11-19/13:51:0');
INSERT INTO `pc_资料知识类型` VALUES ('3', '1479534709968', '综合管理资料', '2016-11-19/13:51:49');
INSERT INTO `pc_资料知识类型` VALUES ('4', '1479534730314', '施工技术资料', '2016-11-19/13:52:10');
INSERT INTO `pc_资料知识类型` VALUES ('5', '1479534746018', '质量验收资料', '2016-11-19/13:52:26');
INSERT INTO `pc_资料知识类型` VALUES ('6', '1479534763678', '备案验收资料', '2016-11-19/13:52:43');
