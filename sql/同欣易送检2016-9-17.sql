/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50623
Source Host           : localhost:3305
Source Database       : 同欣易送检

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2016-09-17 20:53:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pc_伙伴列表
-- ----------------------------
DROP TABLE IF EXISTS `pc_伙伴列表`;
CREATE TABLE `pc_伙伴列表` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `时间戳` varchar(100) NOT NULL,
  `类型` varchar(100) DEFAULT NULL,
  `名称` varchar(200) DEFAULT NULL,
  `网址` varchar(300) NOT NULL,
  `备注` text,
  `添加时间` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`,`时间戳`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_伙伴列表
-- ----------------------------

-- ----------------------------
-- Table structure for pc_伙伴类型
-- ----------------------------
DROP TABLE IF EXISTS `pc_伙伴类型`;
CREATE TABLE `pc_伙伴类型` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `时间戳` varchar(100) NOT NULL,
  `伙伴类型` varchar(100) NOT NULL,
  `添加时间` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`,`时间戳`,`伙伴类型`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_伙伴类型
-- ----------------------------
INSERT INTO `pc_伙伴类型` VALUES ('1', '1473429424925', '检测机构', '2016-9-9/21:57:6');
INSERT INTO `pc_伙伴类型` VALUES ('2', '1473429432363', '监督机构', '2016-9-9/21:57:39');
INSERT INTO `pc_伙伴类型` VALUES ('3', '1473429464083', '项目工地', '2016-9-9/21:57:50');

-- ----------------------------
-- Table structure for pc_报名_签到
-- ----------------------------
DROP TABLE IF EXISTS `pc_报名_签到`;
CREATE TABLE `pc_报名_签到` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `时间戳` varchar(100) NOT NULL,
  `活动时间戳` varchar(100) NOT NULL,
  `活动名称` varchar(200) DEFAULT NULL,
  `姓名` varchar(100) DEFAULT NULL,
  `手机` varchar(100) DEFAULT NULL,
  `单位名称` varchar(200) DEFAULT NULL,
  `添加时间` varchar(100) DEFAULT NULL,
  `签到状态` varchar(255) NOT NULL DEFAULT '未签到',
  `获得积分` varchar(100) DEFAULT '0',
  `签到时间` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`,`时间戳`,`活动时间戳`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_报名_签到
-- ----------------------------

-- ----------------------------
-- Table structure for pc_活动列表
-- ----------------------------
DROP TABLE IF EXISTS `pc_活动列表`;
CREATE TABLE `pc_活动列表` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `时间戳` varchar(100) NOT NULL,
  `活动名称` varchar(200) NOT NULL,
  `推送地区` varchar(100) NOT NULL,
  `活动时间` varchar(100) NOT NULL,
  `活动地点` varchar(200) DEFAULT NULL,
  `行车路线` varchar(300) DEFAULT NULL,
  `活动性质` varchar(100) DEFAULT NULL,
  `公司名称` varchar(100) DEFAULT NULL,
  `公司地址` varchar(100) DEFAULT NULL,
  `会务咨询` varchar(100) DEFAULT NULL,
  `备注` varchar(1000) DEFAULT NULL,
  `添加时间` varchar(100) NOT NULL,
  `报名人数` varchar(100) NOT NULL DEFAULT '0',
  `活动积分` varchar(100) DEFAULT '0',
  PRIMARY KEY (`id`,`时间戳`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_活动列表
-- ----------------------------

-- ----------------------------
-- Table structure for pc_消息列表
-- ----------------------------
DROP TABLE IF EXISTS `pc_消息列表`;
CREATE TABLE `pc_消息列表` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `时间戳` varchar(255) NOT NULL,
  `用户手机` varchar(255) DEFAULT NULL,
  `消息名称` varchar(255) DEFAULT NULL,
  `消息内容` text,
  `添加时间` varchar(100) DEFAULT NULL,
  `消息状态` varchar(100) DEFAULT '未读',
  `删除` varchar(100) DEFAULT '未删',
  PRIMARY KEY (`id`,`时间戳`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_消息列表
-- ----------------------------

-- ----------------------------
-- Table structure for pc_知识列表
-- ----------------------------
DROP TABLE IF EXISTS `pc_知识列表`;
CREATE TABLE `pc_知识列表` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `时间戳` varchar(100) NOT NULL,
  `知识类型` varchar(100) DEFAULT NULL,
  `材料_现场` varchar(100) DEFAULT NULL,
  `定制编号` varchar(100) NOT NULL,
  `定制内容` varchar(100) DEFAULT NULL,
  `送检数量要求` text,
  `取样方法` text,
  `检验性质` text,
  `备注说明` text,
  `添加时间` varchar(100) DEFAULT NULL,
  `修改时间` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`,`时间戳`,`定制编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_知识列表
-- ----------------------------

-- ----------------------------
-- Table structure for pc_积分列表
-- ----------------------------
DROP TABLE IF EXISTS `pc_积分列表`;
CREATE TABLE `pc_积分列表` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `时间戳` varchar(100) NOT NULL,
  `姓名` varchar(100) NOT NULL,
  `手机` varchar(100) NOT NULL,
  `积分` varchar(100) NOT NULL DEFAULT '0',
  `备注` varchar(600) DEFAULT NULL,
  `添加时间` varchar(100) DEFAULT NULL,
  `修改时间` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`,`时间戳`,`手机`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_积分列表
-- ----------------------------

-- ----------------------------
-- Table structure for pc_送检知识类型
-- ----------------------------
DROP TABLE IF EXISTS `pc_送检知识类型`;
CREATE TABLE `pc_送检知识类型` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `时间戳` varchar(100) NOT NULL,
  `送检知识类型` varchar(100) DEFAULT NULL,
  `添加时间` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`,`时间戳`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_送检知识类型
-- ----------------------------
INSERT INTO `pc_送检知识类型` VALUES ('1', '1473499227175', '地基基础', '2016-9-10/17:21:8');
INSERT INTO `pc_送检知识类型` VALUES ('2', '1473499268965', '主体结构', '2016-9-10/17:21:21');
INSERT INTO `pc_送检知识类型` VALUES ('3', '1473499282710', '装饰装修', '2016-9-10/17:21:36');
INSERT INTO `pc_送检知识类型` VALUES ('4', '1473499297217', '屋面工程', '2016-9-10/17:21:51');
INSERT INTO `pc_送检知识类型` VALUES ('5', '1473499312108', '建筑节能', '2016-9-10/17:22:37');

-- ----------------------------
-- Table structure for pc_通告列表
-- ----------------------------
DROP TABLE IF EXISTS `pc_通告列表`;
CREATE TABLE `pc_通告列表` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `时间戳` varchar(255) NOT NULL,
  `主标题` varchar(255) DEFAULT NULL,
  `副标题` varchar(255) DEFAULT NULL,
  `推送地区` varchar(255) DEFAULT NULL,
  `通告内容` text,
  `添加时间` varchar(255) NOT NULL,
  PRIMARY KEY (`id`,`时间戳`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_通告列表
-- ----------------------------

-- ----------------------------
-- Table structure for 任务
-- ----------------------------
DROP TABLE IF EXISTS `任务`;
CREATE TABLE `任务` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `xmid` varchar(100) NOT NULL,
  `项目名称` varchar(100) NOT NULL,
  `任务名称` varchar(100) NOT NULL,
  `时间戳` varchar(100) NOT NULL,
  `任务重要性` varchar(100) DEFAULT NULL,
  `任务类别` varchar(100) NOT NULL,
  `任务描述` varchar(255) DEFAULT NULL,
  `任务创建人` varchar(100) NOT NULL,
  `任务接收人` varchar(100) NOT NULL,
  `任务接收人号码` varchar(255) NOT NULL,
  `部位` varchar(100) DEFAULT NULL,
  `截止日期` varchar(100) NOT NULL,
  `任务附件` varchar(255) DEFAULT NULL,
  `新建日期` varchar(100) NOT NULL,
  `回复状态` varchar(100) DEFAULT '未回复',
  `回复日期` varchar(100) DEFAULT NULL,
  `回复描述` varchar(500) DEFAULT NULL,
  `回复附件` varchar(255) DEFAULT NULL,
  `回复创建日期` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`,`时间戳`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 任务
-- ----------------------------

-- ----------------------------
-- Table structure for 分户验收
-- ----------------------------
DROP TABLE IF EXISTS `分户验收`;
CREATE TABLE `分户验收` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `xmid` varchar(150) NOT NULL,
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
  `时间戳` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 分户验收
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 工程列表
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 测点列表
-- ----------------------------

-- ----------------------------
-- Table structure for 用户信息
-- ----------------------------
DROP TABLE IF EXISTS `用户信息`;
CREATE TABLE `用户信息` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `账号` varchar(100) NOT NULL,
  `密码` varchar(100) NOT NULL,
  `邮箱` varchar(100) NOT NULL,
  `手机` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 用户信息
-- ----------------------------
INSERT INTO `用户信息` VALUES ('87', 'admin', '123456', '616764348@qq.com', '18988583168');

-- ----------------------------
-- Table structure for 组员信息
-- ----------------------------
DROP TABLE IF EXISTS `组员信息`;
CREATE TABLE `组员信息` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `时间戳` varchar(100) NOT NULL,
  `姓名` varchar(100) NOT NULL,
  `职务` varchar(100) DEFAULT NULL,
  `手机` varchar(100) DEFAULT NULL,
  `邮箱` varchar(100) DEFAULT NULL,
  `项目id` varchar(100) NOT NULL,
  `项目名称` varchar(100) DEFAULT NULL,
  `添加时间` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`,`时间戳`,`项目id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 组员信息
-- ----------------------------
