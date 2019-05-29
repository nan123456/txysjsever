/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50623
Source Host           : localhost:3306
Source Database       : 同欣易送检

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2016-06-06 01:38:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for 分户验收
-- ----------------------------
DROP TABLE IF EXISTS `分户验收`;
CREATE TABLE `分户验收` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `xmid` varchar(100) NOT NULL,
  `名称` varchar(100) NOT NULL,
  `任务描述` varchar(100) DEFAULT NULL,
  `任务接收人` varchar(100) DEFAULT NULL,
  `栋号` varchar(100) DEFAULT NULL,
  `房号` varchar(100) DEFAULT NULL,
  `验收日期` varchar(100) DEFAULT NULL,
  `验收照片` varchar(100) DEFAULT NULL,
  `户型平面图` varchar(255) DEFAULT NULL,
  `验收记录` varchar(255) DEFAULT NULL,
  `补充记录` varchar(255) DEFAULT NULL,
  `添加日期` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 分户验收
-- ----------------------------
INSERT INTO `分户验收` VALUES ('1', '1', 'A718', 'a123', '投666', 'A', '718', '2016-6-6', '~*^*~81939.jpg~*^*~S60515-191223.jpg', '~*^*~79cd96ced6863844469210d361aceac4.jpg', null, '~*^*~S60515-191223.jpg', '2016-6-6/0:37:14');

-- ----------------------------
-- Table structure for 工程列表
-- ----------------------------
DROP TABLE IF EXISTS `工程列表`;
CREATE TABLE `工程列表` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `工程名称` varchar(100) NOT NULL,
  `工程地区` varchar(100) NOT NULL,
  `工程类别` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 工程列表
-- ----------------------------
INSERT INTO `工程列表` VALUES ('1', '同欣科技大厦A区项目', '广东中山', '建筑工程');
INSERT INTO `工程列表` VALUES ('2', '南山区翠云雅苑保障房', '广东中山', '建筑工程');

-- ----------------------------
-- Table structure for 测点列表
-- ----------------------------
DROP TABLE IF EXISTS `测点列表`;
CREATE TABLE `测点列表` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xmid` varchar(50) NOT NULL,
  `fhid` varchar(50) NOT NULL,
  `测点类型` varchar(100) NOT NULL,
  `编号` varchar(100) NOT NULL,
  `实测值` varchar(100) DEFAULT NULL,
  `说明` varchar(300) DEFAULT NULL,
  `添加时间` varchar(100) DEFAULT NULL,
  `pageX` varchar(100) DEFAULT NULL,
  `pageY` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 测点列表
-- ----------------------------
INSERT INTO `测点列表` VALUES ('3', '1', '1', '地面平整度', 'A1', '5', '哈哈哈哈', '2016-6-3/18:9:11', null, null);
INSERT INTO `测点列表` VALUES ('4', '1', '1', '垂直度', 'D1', '8', '考虑考虑', '2016-6-3/18:9:44', null, null);
INSERT INTO `测点列表` VALUES ('5', '1', '1', '垂直度', 'D2', '6', '考虑考虑', '2016-6-3/18:9:44', null, null);
INSERT INTO `测点列表` VALUES ('6', '1', '1', '垂直度', 'D3', '8', '考虑考虑', '2016-6-3/18:9:44', null, null);

-- ----------------------------
-- Table structure for 用户信息
-- ----------------------------
DROP TABLE IF EXISTS `用户信息`;
CREATE TABLE `用户信息` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `账号` varchar(100) NOT NULL,
  `密码` varchar(100) NOT NULL,
  `邮箱` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 用户信息
-- ----------------------------
INSERT INTO `用户信息` VALUES ('87', 'admin', '123456', '616764348@qq.com');
