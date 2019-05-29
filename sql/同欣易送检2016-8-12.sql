/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50623
Source Host           : localhost:3305
Source Database       : 同欣易送检

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2016-08-12 12:01:33
*/

SET FOREIGN_KEY_CHECKS=0;

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
  `任务类别` varchar(100) NOT NULL,
  `任务描述` varchar(255) DEFAULT NULL,
  `任务创建人` varchar(100) NOT NULL,
  `任务接收人` varchar(100) NOT NULL,
  `任务接收人号码` varchar(255) NOT NULL,
  `部位` varchar(100) DEFAULT NULL,
  `截止日期` varchar(100) NOT NULL,
  `任务附件` varchar(255) DEFAULT NULL,
  `新建日期` varchar(100) NOT NULL,
  `回复状态` varchar(100) DEFAULT NULL,
  `回复日期` varchar(100) DEFAULT NULL,
  `回复描述` varchar(500) DEFAULT NULL,
  `回复附件` varchar(255) DEFAULT NULL,
  `回复创建日期` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`,`时间戳`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 任务
-- ----------------------------
INSERT INTO `任务` VALUES ('9', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '台山XX项目', '行行行', '1470313750285', '隐蔽验收', '不错', '小孩', '小孩,大人', '18988583168,15298336317', '身体', '2016-9-4', '~*^*~81939.jpg', '2016-8-11/10:21:35', '已回复', '2016-8-9', '4577个好就就', '~*^*~IMG_20160318_082443.jpg', '2016-8-9/20:2:8');
INSERT INTO `任务` VALUES ('17', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '台山XX项目', '册', '1470881505252', '技术交底', '3467', '小孩', '大人', '18988583168', '578', '2016-8-11', null, '2016-8-11/10:12:52', null, null, null, null, null);

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=341 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 分户验收
-- ----------------------------
INSERT INTO `分户验收` VALUES ('1', 'dfa4b152-b9c0-4048-b8fb-4fc9beb10497', 'A718', 'a1231', '投666', 'A', '718', '2016-6-6', '~*^*~81939.jpg~*^*~S60515-191223.jpg', '~*^*~79cd96ced6863844469210d361aceac4.jpg', null, '~*^*~S60515-191223.jpg', '2016-6-6/16:51:16');
INSERT INTO `分户验收` VALUES ('2', 'dfa4b152-b9c0-4048-b8fb-4fc9beb10497', 'b123', '1345', '阿1,阿2', 'b', '123', '2016-7-2', null, '~*^*~1467459656565.jpg', null, null, '2016-7-2/19:41:0');
INSERT INTO `分户验收` VALUES ('3', '92707f57-740b-4797-872f-12a1196e329f', 'A21', '分户验收', '阿1', 'A', '21', '2016-7-4', null, null, null, null, '2016-7-4/14:43:36');
INSERT INTO `分户验收` VALUES ('15', '89eedb79-08d9-496b-b8aa-0683cb0edfdb', 'A23', 'P678', '阿1,阿2', 'A', '23', '2016-6-30', null, null, null, null, '2016-7-5/10:48:30');
INSERT INTO `分户验收` VALUES ('16', '89eedb79-08d9-496b-b8aa-0683cb0edfdb', 'A24', 'P678', '阿1,阿2', 'A', '24', '2016-6-30', null, null, null, null, '2016-7-5/10:48:30');
INSERT INTO `分户验收` VALUES ('17', '89eedb79-08d9-496b-b8aa-0683cb0edfdb', 'A33', 'P678', '阿1,阿2', 'A', '33', '2016-6-30', null, null, null, null, '2016-7-5/10:48:30');
INSERT INTO `分户验收` VALUES ('25', '89eedb79-08d9-496b-b8aa-0683cb0edfdb', 'A73', 'P678', '阿1,阿2', 'A', '73', '2016-6-30', null, null, null, null, '2016-7-5/10:48:30');
INSERT INTO `分户验收` VALUES ('79', '0644bce1-88af-4a2d-98c9-bfe73c7df269', 'b21', '1345', '阿1,阿2', 'b', '21', '2016-7-2', null, null, null, null, '2016-7-5/15:48:41');
INSERT INTO `分户验收` VALUES ('107', '0644bce1-88af-4a2d-98c9-bfe73c7df269', 'b91', '1345', '阿1,阿2', 'b', '91', '2016-7-2', null, null, null, null, '2016-7-5/15:48:41');
INSERT INTO `分户验收` VALUES ('193', '9b28afc2-a5ee-48d4-a95f-2c4303b93c3a', 'F308', '4rte', '阿1', 'F', '308', '2016-7-8', null, '~*^*~F301.png', null, null, '2016-7-19/9:29:49');
INSERT INTO `分户验收` VALUES ('194', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', 'A609', 'Iloilotheyouisyou', '阿1,阿3', 'A', '609', '2016-7-19', null, '~*^*~F301.png', null, null, '2016-7-19/16:5:3');
INSERT INTO `分户验收` VALUES ('204', '0644bce1-88af-4a2d-98c9-bfe73c7df269', 'f235', '4678', '阿1,阿2', 'f', '235', '2016-7-21', null, '~*^*~1469090821521.jpg', null, null, '2016-7-21/16:47:0');
INSERT INTO `分户验收` VALUES ('205', '387d1073-e5f7-4c02-86b4-7b68e4e93edd', 'AA208', '111', '阿1,阿2,阿3', 'A', 'A208', '2016-7-26', null, '~*^*~F301.png', null, null, '2016-7-26/15:55:58');
INSERT INTO `分户验收` VALUES ('206', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A22', '分户验收', '阿1', 'A', '22', '2016-7-4', null, null, null, null, '2016-8-3/16:13:11');
INSERT INTO `分户验收` VALUES ('207', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A31', '分户验收', '阿1', 'A', '31', '2016-7-4', null, null, null, null, '2016-8-3/16:13:11');
INSERT INTO `分户验收` VALUES ('208', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A32', '分户验收', '阿1', 'A', '32', '2016-7-4', null, null, null, null, '2016-8-3/16:13:11');
INSERT INTO `分户验收` VALUES ('209', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A34', '分户验收', '阿1', 'A', '34', '2016-7-4', null, null, null, null, '2016-8-3/16:13:11');
INSERT INTO `分户验收` VALUES ('210', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A41', '分户验收', '阿1', 'A', '41', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('211', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A42', '分户验收', '阿1', 'A', '42', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('212', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A43', '分户验收', '阿1', 'A', '43', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('213', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A44', '分户验收', '阿1', 'A', '44', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('214', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A51', '分户验收', '阿1', 'A', '51', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('215', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A52', '分户验收', '阿1', 'A', '52', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('216', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A53', '分户验收', '阿1', 'A', '53', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('217', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A54', '分户验收', '阿1', 'A', '54', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('218', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A61', '分户验收', '阿1', 'A', '61', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('219', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A62', '分户验收', '阿1', 'A', '62', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('220', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A63', '分户验收', '阿1', 'A', '63', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('221', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A64', '分户验收', '阿1', 'A', '64', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('222', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A71', '分户验收', '阿1', 'A', '71', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('223', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A72', '分户验收', '阿1', 'A', '72', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('224', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A74', '分户验收', '阿1', 'A', '74', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('225', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A81', '分户验收', '阿1', 'A', '81', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('226', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A82', '分户验收', '阿1', 'A', '82', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('227', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A83', '分户验收', '阿1', 'A', '83', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('228', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A84', '分户验收', '阿1', 'A', '84', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('229', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A91', '分户验收', '阿1', 'A', '91', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('230', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A92', '分户验收', '阿1', 'A', '92', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('231', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A93', '分户验收', '阿1', 'A', '93', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('232', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A94', '分户验收', '阿1', 'A', '94', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('233', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A101', '分户验收', '阿1', 'A', '101', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('234', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A102', '分户验收', '阿1', 'A', '102', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('235', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A103', '分户验收', '阿1', 'A', '103', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('236', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A104', '分户验收', '阿1', 'A', '104', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('237', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A111', '分户验收', '阿1', 'A', '111', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('238', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A112', '分户验收', '阿1', 'A', '112', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('239', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A113', '分户验收', '阿1', 'A', '113', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('240', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A114', '分户验收', '阿1', 'A', '114', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('241', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A121', '分户验收', '阿1', 'A', '121', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('242', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A122', '分户验收', '阿1', 'A', '122', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('243', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A123', '分户验收', '阿1', 'A', '123', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('244', '265913dc-14de-455f-91f1-f52a905ea7cf', 'A124', '分户验收', '阿1', 'A', '124', '2016-7-4', null, null, null, null, '2016-8-3/16:13:12');
INSERT INTO `分户验收` VALUES ('245', 'fa6bf23c-89b3-4548-9989-701e108cd51e', 'A131', 'P678', '阿1,阿2', 'A', '131', '2016-10-4', null, null, null, null, '2016-8-4/10:38:43');
INSERT INTO `分户验收` VALUES ('246', 'fa6bf23c-89b3-4548-9989-701e108cd51e', 'A132', 'P678', '阿1,阿2', 'A', '132', '2016-10-4', null, null, null, null, '2016-8-4/10:38:43');
INSERT INTO `分户验收` VALUES ('247', 'fa6bf23c-89b3-4548-9989-701e108cd51e', 'A133', 'P678', '阿1,阿2', 'A', '133', '2016-10-4', null, null, null, null, '2016-8-4/10:38:43');
INSERT INTO `分户验收` VALUES ('248', 'fa6bf23c-89b3-4548-9989-701e108cd51e', 'A134', 'P678', '阿1,阿2', 'A', '134', '2016-10-4', null, null, null, null, '2016-8-4/10:38:43');
INSERT INTO `分户验收` VALUES ('249', 'fa6bf23c-89b3-4548-9989-701e108cd51e', 'A141', 'P678', '阿1,阿2', 'A', '141', '2016-10-4', null, null, null, null, '2016-8-4/10:38:43');
INSERT INTO `分户验收` VALUES ('250', 'fa6bf23c-89b3-4548-9989-701e108cd51e', 'A142', 'P678', '阿1,阿2', 'A', '142', '2016-10-4', null, null, null, null, '2016-8-4/10:38:43');
INSERT INTO `分户验收` VALUES ('251', 'fa6bf23c-89b3-4548-9989-701e108cd51e', 'A143', 'P678', '阿1,阿2', 'A', '143', '2016-10-4', null, null, null, null, '2016-8-4/10:38:44');
INSERT INTO `分户验收` VALUES ('252', 'fa6bf23c-89b3-4548-9989-701e108cd51e', 'A144', 'P678', '阿1,阿2', 'A', '144', '2016-10-4', null, null, null, null, '2016-8-4/10:38:44');
INSERT INTO `分户验收` VALUES ('253', 'fa6bf23c-89b3-4548-9989-701e108cd51e', 'A151', 'P678', '阿1,阿2', 'A', '151', '2016-10-4', null, null, null, null, '2016-8-4/10:38:44');
INSERT INTO `分户验收` VALUES ('254', 'fa6bf23c-89b3-4548-9989-701e108cd51e', 'A152', 'P678', '阿1,阿2', 'A', '152', '2016-10-4', null, null, null, null, '2016-8-4/10:38:44');
INSERT INTO `分户验收` VALUES ('255', 'fa6bf23c-89b3-4548-9989-701e108cd51e', 'A153', 'P678', '阿1,阿2', 'A', '153', '2016-10-4', null, null, null, null, '2016-8-4/10:38:44');
INSERT INTO `分户验收` VALUES ('256', 'fa6bf23c-89b3-4548-9989-701e108cd51e', 'A154', 'P678', '阿1,阿2', 'A', '154', '2016-10-4', null, null, null, null, '2016-8-4/10:38:44');
INSERT INTO `分户验收` VALUES ('257', 'fa6bf23c-89b3-4548-9989-701e108cd51e', 'A161', 'P678', '阿1,阿2', 'A', '161', '2016-10-4', null, null, null, null, '2016-8-4/10:38:44');
INSERT INTO `分户验收` VALUES ('258', 'fa6bf23c-89b3-4548-9989-701e108cd51e', 'A162', 'P678', '阿1,阿2', 'A', '162', '2016-10-4', null, null, null, null, '2016-8-4/10:38:44');
INSERT INTO `分户验收` VALUES ('259', 'fa6bf23c-89b3-4548-9989-701e108cd51e', 'A163', 'P678', '阿1,阿2', 'A', '163', '2016-10-4', null, null, null, null, '2016-8-4/10:38:44');
INSERT INTO `分户验收` VALUES ('260', 'fa6bf23c-89b3-4548-9989-701e108cd51e', 'A164', 'P678', '阿1,阿2', 'A', '164', '2016-10-4', null, null, null, null, '2016-8-4/10:38:44');
INSERT INTO `分户验收` VALUES ('261', 'fa6bf23c-89b3-4548-9989-701e108cd51e', 'A171', 'P678', '阿1,阿2', 'A', '171', '2016-10-4', null, null, null, null, '2016-8-4/10:38:44');
INSERT INTO `分户验收` VALUES ('262', 'fa6bf23c-89b3-4548-9989-701e108cd51e', 'A172', 'P678', '阿1,阿2', 'A', '172', '2016-10-4', null, null, null, null, '2016-8-4/10:38:44');
INSERT INTO `分户验收` VALUES ('263', 'fa6bf23c-89b3-4548-9989-701e108cd51e', 'A173', 'P678', '阿1,阿2', 'A', '173', '2016-10-4', null, null, null, null, '2016-8-4/10:38:44');
INSERT INTO `分户验收` VALUES ('264', 'fa6bf23c-89b3-4548-9989-701e108cd51e', 'A174', 'P678', '阿1,阿2', 'A', '174', '2016-10-4', null, null, null, null, '2016-8-4/10:38:44');
INSERT INTO `分户验收` VALUES ('265', 'fa6bf23c-89b3-4548-9989-701e108cd51e', 'A181', 'P678', '阿1,阿2', 'A', '181', '2016-10-4', null, null, null, null, '2016-8-4/10:38:44');
INSERT INTO `分户验收` VALUES ('266', 'fa6bf23c-89b3-4548-9989-701e108cd51e', 'A182', 'P678', '阿1,阿2', 'A', '182', '2016-10-4', null, null, null, null, '2016-8-4/10:38:44');
INSERT INTO `分户验收` VALUES ('267', 'fa6bf23c-89b3-4548-9989-701e108cd51e', 'A183', 'P678', '阿1,阿2', 'A', '183', '2016-10-4', null, null, null, null, '2016-8-4/10:38:44');
INSERT INTO `分户验收` VALUES ('268', 'fa6bf23c-89b3-4548-9989-701e108cd51e', 'A184', 'P678', '阿1,阿2', 'A', '184', '2016-10-4', null, null, null, null, '2016-8-4/10:38:44');
INSERT INTO `分户验收` VALUES ('269', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b22', '1345', '阿1,阿2', 'b', '22', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('270', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b23', '1345', '阿1,阿2', 'b', '23', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('271', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b24', '1345', '阿1,阿2', 'b', '24', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('272', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b31', '1345', '阿1,阿2', 'b', '31', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('273', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b32', '1345', '阿1,阿2', 'b', '32', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('274', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b33', '1345', '阿1,阿2', 'b', '33', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('275', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b34', '1345', '阿1,阿2', 'b', '34', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('276', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b41', '1345', '阿1,阿2', 'b', '41', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('277', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b42', '1345', '阿1,阿2', 'b', '42', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('278', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b43', '1345', '阿1,阿2', 'b', '43', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('279', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b44', '1345', '阿1,阿2', 'b', '44', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('280', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b51', '1345', '阿1,阿2', 'b', '51', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('281', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b52', '1345', '阿1,阿2', 'b', '52', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('282', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b53', '1345', '阿1,阿2', 'b', '53', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('283', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b54', '1345', '阿1,阿2', 'b', '54', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('284', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b61', '1345', '阿1,阿2', 'b', '61', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('285', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b62', '1345', '阿1,阿2', 'b', '62', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('286', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b63', '1345', '阿1,阿2', 'b', '63', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('287', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b64', '1345', '阿1,阿2', 'b', '64', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('288', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b71', '1345', '阿1,阿2', 'b', '71', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('289', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b72', '1345', '阿1,阿2', 'b', '72', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('290', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b73', '1345', '阿1,阿2', 'b', '73', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('291', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b74', '1345', '阿1,阿2', 'b', '74', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('292', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b81', '1345', '阿1,阿2', 'b', '81', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('293', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b82', '1345', '阿1,阿2', 'b', '82', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('294', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b83', '1345', '阿1,阿2', 'b', '83', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('295', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b84', '1345', '阿1,阿2', 'b', '84', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('296', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b92', '1345', '阿1,阿2', 'b', '92', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('297', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b93', '1345', '阿1,阿2', 'b', '93', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('298', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b94', '1345', '阿1,阿2', 'b', '94', '2016-7-2', null, null, null, null, '2016-8-4/17:2:26');
INSERT INTO `分户验收` VALUES ('299', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b101', '1345', '阿1,阿2', 'b', '101', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('300', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b102', '1345', '阿1,阿2', 'b', '102', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('301', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b103', '1345', '阿1,阿2', 'b', '103', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('302', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b104', '1345', '阿1,阿2', 'b', '104', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('303', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b111', '1345', '阿1,阿2', 'b', '111', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('304', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b112', '1345', '阿1,阿2', 'b', '112', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('305', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b113', '1345', '阿1,阿2', 'b', '113', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('306', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b114', '1345', '阿1,阿2', 'b', '114', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('307', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b121', '1345', '阿1,阿2', 'b', '121', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('308', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b122', '1345', '阿1,阿2', 'b', '122', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('309', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b124', '1345', '阿1,阿2', 'b', '124', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('310', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b131', '1345', '阿1,阿2', 'b', '131', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('311', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b132', '1345', '阿1,阿2', 'b', '132', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('312', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b133', '1345', '阿1,阿2', 'b', '133', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('313', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b134', '1345', '阿1,阿2', 'b', '134', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('314', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b141', '1345', '阿1,阿2', 'b', '141', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('315', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b142', '1345', '阿1,阿2', 'b', '142', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('316', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b143', '1345', '阿1,阿2', 'b', '143', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('317', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b144', '1345', '阿1,阿2', 'b', '144', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('318', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b151', '1345', '阿1,阿2', 'b', '151', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('319', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b152', '1345', '阿1,阿2', 'b', '152', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('320', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b153', '1345', '阿1,阿2', 'b', '153', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('321', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b154', '1345', '阿1,阿2', 'b', '154', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('322', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b161', '1345', '阿1,阿2', 'b', '161', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('323', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b162', '1345', '阿1,阿2', 'b', '162', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('324', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b163', '1345', '阿1,阿2', 'b', '163', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('325', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b164', '1345', '阿1,阿2', 'b', '164', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('326', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b171', '1345', '阿1,阿2', 'b', '171', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('327', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b172', '1345', '阿1,阿2', 'b', '172', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('328', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b173', '1345', '阿1,阿2', 'b', '173', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('329', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b174', '1345', '阿1,阿2', 'b', '174', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('330', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b181', '1345', '阿1,阿2', 'b', '181', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('331', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b182', '1345', '阿1,阿2', 'b', '182', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('332', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b183', '1345', '阿1,阿2', 'b', '183', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('333', '3b5f4271-1425-4612-8563-d902a7708e5c', 'b184', '1345', '阿1,阿2', 'b', '184', '2016-7-2', null, null, null, null, '2016-8-4/17:2:27');
INSERT INTO `分户验收` VALUES ('334', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', 'A505', '123', '阿1', 'A', '505', '2016-8-5', null, '~*^*~F301.png', null, null, '2016-8-5/11:46:58');
INSERT INTO `分户验收` VALUES ('335', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', 'A309', '6', '阿1,阿2', 'A', '309', '2016-8-5', null, '~*^*~F301.png', null, null, '2016-8-5/15:23:16');
INSERT INTO `分户验收` VALUES ('336', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', 'A209', 'etio', '阿1', 'A', '209', '2016-8-8', null, '~*^*~F301.png', null, null, '2016-8-8/10:8:34');
INSERT INTO `分户验收` VALUES ('337', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', 'A307', '55666', '阿1,阿2', 'A', '307', '2016-8-8', null, '~*^*~F301.png', null, null, '2016-8-8/14:50:32');
INSERT INTO `分户验收` VALUES ('338', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', 'A303', '12222', '阿1,阿2', 'A', '303', '2016-8-9', null, '~*^*~F301.png', null, null, '2016-8-9/11:22:28');
INSERT INTO `分户验收` VALUES ('339', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', 'A305', 'fgjjjkk', '阿1,阿2', 'A', '305', '2016-8-9', null, '~*^*~F301.png', null, null, '2016-8-9/18:22:8');
INSERT INTO `分户验收` VALUES ('340', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', 'A208', '55666', '阿1,阿2', 'A', '208', '2016-8-11', null, '~*^*~F301.png', null, null, '2016-8-11/15:40:43');

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
) ENGINE=InnoDB AUTO_INCREMENT=381 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 测点列表
-- ----------------------------
INSERT INTO `测点列表` VALUES ('1', 'dfa4b152-b9c0-4048-b8fb-4fc9beb10497', '1', '地面平整度', 'A1', '5', '哈哈哈哈', '2016-6-3/18:9:11', '67px', '211px');
INSERT INTO `测点列表` VALUES ('2', 'dfa4b152-b9c0-4048-b8fb-4fc9beb10497', '2', '墙面平整度', 'C1', '7', '', '2016-7-2/19:41:48', '', '');
INSERT INTO `测点列表` VALUES ('3', 'dfa4b152-b9c0-4048-b8fb-4fc9beb10497', '2', '墙面平整度', 'C2', '8', '', '2016-7-2/19:41:48', '194px', '212px');
INSERT INTO `测点列表` VALUES ('4', 'dfa4b152-b9c0-4048-b8fb-4fc9beb10497', '2', '墙面平整度', 'C3', '1', '', '2016-7-2/19:41:48', '77px', '145px');
INSERT INTO `测点列表` VALUES ('5', 'dfa4b152-b9c0-4048-b8fb-4fc9beb10497', '2', '墙面平整度', 'C4', '5', '', '2016-7-2/19:41:48', '55px', '66px');
INSERT INTO `测点列表` VALUES ('6', 'dfa4b152-b9c0-4048-b8fb-4fc9beb10497', '2', '墙面平整度', 'C5', '', '', '2016-7-2/19:41:48', '146px', '60px');
INSERT INTO `测点列表` VALUES ('7', '92707f57-740b-4797-872f-12a1196e329f', '14', '墙面平整度', 'C1', '2', '', '2016-7-4/14:45:3', null, null);
INSERT INTO `测点列表` VALUES ('8', '89eedb79-08d9-496b-b8aa-0683cb0edfdb', '78', '墙面平整度', 'C1', '3', '', '2016-7-5/10:49:45', '216.193px', '78.54px');
INSERT INTO `测点列表` VALUES ('9', '89eedb79-08d9-496b-b8aa-0683cb0edfdb', '78', '墙面平整度', 'C2', '6', '', '2016-7-5/10:49:45', '68px', '141px');
INSERT INTO `测点列表` VALUES ('10', '89eedb79-08d9-496b-b8aa-0683cb0edfdb', '78', '墙面平整度', 'C3', '', '', '2016-7-5/10:49:45', '', '');
INSERT INTO `测点列表` VALUES ('11', '89eedb79-08d9-496b-b8aa-0683cb0edfdb', '78', '墙面平整度', 'C4', '', '', '2016-7-5/10:49:45', '', '');
INSERT INTO `测点列表` VALUES ('12', '89eedb79-08d9-496b-b8aa-0683cb0edfdb', '78', '墙面平整度', 'C5', '', '', '2016-7-5/10:49:45', '', '');
INSERT INTO `测点列表` VALUES ('13', '89eedb79-08d9-496b-b8aa-0683cb0edfdb', '78', '墙面平整度', 'C6', '', '', '2016-7-5/10:49:45', '', '');
INSERT INTO `测点列表` VALUES ('14', '89eedb79-08d9-496b-b8aa-0683cb0edfdb', '78', '墙面平整度', 'C7', '', '', '2016-7-5/10:49:45', '', '');
INSERT INTO `测点列表` VALUES ('15', '89eedb79-08d9-496b-b8aa-0683cb0edfdb', '78', '墙面平整度', 'C8', '', '', '2016-7-5/10:49:45', '', '');
INSERT INTO `测点列表` VALUES ('16', '89eedb79-08d9-496b-b8aa-0683cb0edfdb', '78', '墙面平整度', 'C9', '', '', '2016-7-5/10:49:45', '', '');
INSERT INTO `测点列表` VALUES ('17', '89eedb79-08d9-496b-b8aa-0683cb0edfdb', '78', '墙面平整度', 'C10', '', '', '2016-7-5/10:49:45', '', '');
INSERT INTO `测点列表` VALUES ('18', '89eedb79-08d9-496b-b8aa-0683cb0edfdb', '78', '墙面平整度', 'C11', '', '', '2016-7-5/10:49:45', '', '');
INSERT INTO `测点列表` VALUES ('19', '89eedb79-08d9-496b-b8aa-0683cb0edfdb', '78', '墙面平整度', 'C12', '', '', '2016-7-5/10:49:45', '', '');
INSERT INTO `测点列表` VALUES ('20', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '143', '墙面平整度', 'C1', '3', '', '2016-7-5/15:49:43', '291.064px', '40.219px');
INSERT INTO `测点列表` VALUES ('21', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '143', '墙面平整度', 'C2', '7', '', '2016-7-5/15:49:43', '242.109px', '39.75px');
INSERT INTO `测点列表` VALUES ('22', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '143', '墙面平整度', 'C3', '', '', '2016-7-5/15:49:43', '', '');
INSERT INTO `测点列表` VALUES ('23', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '143', '墙面平整度', 'C4', '', '', '2016-7-5/15:49:43', '', '');
INSERT INTO `测点列表` VALUES ('24', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '143', '墙面平整度', 'C5', '', '', '2016-7-5/15:49:43', '', '');
INSERT INTO `测点列表` VALUES ('25', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '143', '墙面平整度', 'C6', '', '', '2016-7-5/15:49:43', '', '');
INSERT INTO `测点列表` VALUES ('26', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '143', '墙面平整度', 'C7', '', '', '2016-7-5/15:49:43', '', '');
INSERT INTO `测点列表` VALUES ('27', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '143', '墙面平整度', 'C8', '', '', '2016-7-5/15:49:43', '', '');
INSERT INTO `测点列表` VALUES ('28', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '143', '墙面平整度', 'C9', '', '', '2016-7-5/15:49:43', '', '');
INSERT INTO `测点列表` VALUES ('29', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '143', '墙面平整度', 'C10', '', '', '2016-7-5/15:49:43', '', '');
INSERT INTO `测点列表` VALUES ('30', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '152', '垂直度', 'D1', '4', '', '2016-7-6/17:0:51', '', '');
INSERT INTO `测点列表` VALUES ('31', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '152', '垂直度', 'D2', '-2', '', '2016-7-6/17:0:51', '', '');
INSERT INTO `测点列表` VALUES ('32', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '152', '垂直度', 'D3', '', '', '2016-7-6/17:0:51', '', '');
INSERT INTO `测点列表` VALUES ('33', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '152', '垂直度', 'D4', '', '', '2016-7-6/17:0:51', '', '');
INSERT INTO `测点列表` VALUES ('34', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '152', '垂直度', 'D5', '', '', '2016-7-6/17:0:51', '', '');
INSERT INTO `测点列表` VALUES ('35', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '152', '垂直度', 'D6', '', '', '2016-7-6/17:0:51', '', '');
INSERT INTO `测点列表` VALUES ('36', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '152', '垂直度', 'D7', '', '', '2016-7-6/17:0:51', '', '');
INSERT INTO `测点列表` VALUES ('37', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '152', '垂直度', 'D8', '', '', '2016-7-6/17:0:51', '', '');
INSERT INTO `测点列表` VALUES ('38', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '152', '垂直度', 'D9', '', '', '2016-7-6/17:0:51', '', '');
INSERT INTO `测点列表` VALUES ('39', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '152', '垂直度', 'D10', '', '', '2016-7-6/17:0:51', '', '');
INSERT INTO `测点列表` VALUES ('40', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '152', '垂直度', 'D11', '', '', '2016-7-6/17:0:51', '', '');
INSERT INTO `测点列表` VALUES ('41', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '152', '垂直度', 'D12', '', '', '2016-7-6/17:0:51', '', '');
INSERT INTO `测点列表` VALUES ('42', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '153', '墙面平整度', 'C1', '5', '', '2016-7-7/10:23:33', '', '');
INSERT INTO `测点列表` VALUES ('43', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '153', '墙面平整度', 'C2', '-2', '', '2016-7-7/10:23:33', '', '');
INSERT INTO `测点列表` VALUES ('44', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '153', '墙面平整度', 'C3', '1', '', '2016-7-7/10:23:33', '', '');
INSERT INTO `测点列表` VALUES ('45', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '153', '墙面平整度', 'C4', '', '', '2016-7-7/10:23:33', '', '');
INSERT INTO `测点列表` VALUES ('46', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '153', '墙面平整度', 'C5', '', '', '2016-7-7/10:23:33', '', '');
INSERT INTO `测点列表` VALUES ('47', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '153', '墙面平整度', 'C6', '', '', '2016-7-7/10:23:33', '', '');
INSERT INTO `测点列表` VALUES ('48', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '153', '墙面平整度', 'C7', '', '', '2016-7-7/10:23:33', '', '');
INSERT INTO `测点列表` VALUES ('49', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '153', '墙面平整度', 'C8', '', '', '2016-7-7/10:23:33', '', '');
INSERT INTO `测点列表` VALUES ('50', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '153', '墙面平整度', 'C9', '', '', '2016-7-7/10:23:33', '', '');
INSERT INTO `测点列表` VALUES ('51', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '153', '墙面平整度', 'C10', '5', '', '2016-7-7/10:23:33', '', '');
INSERT INTO `测点列表` VALUES ('52', '1', '189', '地面平整度', 'A1', '5', '', '2016-7-11/10:12:39', null, null);
INSERT INTO `测点列表` VALUES ('53', '1', '189', '地面平整度', 'A2', '', '', '2016-7-11/10:12:39', null, null);
INSERT INTO `测点列表` VALUES ('54', '1', '189', '地面平整度', 'A3', '', '', '2016-7-11/10:12:39', null, null);
INSERT INTO `测点列表` VALUES ('55', '1', '189', '地面平整度', 'A4', '', '', '2016-7-11/10:12:39', null, null);
INSERT INTO `测点列表` VALUES ('56', '1', '189', '地面平整度', 'A5', '', '', '2016-7-11/10:12:39', null, null);
INSERT INTO `测点列表` VALUES ('57', '1', '189', '地面平整度', 'A6', '', '', '2016-7-11/10:12:39', null, null);
INSERT INTO `测点列表` VALUES ('58', '1', '189', '地面平整度', 'A7', '', '', '2016-7-11/10:12:39', null, null);
INSERT INTO `测点列表` VALUES ('59', '1', '189', '地面平整度', 'A8', '', '', '2016-7-11/10:12:39', null, null);
INSERT INTO `测点列表` VALUES ('60', '1', '189', '地面平整度', 'A9', '', '', '2016-7-11/10:12:39', null, null);
INSERT INTO `测点列表` VALUES ('61', '1', '189', '地面平整度', 'A10', '', '', '2016-7-11/10:12:39', null, null);
INSERT INTO `测点列表` VALUES ('62', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '151', '墙面平整度', 'C1', '3', '', '2016-7-11/14:24:11', '95.771px', '216.024px');
INSERT INTO `测点列表` VALUES ('63', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '151', '墙面平整度', 'C2', '2', '', '2016-7-11/14:24:11', '245.098px', '246.469px');
INSERT INTO `测点列表` VALUES ('64', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '151', '墙面平整度', 'C3', '5', '', '2016-7-11/14:24:11', '136.992px', '274.906px');
INSERT INTO `测点列表` VALUES ('65', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '151', '墙面平整度', 'C4', '', '', '2016-7-11/14:24:11', '', '');
INSERT INTO `测点列表` VALUES ('66', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '151', '墙面平整度', 'C5', '', '', '2016-7-11/14:24:11', '', '');
INSERT INTO `测点列表` VALUES ('67', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '151', '墙面平整度', 'C6', '', '', '2016-7-11/14:24:11', '', '');
INSERT INTO `测点列表` VALUES ('68', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '151', '墙面平整度', 'C7', '', '', '2016-7-11/14:24:11', '', '');
INSERT INTO `测点列表` VALUES ('69', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '151', '墙面平整度', 'C8', '', '', '2016-7-11/14:24:11', '', '');
INSERT INTO `测点列表` VALUES ('70', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '151', '墙面平整度', 'C9', '', '', '2016-7-11/14:24:11', '', '');
INSERT INTO `测点列表` VALUES ('71', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '151', '墙面平整度', 'C10', '', '', '2016-7-11/14:24:11', '', '');
INSERT INTO `测点列表` VALUES ('72', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '151', '墙面平整度', 'C11', '', '', '2016-7-11/14:24:11', '', '');
INSERT INTO `测点列表` VALUES ('73', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '151', '墙面平整度', 'C12', '', '', '2016-7-11/14:24:11', '', '');
INSERT INTO `测点列表` VALUES ('74', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '150', '垂直度', 'D1', '4', '', '2016-7-11/14:25:38', null, null);
INSERT INTO `测点列表` VALUES ('75', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '150', '垂直度', 'D2', '-1', '', '2016-7-11/14:25:38', null, null);
INSERT INTO `测点列表` VALUES ('76', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '150', '垂直度', 'D3', '-3', '', '2016-7-11/14:25:38', null, null);
INSERT INTO `测点列表` VALUES ('77', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '150', '垂直度', 'D4', '5', '', '2016-7-11/14:25:38', null, null);
INSERT INTO `测点列表` VALUES ('78', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '150', '垂直度', 'D5', '2', '', '2016-7-11/14:25:38', null, null);
INSERT INTO `测点列表` VALUES ('79', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '150', '垂直度', 'D6', '-2', '', '2016-7-11/14:25:38', null, null);
INSERT INTO `测点列表` VALUES ('80', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '150', '垂直度', 'D7', '4', '', '2016-7-11/14:25:38', null, null);
INSERT INTO `测点列表` VALUES ('81', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '150', '垂直度', 'D8', '3', '', '2016-7-11/14:25:38', null, null);
INSERT INTO `测点列表` VALUES ('82', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '150', '垂直度', 'D9', '2', '', '2016-7-11/14:25:38', null, null);
INSERT INTO `测点列表` VALUES ('83', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '150', '垂直度', 'D10', '-5', '', '2016-7-11/14:25:38', null, null);
INSERT INTO `测点列表` VALUES ('84', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '150', '地面平整度', 'A1', '4', '', '2016-7-11/14:29:1', null, null);
INSERT INTO `测点列表` VALUES ('85', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '150', '地面平整度', 'A2', '5', '', '2016-7-11/14:29:1', null, null);
INSERT INTO `测点列表` VALUES ('86', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '150', '地面平整度', 'A3', '3', '', '2016-7-11/14:29:1', null, null);
INSERT INTO `测点列表` VALUES ('87', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '150', '地面平整度', 'A4', '4', '', '2016-7-11/14:29:1', null, null);
INSERT INTO `测点列表` VALUES ('88', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '150', '地面平整度', 'A5', '4', '', '2016-7-11/14:29:1', null, null);
INSERT INTO `测点列表` VALUES ('89', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '150', '地面平整度', 'A6', '2', '', '2016-7-11/14:29:1', null, null);
INSERT INTO `测点列表` VALUES ('90', '8f1a27bc-78c5-472d-bee5-7bf045fb2be9', '191', '垂直度', 'D1', '3', '', '2016-7-11/15:44:5', '41.719px', '39.906px');
INSERT INTO `测点列表` VALUES ('91', '8f1a27bc-78c5-472d-bee5-7bf045fb2be9', '191', '垂直度', 'D2', '5', '', '2016-7-11/15:44:5', '267.729px', '109.75px');
INSERT INTO `测点列表` VALUES ('92', '8f1a27bc-78c5-472d-bee5-7bf045fb2be9', '191', '垂直度', 'D3', '-2', '', '2016-7-11/15:44:5', '137.256px', '160.688px');
INSERT INTO `测点列表` VALUES ('93', '8f1a27bc-78c5-472d-bee5-7bf045fb2be9', '191', '垂直度', 'D4', '4', '', '2016-7-11/15:44:5', '201px', '11px');
INSERT INTO `测点列表` VALUES ('94', '8f1a27bc-78c5-472d-bee5-7bf045fb2be9', '191', '垂直度', 'D5', '', '', '2016-7-11/15:44:5', '', '');
INSERT INTO `测点列表` VALUES ('95', '8f1a27bc-78c5-472d-bee5-7bf045fb2be9', '191', '垂直度', 'D6', '', '', '2016-7-11/15:44:5', '', '');
INSERT INTO `测点列表` VALUES ('96', '8f1a27bc-78c5-472d-bee5-7bf045fb2be9', '191', '垂直度', 'D7', '', '', '2016-7-11/15:44:5', '', '');
INSERT INTO `测点列表` VALUES ('97', '8f1a27bc-78c5-472d-bee5-7bf045fb2be9', '191', '垂直度', 'D8', '', '', '2016-7-11/15:44:5', '', '');
INSERT INTO `测点列表` VALUES ('98', '8f1a27bc-78c5-472d-bee5-7bf045fb2be9', '191', '垂直度', 'D9', '', '', '2016-7-11/15:44:5', '', '');
INSERT INTO `测点列表` VALUES ('99', '8f1a27bc-78c5-472d-bee5-7bf045fb2be9', '191', '垂直度', 'D10', '', '', '2016-7-11/15:44:5', '', '');
INSERT INTO `测点列表` VALUES ('100', '8f1a27bc-78c5-472d-bee5-7bf045fb2be9', '191', '垂直度', 'D11', '', '', '2016-7-11/15:44:5', '', '');
INSERT INTO `测点列表` VALUES ('101', '8f1a27bc-78c5-472d-bee5-7bf045fb2be9', '190', '垂直度', 'D1', '3', '', '2016-7-12/10:23:12', '137.783px', '274.281px');
INSERT INTO `测点列表` VALUES ('102', '8f1a27bc-78c5-472d-bee5-7bf045fb2be9', '190', '垂直度', 'D2', '3', '', '2016-7-12/10:23:12', '165.144px', '215.219px');
INSERT INTO `测点列表` VALUES ('103', '8f1a27bc-78c5-472d-bee5-7bf045fb2be9', '190', '垂直度', 'D3', '5', '', '2016-7-12/10:23:12', '255.293px', '261.156px');
INSERT INTO `测点列表` VALUES ('104', '8f1a27bc-78c5-472d-bee5-7bf045fb2be9', '190', '垂直度', 'D4', '2', '', '2016-7-12/10:23:12', '64.219px', '187.719px');
INSERT INTO `测点列表` VALUES ('105', '8f1a27bc-78c5-472d-bee5-7bf045fb2be9', '190', '垂直度', 'D5', '5', '', '2016-7-12/10:23:12', '249.46px', '184.509px');
INSERT INTO `测点列表` VALUES ('106', '8f1a27bc-78c5-472d-bee5-7bf045fb2be9', '190', '垂直度', 'D6', '', '', '2016-7-12/10:23:12', '87.916px', '223.699px');
INSERT INTO `测点列表` VALUES ('107', '8f1a27bc-78c5-472d-bee5-7bf045fb2be9', '190', '垂直度', 'D7', '', '', '2016-7-12/10:23:12', '163.667px', '168.656px');
INSERT INTO `测点列表` VALUES ('108', '8f1a27bc-78c5-472d-bee5-7bf045fb2be9', '190', '垂直度', 'D8', '', '', '2016-7-12/10:23:12', '', '');
INSERT INTO `测点列表` VALUES ('109', '8f1a27bc-78c5-472d-bee5-7bf045fb2be9', '190', '垂直度', 'D9', '', '', '2016-7-12/10:23:12', '', '');
INSERT INTO `测点列表` VALUES ('110', '8f1a27bc-78c5-472d-bee5-7bf045fb2be9', '190', '垂直度', 'D10', '4', '', '2016-7-12/10:23:12', '', '');
INSERT INTO `测点列表` VALUES ('111', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '151', '墙面阴阳角方正', 'E1', '', '123', '2016-7-18/15:36:39', null, null);
INSERT INTO `测点列表` VALUES ('112', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '151', '墙面阴阳角方正', 'E2', '', '123', '2016-7-18/15:36:39', null, null);
INSERT INTO `测点列表` VALUES ('113', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A1', '', '', '2016-7-18/15:47:16', null, null);
INSERT INTO `测点列表` VALUES ('114', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A2', '', '', '2016-7-18/15:47:17', null, null);
INSERT INTO `测点列表` VALUES ('115', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A3', '', '', '2016-7-18/15:47:17', null, null);
INSERT INTO `测点列表` VALUES ('116', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A4', '', '', '2016-7-18/15:47:17', null, null);
INSERT INTO `测点列表` VALUES ('117', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A5', '', '', '2016-7-18/15:47:17', null, null);
INSERT INTO `测点列表` VALUES ('118', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A6', '', '', '2016-7-18/15:47:17', null, null);
INSERT INTO `测点列表` VALUES ('119', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A7', '', '', '2016-7-18/15:47:17', null, null);
INSERT INTO `测点列表` VALUES ('120', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A8', '', '', '2016-7-18/15:47:17', null, null);
INSERT INTO `测点列表` VALUES ('121', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A9', '', '', '2016-7-18/15:47:17', null, null);
INSERT INTO `测点列表` VALUES ('122', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A10', '', '', '2016-7-18/15:47:17', null, null);
INSERT INTO `测点列表` VALUES ('123', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A11', '', '', '2016-7-18/15:47:17', null, null);
INSERT INTO `测点列表` VALUES ('124', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A12', '', '', '2016-7-18/15:47:17', null, null);
INSERT INTO `测点列表` VALUES ('125', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A13', '', '', '2016-7-18/15:47:17', null, null);
INSERT INTO `测点列表` VALUES ('126', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A14', '', '', '2016-7-18/15:47:17', null, null);
INSERT INTO `测点列表` VALUES ('127', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A15', '', '', '2016-7-18/15:47:17', null, null);
INSERT INTO `测点列表` VALUES ('128', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A16', '', '', '2016-7-18/15:47:17', null, null);
INSERT INTO `测点列表` VALUES ('129', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A17', '', '', '2016-7-18/15:47:17', null, null);
INSERT INTO `测点列表` VALUES ('130', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A18', '', '', '2016-7-18/15:47:17', null, null);
INSERT INTO `测点列表` VALUES ('131', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A19', '', '', '2016-7-18/15:47:17', null, null);
INSERT INTO `测点列表` VALUES ('132', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A20', '', '', '2016-7-18/15:47:17', null, null);
INSERT INTO `测点列表` VALUES ('133', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A21', '', '', '2016-7-18/15:48:36', null, null);
INSERT INTO `测点列表` VALUES ('134', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A22', '', '', '2016-7-18/15:48:36', null, null);
INSERT INTO `测点列表` VALUES ('135', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A23', '', '', '2016-7-18/15:48:36', null, null);
INSERT INTO `测点列表` VALUES ('136', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A24', '', '', '2016-7-18/15:48:36', null, null);
INSERT INTO `测点列表` VALUES ('137', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A25', '', '', '2016-7-18/15:48:36', null, null);
INSERT INTO `测点列表` VALUES ('138', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A26', '', '', '2016-7-18/15:50:0', null, null);
INSERT INTO `测点列表` VALUES ('139', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A27', '', '', '2016-7-18/15:50:1', null, null);
INSERT INTO `测点列表` VALUES ('140', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A28', '', '', '2016-7-18/15:50:1', null, null);
INSERT INTO `测点列表` VALUES ('141', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A29', '', '', '2016-7-18/15:50:1', null, null);
INSERT INTO `测点列表` VALUES ('142', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A30', '', '', '2016-7-18/15:50:1', null, null);
INSERT INTO `测点列表` VALUES ('143', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A31', '', '', '2016-7-18/15:50:1', null, null);
INSERT INTO `测点列表` VALUES ('144', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A32', '', '', '2016-7-18/15:50:1', null, null);
INSERT INTO `测点列表` VALUES ('145', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A33', '', '', '2016-7-18/15:50:1', null, null);
INSERT INTO `测点列表` VALUES ('146', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A34', '', '', '2016-7-18/15:50:1', null, null);
INSERT INTO `测点列表` VALUES ('147', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '149', '地面平整度', 'A35', '', '', '2016-7-18/15:50:1', null, null);
INSERT INTO `测点列表` VALUES ('148', '9b28afc2-a5ee-48d4-a95f-2c4303b93c3a', '193', '地面平整度', 'A1', '3', '', '2016-7-19/9:30:50', '143.496px', '228.188px');
INSERT INTO `测点列表` VALUES ('149', '9b28afc2-a5ee-48d4-a95f-2c4303b93c3a', '193', '地面平整度', 'A2', '3', '', '2016-7-19/9:30:50', '230.332px', '170.219px');
INSERT INTO `测点列表` VALUES ('150', '9b28afc2-a5ee-48d4-a95f-2c4303b93c3a', '193', '地面平整度', 'A3', '2', '', '2016-7-19/9:30:50', '238.594px', '114.906px');
INSERT INTO `测点列表` VALUES ('151', '9b28afc2-a5ee-48d4-a95f-2c4303b93c3a', '193', '地面平整度', 'A4', '5', '', '2016-7-19/9:30:50', '61.23px', '232.406px');
INSERT INTO `测点列表` VALUES ('152', '9b28afc2-a5ee-48d4-a95f-2c4303b93c3a', '193', '地面平整度', 'A5', '-2', '', '2016-7-19/9:30:50', '69.756px', '150.531px');
INSERT INTO `测点列表` VALUES ('153', '9b28afc2-a5ee-48d4-a95f-2c4303b93c3a', '193', '地面平整度', 'A6', '3', '', '2016-7-19/9:30:50', '141.551px', '173.955px');
INSERT INTO `测点列表` VALUES ('154', '9b28afc2-a5ee-48d4-a95f-2c4303b93c3a', '193', '地面平整度', 'A7', '4', '', '2016-7-19/9:30:50', '75.732px', '77.484px');
INSERT INTO `测点列表` VALUES ('155', '9b28afc2-a5ee-48d4-a95f-2c4303b93c3a', '193', '地面平整度', 'A8', '1', '', '2016-7-19/9:30:50', '133.74px', '21.938px');
INSERT INTO `测点列表` VALUES ('156', '9b28afc2-a5ee-48d4-a95f-2c4303b93c3a', '193', '地面平整度', 'A9', '3', '', '2016-7-19/9:30:50', '252.964px', '74.75px');
INSERT INTO `测点列表` VALUES ('157', '9b28afc2-a5ee-48d4-a95f-2c4303b93c3a', '193', '地面平整度', 'A10', '2', '', '2016-7-19/9:30:50', '187.011px', '134.906px');
INSERT INTO `测点列表` VALUES ('158', '9b28afc2-a5ee-48d4-a95f-2c4303b93c3a', '193', '垂直度', 'D1', '4', '', '2016-7-19/9:32:5', '44.443px', '183.266px');
INSERT INTO `测点列表` VALUES ('159', '9b28afc2-a5ee-48d4-a95f-2c4303b93c3a', '193', '垂直度', 'D2', '3', '', '2016-7-19/9:32:5', '124.248px', '205.531px');
INSERT INTO `测点列表` VALUES ('160', '9b28afc2-a5ee-48d4-a95f-2c4303b93c3a', '193', '垂直度', 'D3', '6', '', '2016-7-19/9:32:5', '229.102px', '193.969px');
INSERT INTO `测点列表` VALUES ('161', '9b28afc2-a5ee-48d4-a95f-2c4303b93c3a', '193', '垂直度', 'D4', '1', '', '2016-7-19/9:32:5', '226.553px', '139.438px');
INSERT INTO `测点列表` VALUES ('162', '9b28afc2-a5ee-48d4-a95f-2c4303b93c3a', '193', '垂直度', 'D5', '3', '', '2016-7-19/9:32:5', '153.252px', '104.438px');
INSERT INTO `测点列表` VALUES ('163', '9b28afc2-a5ee-48d4-a95f-2c4303b93c3a', '193', '垂直度', 'D6', '2', '', '2016-7-19/9:32:5', '106.23px', '52.875px');
INSERT INTO `测点列表` VALUES ('164', '9b28afc2-a5ee-48d4-a95f-2c4303b93c3a', '193', '垂直度', 'D7', '4', '', '2016-7-19/9:32:5', '213px', '51px');
INSERT INTO `测点列表` VALUES ('165', '9b28afc2-a5ee-48d4-a95f-2c4303b93c3a', '193', '垂直度', 'D8', '3', '', '2016-7-19/9:32:5', '62.988px', '256.469px');
INSERT INTO `测点列表` VALUES ('166', '9b28afc2-a5ee-48d4-a95f-2c4303b93c3a', '193', '垂直度', 'D9', '2', '', '2016-7-19/9:32:6', '163.008px', '45.219px');
INSERT INTO `测点列表` VALUES ('167', '9b28afc2-a5ee-48d4-a95f-2c4303b93c3a', '193', '垂直度', 'D10', '5', '', '2016-7-19/9:32:6', '118.667px', '153.656px');
INSERT INTO `测点列表` VALUES ('168', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '194', '地面平整度', 'A1', '3', '', '2016-7-19/16:6:22', '227.08px', '124.75px');
INSERT INTO `测点列表` VALUES ('169', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '194', '地面平整度', 'A2', '5', '', '2016-7-19/16:6:22', '90.234px', '40.688px');
INSERT INTO `测点列表` VALUES ('170', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '194', '地面平整度', 'A3', '2', '', '2016-7-19/16:6:23', '154.57px', '103.656px');
INSERT INTO `测点列表` VALUES ('171', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '194', '地面平整度', 'A4', '-5', '', '2016-7-19/16:6:23', '', '');
INSERT INTO `测点列表` VALUES ('172', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '194', '地面平整度', 'A5', '6', '', '2016-7-19/16:6:23', '55.781px', '214.281px');
INSERT INTO `测点列表` VALUES ('173', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '194', '地面平整度', 'A6', '', '', '2016-7-19/16:6:23', '', '');
INSERT INTO `测点列表` VALUES ('174', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '194', '地面平整度', 'A7', '', '', '2016-7-19/16:6:23', '', '');
INSERT INTO `测点列表` VALUES ('175', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '194', '地面平整度', 'A8', '', '', '2016-7-19/16:6:23', '', '');
INSERT INTO `测点列表` VALUES ('176', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '194', '地面平整度', 'A9', '', '', '2016-7-19/16:6:23', '', '');
INSERT INTO `测点列表` VALUES ('177', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '194', '地面平整度', 'A10', '1', '', '2016-7-19/16:6:23', '', '');
INSERT INTO `测点列表` VALUES ('178', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '194', '墙面平整度', 'C1', '2', '', '2016-7-19/16:7:58', '235.869px', '177.719px');
INSERT INTO `测点列表` VALUES ('179', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '194', '墙面平整度', 'C2', '5', '', '2016-7-19/16:7:58', '', '');
INSERT INTO `测点列表` VALUES ('180', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '194', '墙面平整度', 'C3', '', '', '2016-7-19/16:7:58', '', '');
INSERT INTO `测点列表` VALUES ('181', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '194', '墙面平整度', 'C4', '', '', '2016-7-19/16:7:58', '', '');
INSERT INTO `测点列表` VALUES ('182', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '194', '墙面平整度', 'C5', '', '', '2016-7-19/16:7:58', '', '');
INSERT INTO `测点列表` VALUES ('183', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '194', '墙面平整度', 'C6', '', '', '2016-7-19/16:7:58', '', '');
INSERT INTO `测点列表` VALUES ('184', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '194', '墙面平整度', 'C7', '', '', '2016-7-19/16:7:58', '', '');
INSERT INTO `测点列表` VALUES ('185', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '194', '墙面平整度', 'C8', '', '', '2016-7-19/16:7:58', '', '');
INSERT INTO `测点列表` VALUES ('186', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '194', '墙面平整度', 'C9', '', '', '2016-7-19/16:7:58', '', '');
INSERT INTO `测点列表` VALUES ('187', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '194', '墙面平整度', 'C10', '', '', '2016-7-19/16:7:58', '', '');
INSERT INTO `测点列表` VALUES ('188', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '地面平整度', 'A1', '2', '', '2016-7-21/15:25:0', '232.09px', '71.156px');
INSERT INTO `测点列表` VALUES ('189', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '地面平整度', 'A2', '-2', '', '2016-7-21/15:25:0', '66.751px', '71.459px');
INSERT INTO `测点列表` VALUES ('190', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '地面平整度', 'A3', '5', '', '2016-7-21/15:25:0', '230.859px', '178.969px');
INSERT INTO `测点列表` VALUES ('191', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '地面平整度', 'A4', '4', '', '2016-7-21/15:25:0', '', '');
INSERT INTO `测点列表` VALUES ('192', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '地面平整度', 'A5', '', '', '2016-7-21/15:25:0', '231px', '211px');
INSERT INTO `测点列表` VALUES ('193', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '地面平整度', 'A6', '', '', '2016-7-21/15:25:0', '', '');
INSERT INTO `测点列表` VALUES ('194', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '地面平整度', 'A7', '', '', '2016-7-21/15:25:0', '', '');
INSERT INTO `测点列表` VALUES ('195', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '地面平整度', 'A8', '', '', '2016-7-21/15:25:0', '', '');
INSERT INTO `测点列表` VALUES ('196', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '地面平整度', 'A9', '', '', '2016-7-21/15:25:0', '', '');
INSERT INTO `测点列表` VALUES ('197', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '地面平整度', 'A10', '', '', '2016-7-21/15:25:0', '', '');
INSERT INTO `测点列表` VALUES ('198', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '地面平整度', 'A11', '', '', '2016-7-21/15:25:0', '142.002px', '168.656px');
INSERT INTO `测点列表` VALUES ('199', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '地面平整度', 'A12', '', '', '2016-7-21/15:25:0', '', '');
INSERT INTO `测点列表` VALUES ('200', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '墙面平整度', 'C1', '3', '', '2016-7-21/15:25:30', '', '');
INSERT INTO `测点列表` VALUES ('201', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '墙面平整度', 'C2', '1', '', '2016-7-21/15:25:30', '', '');
INSERT INTO `测点列表` VALUES ('202', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '墙面平整度', 'C3', '2', '', '2016-7-21/15:25:30', '', '');
INSERT INTO `测点列表` VALUES ('203', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '墙面平整度', 'C4', '', '', '2016-7-21/15:25:30', '', '');
INSERT INTO `测点列表` VALUES ('204', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '墙面平整度', 'C5', '', '', '2016-7-21/15:25:30', '', '');
INSERT INTO `测点列表` VALUES ('205', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '墙面平整度', 'C6', '', '', '2016-7-21/15:25:30', '', '');
INSERT INTO `测点列表` VALUES ('206', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '墙面平整度', 'C7', '', '', '2016-7-21/15:25:30', '', '');
INSERT INTO `测点列表` VALUES ('207', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '墙面平整度', 'C8', '', '', '2016-7-21/15:25:30', '', '');
INSERT INTO `测点列表` VALUES ('208', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '墙面平整度', 'C9', '', '', '2016-7-21/15:25:30', '', '');
INSERT INTO `测点列表` VALUES ('209', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '墙面平整度', 'C10', '', '', '2016-7-21/15:25:30', '', '');
INSERT INTO `测点列表` VALUES ('210', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '198', '地面平整度', 'A1', '5', '', '2016-7-21/16:12:20', null, null);
INSERT INTO `测点列表` VALUES ('211', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '198', '地面平整度', 'A2', '-2', '', '2016-7-21/16:12:20', null, null);
INSERT INTO `测点列表` VALUES ('212', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '198', '地面平整度', 'A3', '', '', '2016-7-21/16:12:20', null, null);
INSERT INTO `测点列表` VALUES ('213', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '198', '地面平整度', 'A4', '', '', '2016-7-21/16:12:20', null, null);
INSERT INTO `测点列表` VALUES ('214', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '198', '地面平整度', 'A5', '', '', '2016-7-21/16:12:20', null, null);
INSERT INTO `测点列表` VALUES ('215', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '198', '地面平整度', 'A6', '', '', '2016-7-21/16:12:20', null, null);
INSERT INTO `测点列表` VALUES ('216', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '198', '地面平整度', 'A7', '', '', '2016-7-21/16:12:20', null, null);
INSERT INTO `测点列表` VALUES ('217', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '198', '地面平整度', 'A8', '', '', '2016-7-21/16:12:20', null, null);
INSERT INTO `测点列表` VALUES ('218', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '198', '地面平整度', 'A9', '', '', '2016-7-21/16:12:20', null, null);
INSERT INTO `测点列表` VALUES ('219', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '198', '地面平整度', 'A10', '', '', '2016-7-21/16:12:20', null, null);
INSERT INTO `测点列表` VALUES ('220', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '198', '墙面平整度', 'C1', '4', '', '2016-7-21/16:13:20', null, null);
INSERT INTO `测点列表` VALUES ('221', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '198', '墙面平整度', 'C2', '', '', '2016-7-21/16:13:20', null, null);
INSERT INTO `测点列表` VALUES ('222', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '198', '墙面平整度', 'C3', '', '', '2016-7-21/16:13:20', null, null);
INSERT INTO `测点列表` VALUES ('223', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '198', '墙面平整度', 'C4', '', '', '2016-7-21/16:13:20', null, null);
INSERT INTO `测点列表` VALUES ('224', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '198', '墙面平整度', 'C5', '', '', '2016-7-21/16:13:20', null, null);
INSERT INTO `测点列表` VALUES ('225', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '198', '墙面平整度', 'C6', '', '', '2016-7-21/16:13:20', null, null);
INSERT INTO `测点列表` VALUES ('226', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '198', '墙面平整度', 'C7', '', '', '2016-7-21/16:13:20', null, null);
INSERT INTO `测点列表` VALUES ('227', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '198', '墙面平整度', 'C8', '', '', '2016-7-21/16:13:20', null, null);
INSERT INTO `测点列表` VALUES ('228', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '198', '墙面平整度', 'C9', '', '', '2016-7-21/16:13:20', null, null);
INSERT INTO `测点列表` VALUES ('229', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '198', '墙面平整度', 'C10', '', '', '2016-7-21/16:13:20', null, null);
INSERT INTO `测点列表` VALUES ('230', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '198', '墙面平整度', 'C11', '', '', '2016-7-21/16:13:20', null, null);
INSERT INTO `测点列表` VALUES ('231', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '198', '墙面平整度', 'C12', '', '', '2016-7-21/16:13:20', null, null);
INSERT INTO `测点列表` VALUES ('232', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '墙面阴阳角方正', 'E1', '', '', '2016-7-21/16:47:55', null, null);
INSERT INTO `测点列表` VALUES ('233', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '墙面阴阳角方正', 'E2', '5', '', '2016-7-21/16:47:55', null, null);
INSERT INTO `测点列表` VALUES ('234', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '墙面阴阳角方正', 'E3', '4', '', '2016-7-21/16:47:55', null, null);
INSERT INTO `测点列表` VALUES ('235', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '墙面阴阳角方正', 'E4', '', '', '2016-7-21/16:47:55', null, null);
INSERT INTO `测点列表` VALUES ('236', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '垂直度', 'D1', '2', '', '2016-7-21/17:23:52', '', '');
INSERT INTO `测点列表` VALUES ('237', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '垂直度', 'D2', '', '', '2016-7-21/17:23:52', '', '');
INSERT INTO `测点列表` VALUES ('238', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '垂直度', 'D3', '', '', '2016-7-21/17:23:52', '', '');
INSERT INTO `测点列表` VALUES ('239', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '垂直度', 'D4', '', '', '2016-7-21/17:23:52', '', '');
INSERT INTO `测点列表` VALUES ('240', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '垂直度', 'D5', '', '', '2016-7-21/17:23:52', '142.529px', '138.656px');
INSERT INTO `测点列表` VALUES ('241', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '垂直度', 'D6', '', '', '2016-7-21/17:23:52', '168.809px', '71.469px');
INSERT INTO `测点列表` VALUES ('242', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '垂直度', 'D7', '', '', '2016-7-21/17:23:52', '', '');
INSERT INTO `测点列表` VALUES ('243', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '垂直度', 'D8', '', '', '2016-7-21/17:23:52', '', '');
INSERT INTO `测点列表` VALUES ('244', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '垂直度', 'D9', '', '', '2016-7-21/17:23:52', '', '');
INSERT INTO `测点列表` VALUES ('245', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '202', '垂直度', 'D10', '', '', '2016-7-21/17:23:52', '', '');
INSERT INTO `测点列表` VALUES ('246', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '192', '地面平整度', 'A1', '2', '', '2016-7-22/16:44:15', '291.855px', '83.031px');
INSERT INTO `测点列表` VALUES ('247', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '192', '地面平整度', 'A2', '6', '', '2016-7-22/16:44:15', '6.475px', '121.781px');
INSERT INTO `测点列表` VALUES ('248', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '192', '地面平整度', 'A3', '', '', '2016-7-22/16:44:15', '', '');
INSERT INTO `测点列表` VALUES ('249', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '192', '地面平整度', 'A4', '', '', '2016-7-22/16:44:15', '', '');
INSERT INTO `测点列表` VALUES ('250', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '192', '地面平整度', 'A5', '', '', '2016-7-22/16:44:15', '', '');
INSERT INTO `测点列表` VALUES ('251', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '192', '地面平整度', 'A6', '', '', '2016-7-22/16:44:15', '', '');
INSERT INTO `测点列表` VALUES ('252', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '192', '地面平整度', 'A7', '', '', '2016-7-22/16:44:15', '', '');
INSERT INTO `测点列表` VALUES ('253', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '192', '地面平整度', 'A8', '', '', '2016-7-22/16:44:15', '', '');
INSERT INTO `测点列表` VALUES ('254', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '192', '地面平整度', 'A9', '', '', '2016-7-22/16:44:15', '', '');
INSERT INTO `测点列表` VALUES ('255', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '192', '地面平整度', 'A10', '', '', '2016-7-22/16:44:15', '', '');
INSERT INTO `测点列表` VALUES ('256', '387d1073-e5f7-4c02-86b4-7b68e4e93edd', '205', '地面平整度', '', '', '', '2016-7-26/15:57:1', null, null);
INSERT INTO `测点列表` VALUES ('257', '387d1073-e5f7-4c02-86b4-7b68e4e93edd', '205', '墙面平整度', 'C1', '4', '', '2016-7-26/15:57:45', '243.924px', '172.719px');
INSERT INTO `测点列表` VALUES ('258', '387d1073-e5f7-4c02-86b4-7b68e4e93edd', '205', '墙面平整度', 'C2', '3', '', '2016-7-26/15:57:59', '97.002px', '86.938px');
INSERT INTO `测点列表` VALUES ('259', '265913dc-14de-455f-91f1-f52a905ea7cf', '244', '地面平整度', 'A1', '5', '', '2016-8-3/16:14:17', null, null);
INSERT INTO `测点列表` VALUES ('260', '265913dc-14de-455f-91f1-f52a905ea7cf', '244', '地面平整度', 'A2', '4', '', '2016-8-3/16:14:17', null, null);
INSERT INTO `测点列表` VALUES ('261', '265913dc-14de-455f-91f1-f52a905ea7cf', '244', '地面平整度', 'A3', '', '', '2016-8-3/16:14:17', null, null);
INSERT INTO `测点列表` VALUES ('262', '265913dc-14de-455f-91f1-f52a905ea7cf', '244', '地面平整度', 'A4', '', '', '2016-8-3/16:14:17', null, null);
INSERT INTO `测点列表` VALUES ('263', '265913dc-14de-455f-91f1-f52a905ea7cf', '244', '地面平整度', 'A5', '', '', '2016-8-3/16:14:17', null, null);
INSERT INTO `测点列表` VALUES ('264', '265913dc-14de-455f-91f1-f52a905ea7cf', '244', '地面平整度', 'A6', '', '', '2016-8-3/16:14:17', null, null);
INSERT INTO `测点列表` VALUES ('265', '265913dc-14de-455f-91f1-f52a905ea7cf', '244', '地面平整度', 'A7', '', '', '2016-8-3/16:14:17', null, null);
INSERT INTO `测点列表` VALUES ('266', '265913dc-14de-455f-91f1-f52a905ea7cf', '244', '地面平整度', 'A8', '', '', '2016-8-3/16:14:17', null, null);
INSERT INTO `测点列表` VALUES ('267', '265913dc-14de-455f-91f1-f52a905ea7cf', '244', '地面平整度', 'A9', '', '', '2016-8-3/16:14:17', null, null);
INSERT INTO `测点列表` VALUES ('268', '265913dc-14de-455f-91f1-f52a905ea7cf', '244', '地面平整度', 'A10', '', '', '2016-8-3/16:14:17', null, null);
INSERT INTO `测点列表` VALUES ('269', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '194', '垂直度', 'D1', '2', '', '2016-8-3/17:9:26', '162.421px', '144.49px');
INSERT INTO `测点列表` VALUES ('270', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '194', '垂直度', 'D2', '5', '', '2016-8-3/17:9:26', '248.23px', '47.477px');
INSERT INTO `测点列表` VALUES ('271', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '194', '垂直度', 'D3', '', '', '2016-8-3/17:9:26', '', '');
INSERT INTO `测点列表` VALUES ('272', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '194', '垂直度', 'D4', '', '', '2016-8-3/17:9:26', '', '');
INSERT INTO `测点列表` VALUES ('273', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '194', '垂直度', 'D5', '', '', '2016-8-3/17:9:26', '', '');
INSERT INTO `测点列表` VALUES ('274', 'fa6bf23c-89b3-4548-9989-701e108cd51e', '268', '墙面平整度', 'C1', '5', '', '2016-8-4/10:39:51', null, null);
INSERT INTO `测点列表` VALUES ('275', 'fa6bf23c-89b3-4548-9989-701e108cd51e', '268', '墙面平整度', 'C2', '', '', '2016-8-4/10:39:51', null, null);
INSERT INTO `测点列表` VALUES ('276', 'fa6bf23c-89b3-4548-9989-701e108cd51e', '268', '墙面平整度', 'C3', '', '', '2016-8-4/10:39:51', null, null);
INSERT INTO `测点列表` VALUES ('277', 'fa6bf23c-89b3-4548-9989-701e108cd51e', '268', '墙面平整度', 'C4', '', '', '2016-8-4/10:39:51', null, null);
INSERT INTO `测点列表` VALUES ('278', 'fa6bf23c-89b3-4548-9989-701e108cd51e', '268', '墙面平整度', 'C5', '', '', '2016-8-4/10:39:51', null, null);
INSERT INTO `测点列表` VALUES ('279', 'fa6bf23c-89b3-4548-9989-701e108cd51e', '268', '墙面平整度', 'C6', '', '', '2016-8-4/10:39:51', null, null);
INSERT INTO `测点列表` VALUES ('280', 'fa6bf23c-89b3-4548-9989-701e108cd51e', '268', '墙面平整度', 'C7', '', '', '2016-8-4/10:39:51', null, null);
INSERT INTO `测点列表` VALUES ('281', 'fa6bf23c-89b3-4548-9989-701e108cd51e', '268', '墙面平整度', 'C8', '', '', '2016-8-4/10:39:51', null, null);
INSERT INTO `测点列表` VALUES ('282', 'fa6bf23c-89b3-4548-9989-701e108cd51e', '268', '墙面平整度', 'C9', '', '', '2016-8-4/10:39:51', null, null);
INSERT INTO `测点列表` VALUES ('283', 'fa6bf23c-89b3-4548-9989-701e108cd51e', '268', '墙面平整度', 'C10', '', '', '2016-8-4/10:39:51', null, null);
INSERT INTO `测点列表` VALUES ('284', '3b5f4271-1425-4612-8563-d902a7708e5c', '333', '地面平整度', 'A1', '5', '', '2016-8-4/17:3:12', null, null);
INSERT INTO `测点列表` VALUES ('285', '3b5f4271-1425-4612-8563-d902a7708e5c', '333', '地面平整度', 'A2', '7', '', '2016-8-4/17:3:12', null, null);
INSERT INTO `测点列表` VALUES ('286', '3b5f4271-1425-4612-8563-d902a7708e5c', '333', '地面平整度', 'A3', '', '', '2016-8-4/17:3:12', null, null);
INSERT INTO `测点列表` VALUES ('287', '3b5f4271-1425-4612-8563-d902a7708e5c', '333', '地面平整度', 'A4', '', '', '2016-8-4/17:3:12', null, null);
INSERT INTO `测点列表` VALUES ('288', '3b5f4271-1425-4612-8563-d902a7708e5c', '333', '地面平整度', 'A5', '', '', '2016-8-4/17:3:12', null, null);
INSERT INTO `测点列表` VALUES ('289', '3b5f4271-1425-4612-8563-d902a7708e5c', '333', '地面平整度', 'A6', '', '', '2016-8-4/17:3:12', null, null);
INSERT INTO `测点列表` VALUES ('290', '3b5f4271-1425-4612-8563-d902a7708e5c', '333', '地面平整度', 'A7', '', '', '2016-8-4/17:3:12', null, null);
INSERT INTO `测点列表` VALUES ('291', '3b5f4271-1425-4612-8563-d902a7708e5c', '333', '地面平整度', 'A8', '', '', '2016-8-4/17:3:12', null, null);
INSERT INTO `测点列表` VALUES ('292', '3b5f4271-1425-4612-8563-d902a7708e5c', '333', '地面平整度', 'A9', '', '', '2016-8-4/17:3:12', null, null);
INSERT INTO `测点列表` VALUES ('293', '3b5f4271-1425-4612-8563-d902a7708e5c', '333', '地面平整度', 'A10', '', '', '2016-8-4/17:3:12', null, null);
INSERT INTO `测点列表` VALUES ('294', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '334', '地面平整度', 'A1', '2', '', '2016-8-5/11:48:40', '232.09px', '176.469px');
INSERT INTO `测点列表` VALUES ('295', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '334', '地面平整度', 'A2', '1', '', '2016-8-5/11:48:40', '72.48px', '228.969px');
INSERT INTO `测点列表` VALUES ('296', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '334', '地面平整度', 'A3', '', '', '2016-8-5/11:48:40', '', '');
INSERT INTO `测点列表` VALUES ('297', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '334', '地面平整度', 'A4', '', '', '2016-8-5/11:48:40', '', '');
INSERT INTO `测点列表` VALUES ('298', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '334', '地面平整度', 'A5', '', '', '2016-8-5/11:48:40', '', '');
INSERT INTO `测点列表` VALUES ('299', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '334', '地面平整度', 'A6', '', '', '2016-8-5/11:48:40', '', '');
INSERT INTO `测点列表` VALUES ('300', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '334', '地面平整度', 'A7', '', '', '2016-8-5/11:48:40', '', '');
INSERT INTO `测点列表` VALUES ('301', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '334', '地面平整度', 'A8', '', '', '2016-8-5/11:48:40', '', '');
INSERT INTO `测点列表` VALUES ('302', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '334', '地面平整度', 'A9', '', '', '2016-8-5/11:48:40', '', '');
INSERT INTO `测点列表` VALUES ('303', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '334', '地面平整度', 'A10', '', '', '2016-8-5/11:48:40', '', '');
INSERT INTO `测点列表` VALUES ('304', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '335', '地面平整度', 'A1', '1', '', '2016-8-5/15:24:18', '239.121px', '66.625px');
INSERT INTO `测点列表` VALUES ('305', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '335', '地面平整度', 'A2', '3', '', '2016-8-5/15:24:19', '89.531px', '80.688px');
INSERT INTO `测点列表` VALUES ('306', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '335', '地面平整度', 'A3', '', '', '2016-8-5/15:24:19', '', '');
INSERT INTO `测点列表` VALUES ('307', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '335', '地面平整度', 'A4', '', '', '2016-8-5/15:24:19', '', '');
INSERT INTO `测点列表` VALUES ('308', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '335', '地面平整度', 'A5', '', '', '2016-8-5/15:24:19', '', '');
INSERT INTO `测点列表` VALUES ('309', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '335', '地面平整度', 'A6', '', '', '2016-8-5/15:24:19', '', '');
INSERT INTO `测点列表` VALUES ('310', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '335', '地面平整度', 'A7', '', '', '2016-8-5/15:24:19', '', '');
INSERT INTO `测点列表` VALUES ('311', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '335', '地面平整度', 'A8', '', '', '2016-8-5/15:24:19', '', '');
INSERT INTO `测点列表` VALUES ('312', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '335', '地面平整度', 'A9', '', '', '2016-8-5/15:24:19', '', '');
INSERT INTO `测点列表` VALUES ('313', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '335', '地面平整度', 'A10', '', '', '2016-8-5/15:24:19', '', '');
INSERT INTO `测点列表` VALUES ('314', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '336', '地面平整度', 'A1', '3', '', '2016-8-8/10:9:17', '233.294px', '111.156px');
INSERT INTO `测点列表` VALUES ('315', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '336', '地面平整度', 'A2', '2', '', '2016-8-8/10:9:17', '89.795px', '80.531px');
INSERT INTO `测点列表` VALUES ('316', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '336', '地面平整度', 'A3', '', '', '2016-8-8/10:9:17', '', '');
INSERT INTO `测点列表` VALUES ('317', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '336', '地面平整度', 'A4', '', '', '2016-8-8/10:9:17', '', '');
INSERT INTO `测点列表` VALUES ('318', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '336', '地面平整度', 'A5', '', '', '2016-8-8/10:9:17', '', '');
INSERT INTO `测点列表` VALUES ('319', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '336', '地面平整度', 'A6', '', '', '2016-8-8/10:9:17', '', '');
INSERT INTO `测点列表` VALUES ('320', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '336', '地面平整度', 'A7', '', '', '2016-8-8/10:9:17', '', '');
INSERT INTO `测点列表` VALUES ('321', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '336', '地面平整度', 'A8', '', '', '2016-8-8/10:9:17', '', '');
INSERT INTO `测点列表` VALUES ('322', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '336', '地面平整度', 'A9', '', '', '2016-8-8/10:9:17', '', '');
INSERT INTO `测点列表` VALUES ('323', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '336', '地面平整度', 'A10', '', '', '2016-8-8/10:9:17', '', '');
INSERT INTO `测点列表` VALUES ('324', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '336', '地面平整度', 'A11', '', '', '2016-8-8/10:9:17', '', '');
INSERT INTO `测点列表` VALUES ('325', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '336', '地面平整度', 'A12', '', '', '2016-8-8/10:9:17', '', '');
INSERT INTO `测点列表` VALUES ('326', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '337', '墙面平整度', 'C1', '3', '', '2016-8-8/14:51:37', '207.305px', '172.406px');
INSERT INTO `测点列表` VALUES ('327', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '337', '墙面平整度', 'C2', '2', '', '2016-8-8/14:51:37', '125px', '141px');
INSERT INTO `测点列表` VALUES ('328', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '337', '墙面平整度', 'C3', '', '', '2016-8-8/14:51:37', '', '');
INSERT INTO `测点列表` VALUES ('329', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '337', '墙面平整度', 'C4', '', '', '2016-8-8/14:51:37', '', '');
INSERT INTO `测点列表` VALUES ('330', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '337', '墙面平整度', 'C5', '', '', '2016-8-8/14:51:37', '', '');
INSERT INTO `测点列表` VALUES ('331', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '337', '墙面平整度', 'C6', '', '', '2016-8-8/14:51:37', '', '');
INSERT INTO `测点列表` VALUES ('332', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '337', '墙面平整度', 'C7', '', '', '2016-8-8/14:51:37', '', '');
INSERT INTO `测点列表` VALUES ('333', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '337', '墙面平整度', 'C8', '', '', '2016-8-8/14:51:37', '', '');
INSERT INTO `测点列表` VALUES ('334', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '337', '墙面平整度', 'C9', '', '', '2016-8-8/14:51:37', '', '');
INSERT INTO `测点列表` VALUES ('335', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '337', '墙面平整度', 'C10', '', '', '2016-8-8/14:51:37', '', '');
INSERT INTO `测点列表` VALUES ('336', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '338', '地面平整度', 'A1', '3', '', '2016-8-9/11:23:18', '146.045px', '160.531px');
INSERT INTO `测点列表` VALUES ('337', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '338', '地面平整度', 'A2', '2', '', '2016-8-9/11:23:18', '230.808px', '124.06px');
INSERT INTO `测点列表` VALUES ('338', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '338', '地面平整度', 'A3', '', '', '2016-8-9/11:23:18', '', '');
INSERT INTO `测点列表` VALUES ('339', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '338', '地面平整度', 'A4', '', '', '2016-8-9/11:23:18', '', '');
INSERT INTO `测点列表` VALUES ('340', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '338', '地面平整度', 'A5', '', '', '2016-8-9/11:23:18', '', '');
INSERT INTO `测点列表` VALUES ('341', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '338', '地面平整度', 'A6', '', '', '2016-8-9/11:23:18', '', '');
INSERT INTO `测点列表` VALUES ('342', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '338', '地面平整度', 'A7', '', '', '2016-8-9/11:23:18', '', '');
INSERT INTO `测点列表` VALUES ('343', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '338', '地面平整度', 'A8', '', '', '2016-8-9/11:23:18', '', '');
INSERT INTO `测点列表` VALUES ('344', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '338', '地面平整度', 'A9', '', '', '2016-8-9/11:23:18', '', '');
INSERT INTO `测点列表` VALUES ('345', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '338', '地面平整度', 'A10', '', '', '2016-8-9/11:23:18', '', '');
INSERT INTO `测点列表` VALUES ('346', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '338', '地面平整度', 'A11', '', '', '2016-8-9/11:23:18', '', '');
INSERT INTO `测点列表` VALUES ('347', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '339', '地面平整度', 'A1', '4', '', '2016-8-9/18:23:29', '245.098px', '115.531px');
INSERT INTO `测点列表` VALUES ('348', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '339', '地面平整度', 'A2', '2', '', '2016-8-9/18:23:29', '135.059px', '131.781px');
INSERT INTO `测点列表` VALUES ('349', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '339', '地面平整度', 'A3', '', '', '2016-8-9/18:23:29', '', '');
INSERT INTO `测点列表` VALUES ('350', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '339', '地面平整度', 'A4', '', '', '2016-8-9/18:23:29', '', '');
INSERT INTO `测点列表` VALUES ('351', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '339', '地面平整度', 'A5', '', '', '2016-8-9/18:23:29', '', '');
INSERT INTO `测点列表` VALUES ('352', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '339', '地面平整度', 'A6', '', '', '2016-8-9/18:23:29', '', '');
INSERT INTO `测点列表` VALUES ('353', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '339', '地面平整度', 'A7', '', '', '2016-8-9/18:23:29', '', '');
INSERT INTO `测点列表` VALUES ('354', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '339', '地面平整度', 'A8', '', '', '2016-8-9/18:23:29', '', '');
INSERT INTO `测点列表` VALUES ('355', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '339', '地面平整度', 'A9', '', '', '2016-8-9/18:23:29', '', '');
INSERT INTO `测点列表` VALUES ('356', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '339', '地面平整度', 'A10', '', '', '2016-8-9/18:23:29', '', '');
INSERT INTO `测点列表` VALUES ('357', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '339', '地面平整度', 'A11', '', '', '2016-8-9/18:23:30', '', '');
INSERT INTO `测点列表` VALUES ('358', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '339', '地面平整度', 'A12', '', '', '2016-8-9/18:23:30', '', '');
INSERT INTO `测点列表` VALUES ('359', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '340', '墙面平整度', 'C1', '2', '', '2016-8-11/15:41:40', '240.607px', '169.75px');
INSERT INTO `测点列表` VALUES ('360', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '340', '墙面平整度', 'C2', '4', '', '2016-8-11/15:41:41', '137px', '136px');
INSERT INTO `测点列表` VALUES ('361', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '340', '墙面平整度', 'C3', '', '', '2016-8-11/15:41:41', '', '');
INSERT INTO `测点列表` VALUES ('362', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '340', '墙面平整度', 'C4', '', '', '2016-8-11/15:41:41', '', '');
INSERT INTO `测点列表` VALUES ('363', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '340', '墙面平整度', 'C5', '', '', '2016-8-11/15:41:41', '', '');
INSERT INTO `测点列表` VALUES ('364', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '340', '墙面平整度', 'C6', '', '', '2016-8-11/15:41:41', '', '');
INSERT INTO `测点列表` VALUES ('365', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '340', '墙面平整度', 'C7', '4', '', '2016-8-11/15:41:41', '182.344px', '98.02px');
INSERT INTO `测点列表` VALUES ('366', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '340', '墙面平整度', 'C8', '5', '', '2016-8-11/15:41:41', '35.742px', '174.281px');
INSERT INTO `测点列表` VALUES ('367', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '340', '墙面平整度', 'C9', '', '', '2016-8-11/15:41:41', '', '');
INSERT INTO `测点列表` VALUES ('368', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '340', '墙面平整度', 'C10', '', '', '2016-8-11/15:41:41', '', '');
INSERT INTO `测点列表` VALUES ('369', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '340', '墙面平整度', 'C11', '', '', '2016-8-11/16:51:50', '', '');
INSERT INTO `测点列表` VALUES ('370', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '340', '墙面平整度', 'C12', '', '', '2016-8-11/16:51:50', '', '');
INSERT INTO `测点列表` VALUES ('371', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '340', '墙面平整度', 'C13', '', '', '2016-8-11/16:51:50', '', '');
INSERT INTO `测点列表` VALUES ('372', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '340', '墙面平整度', 'C14', '', '', '2016-8-11/16:51:50', '', '');
INSERT INTO `测点列表` VALUES ('373', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '340', '墙面平整度', 'C15', '', '', '2016-8-11/16:51:50', '', '');
INSERT INTO `测点列表` VALUES ('374', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '340', '墙面平整度', 'C16', '', '', '2016-8-11/16:51:50', '', '');
INSERT INTO `测点列表` VALUES ('375', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '340', '墙面平整度', 'C17', '', '', '2016-8-11/16:51:50', '', '');
INSERT INTO `测点列表` VALUES ('376', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '340', '墙面平整度', 'C18', '', '', '2016-8-11/16:51:50', '', '');
INSERT INTO `测点列表` VALUES ('377', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '340', '墙面平整度', 'C19', '', '', '2016-8-11/16:51:50', '', '');
INSERT INTO `测点列表` VALUES ('378', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '340', '墙面平整度', 'C20', '', '', '2016-8-11/16:51:50', '', '');
INSERT INTO `测点列表` VALUES ('379', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '340', '墙面平整度', 'C21', '', '', '2016-8-11/16:51:50', '', '');
INSERT INTO `测点列表` VALUES ('380', 'b04b16cd-cb14-4770-90c0-b68c75eabbeb', '340', '墙面平整度', 'C22', '', '', '2016-8-11/16:51:50', '', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 用户信息
-- ----------------------------
INSERT INTO `用户信息` VALUES ('87', 'admin', '123456', '616764348@qq.com', '18988583168');
INSERT INTO `用户信息` VALUES ('88', '18988583168', '18988583168', '258774493@qq.com', '');
INSERT INTO `用户信息` VALUES ('89', '欣欣易送检', 'TXKJ88725265', '359349558@qq.com', '');
INSERT INTO `用户信息` VALUES ('90', 'Jimidot', '889900', '593707046@qq.com', '18928108583');
INSERT INTO `用户信息` VALUES ('91', 'handsome', 'lxl12345678', '448287424@qq.com', '15876298613');
INSERT INTO `用户信息` VALUES ('92', 'hsdexing', '8988713', '549790260@qq.com', '18823051050');
INSERT INTO `用户信息` VALUES ('93', '我是懒羊羊', '13531110304', '764646298@qq.com', '13531110304');
INSERT INTO `用户信息` VALUES ('94', 'jmyyzs', '66233089', 'jmyyzs@163.com', '13802618095');
INSERT INTO `用户信息` VALUES ('95', '429797746', 's201122', '429797746@qq.com', '15914261463');
INSERT INTO `用户信息` VALUES ('96', 'simdali-3', 'wlgq@123', '295010219@QQ.com', '13672850526');
INSERT INTO `用户信息` VALUES ('97', '13828006773', 'A1V2J8B9123', '506711533@qq.com', '13828006773');
INSERT INTO `用户信息` VALUES ('98', '15015585030', 'zsefvd815576446/', '815576446@qq.com', '15015585030');
INSERT INTO `用户信息` VALUES ('99', '13724698698', '501501', '759667268@qq.com', '13724698698');
INSERT INTO `用户信息` VALUES ('100', 'sharonvs', 'A13823493937a', '184930814@qq.com', '13531363319');
INSERT INTO `用户信息` VALUES ('101', '13928208879', '13928208879', '410989535@qq.com', '13928208879');
INSERT INTO `用户信息` VALUES ('102', '15915220056', '000333', '458909607@QQ.com', '15915220056');
INSERT INTO `用户信息` VALUES ('103', '1336198349', '13112779738', '1336198349.@com', '13674018685');
INSERT INTO `用户信息` VALUES ('104', '1838851045', 'LN13531379628', '1838851045@qq.com', '13690610709');
INSERT INTO `用户信息` VALUES ('105', '15884409985', '123456', '393510384@qq.com', '15884409985');
INSERT INTO `用户信息` VALUES ('106', '626767182', 'aiqing5306', '626767182@qq.com', '13729007308');
INSERT INTO `用户信息` VALUES ('107', '373883642', '3591537guo', '373883642@qq.com', '15089949131');
INSERT INTO `用户信息` VALUES ('108', '13534833311', '13534833311', '2847330079@qq.com', '13534833311');
INSERT INTO `用户信息` VALUES ('109', 'aps01', 'aps001002', '78152429@qq.com', '18022931543');
INSERT INTO `用户信息` VALUES ('110', 'zhuangtt15', 'zht18859725085', '1321302607@qq.com', '18859725085');
INSERT INTO `用户信息` VALUES ('111', '710160437', 'LONGXIANZHANG628', '710160437@qq.com', '18802590476');
INSERT INTO `用户信息` VALUES ('112', '893403564', '195818', 'hyj195818@qq.com', '18608396519');
INSERT INTO `用户信息` VALUES ('113', '12345', '123456', '1412920903@qq.com', '15282123399');
INSERT INTO `用户信息` VALUES ('114', '中澳滨河湾', '123456', '154566325@qq.com', '18312243949');
INSERT INTO `用户信息` VALUES ('115', '15815021610', '15876890651', '363208952@qq.com', '15815021610');
INSERT INTO `用户信息` VALUES ('116', '555凤凰', '888888', '1140299300@qq.com', '18898630567');
INSERT INTO `用户信息` VALUES ('117', '小妖跌落水', 'LYJ15918838770jj', '1360134155@qq.com', '15815706543');
INSERT INTO `用户信息` VALUES ('118', '13672910368', '13672910368', '13672910368@126.com', '13672910368');
INSERT INTO `用户信息` VALUES ('119', 'HJB030', 'HJB030', 'hjb000108@163.com', '15338104687');
INSERT INTO `用户信息` VALUES ('120', '13129200281', '13129200281', '363707810@qq.com', '13129200281');
INSERT INTO `用户信息` VALUES ('121', '13380459563', 'zk983958634', '983958634@qq.com', '13380459563');
INSERT INTO `用户信息` VALUES ('122', '13326975369', '851211', '534868506@qq.com', '13326975369');
INSERT INTO `用户信息` VALUES ('123', '13715555345', 'ivwliqpl', '18878784@qq.com', '13715555345');
INSERT INTO `用户信息` VALUES ('124', '18688876855', 'A15270008423', '297473587@qq.com', '18688876855');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 组员信息
-- ----------------------------
INSERT INTO `组员信息` VALUES ('1', '1470494132300', '小孩', '老板', '18988583168', '5677', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '台山XX项目', '2016-8-6/22:35:36');
INSERT INTO `组员信息` VALUES ('2', '1470494164836', '大人', '456', '15298336317', '5678', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '台山XX项目', '2016-8-6/22:36:9');
