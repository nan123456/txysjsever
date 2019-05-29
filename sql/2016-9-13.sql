/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50623
Source Host           : localhost:3306
Source Database       : 同欣易送检

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2016-09-13 20:23:52
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_伙伴类型
-- ----------------------------
INSERT INTO `pc_伙伴类型` VALUES ('1', '1473429424925', '检测机构', '2016-9-9/21:57:6');
INSERT INTO `pc_伙伴类型` VALUES ('2', '1473429432363', '监督机构', '2016-9-9/21:57:39');
INSERT INTO `pc_伙伴类型` VALUES ('3', '1473429464083', '项目工地', '2016-9-9/21:57:50');
INSERT INTO `pc_伙伴类型` VALUES ('28', '1473432763841', '123', '2016-9-9/22:53:18');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_报名_签到
-- ----------------------------
INSERT INTO `pc_报名_签到` VALUES ('3', '1473674615898', '1473327759140', 'G20峰会', '卡卡', '15019791372', '电子科技大学中山学院', '2016-9-12/18:3:13', '已签到', '0', '2016-9-12/23:58:10');
INSERT INTO `pc_报名_签到` VALUES ('4', '1473696147597', '1473695952355', '巅峰会议', '王卡', '15019791375', '通信工程', '2016-9-13/0:0:54', '已签到', '8', '2016-9-13/0:20:8');
INSERT INTO `pc_报名_签到` VALUES ('6', '1473696887894', '1473695952355', '巅峰会议', '天天', '15019791377', '', '2016-9-13/0:16:12', '已签到', '8', '2016-9-13/0:32:21');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_活动列表
-- ----------------------------
INSERT INTO `pc_活动列表` VALUES ('1', '1473327759140', 'G20峰会', '中山市', '2016-09-08 17:40', '电子科技大学中山学院', '江苏到广东', '首脑会议', '同欣科技', '广东省中山市富康路10号2楼', '4007160-315,18988583166', '请222333333011111', '2016-9-8/17:44:4', '3', '0');
INSERT INTO `pc_活动列表` VALUES ('17', '1473438006290', '456', '中山市', '2016-09-09 15:30', '654', '654', '654', '同欣科技', '广东省中山市富康路10号2楼', '4007160-315,18988583166', '请于活动当天会议现场扫描活动二维码赢取活动积分。', '2016-9-10/0:20:21', '0', '62');
INSERT INTO `pc_活动列表` VALUES ('18', '1473490666813', '测试', '中山市', '2016-09-10 14:55', '测试', '测试', '测试', '同欣科技', '广东省中山市富康路10号2楼', '4007160-315,18988583166', '请于活动当天会议现场扫描活动二维码赢取活动积分。', '2016-9-10/14:58:13', '0', '20');
INSERT INTO `pc_活动列表` VALUES ('19', '1473695952355', '巅峰会议', '中国', '2016-09-12 23:55', '电子科技大学中山学院', '美国-中国', '开会', '同欣科技', '广东省中山市富康路10号2楼', '4007160-315,18988583166', '请于活动当天会议现场扫描活动二维码赢取活动积分。', '2016-9-12/23:59:58', '2', '8');

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
  `添加时间` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`时间戳`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_消息列表
-- ----------------------------
INSERT INTO `pc_消息列表` VALUES ('1', '1473494813231', '15019791372', '123', '123', '2016-9-10/16:7:3');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_知识列表
-- ----------------------------
INSERT INTO `pc_知识列表` VALUES ('3', '1473501118094', '地基基础', '材料检验', '885', '8', '8', '8', '8', '8', '2016-9-10/17:52:5', '2016-9-10/18:46:47');
INSERT INTO `pc_知识列表` VALUES ('5', '1473503884445', '屋面工程', '现场检测', '555', '555', '555456456', '5555', '55', '55500000138', '2016-9-10/18:38:16', '2016-9-10/18:48:9');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_积分列表
-- ----------------------------
INSERT INTO `pc_积分列表` VALUES ('1', '1473484443381', '小王', '15019791372', '10', '无', '2016-9-10/13:14:10', '2016-9-12/23:58:10');
INSERT INTO `pc_积分列表` VALUES ('3', '1473486323909', '55555555', '22222', '111111', '5550', '2016-9-10/13:45:30', '2016-9-10/13:55:33');
INSERT INTO `pc_积分列表` VALUES ('4', '1473696103152', '王卡', '15019791375', '16', '记录来源，活动签到自动生成', '2016-9-13/0:1:43', '2016-9-13/0:20:8');
INSERT INTO `pc_积分列表` VALUES ('5', '1473697941298', '天天', '15019791377', '8', '记录来源，活动签到自动生成', '2016-9-13/0:32:21', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_通告列表
-- ----------------------------
INSERT INTO `pc_通告列表` VALUES ('2', '1473404448961', '测试', '测试', '测试', '测试', '2016-9-9/15:1:9');

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 任务
-- ----------------------------
INSERT INTO `任务` VALUES ('9', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '台山XX项目', '行行行', '1470313750285', null, '隐蔽验收', '不错', '小孩', '小孩,大人', '18988583168,15298336317', '身体', '2016-9-4', '~*^*~81939.jpg', '2016-8-11/10:21:35', '已回复', '2016-8-30', '[小孩]任务回复：67889<br>(2016-8-30 15:24:29)<br>[小孩]任务回复：68899<br>(2016-8-30 15:24:41)<br>[小孩]任务回复：8899<br>(2016-8-30 15:24:50)<br>', '~*^*~IMG_20160318_082443.jpg', '2016-8-30/15:24:51');
INSERT INTO `任务` VALUES ('17', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '台山XX项目', '册', '1470881505252', null, '技术交底', '3467', '小孩', '大人', '18988583168', '578', '2016-8-11', null, '2016-8-11/10:12:52', '已回复', '2016-8-25', '5789', '~*^*~IMG_20160318_082443.jpg', '2016-8-25/21:39:18');
INSERT INTO `任务` VALUES ('18', '5e99b16c-7ba2-4548-b03f-caf13dddb485', '华发左岸公寓主体建安1', '会审', '1471014436542', null, '图纸会审', '第一次图纸会审', '李军仪', '张群,张群', '18988583166,18988583166', '负二层', '2016-8-14', '~*^*~F301.png', '2016-8-12/23:8:55', '已回复', '2016-8-12', '己完战', '~*^*~Screenshot_20160811-113014.png', '2016-8-12/23:12:17');
INSERT INTO `任务` VALUES ('19', '5e99b16c-7ba2-4548-b03f-caf13dddb485', '华发左岸公寓主体建安1', '迎格', '1471014859016', null, '迎检工作', '创优迎检', '张群', '张群,李军仪', '18988583166,18988583163', '全栋', '2016-8-20', null, '2016-8-12/23:15:22', '已回复', '2016-8-12', '已处理完毕', null, '2016-8-12/23:21:9');
INSERT INTO `任务` VALUES ('20', '5e99b16c-7ba2-4548-b03f-caf13dddb485', '华发左岸公寓主体建安1', '软件问题反馈', '1471014932049', null, '软件投诉', '一个异常现象', '李军仪', '张群,张群', '18988583166,18988583166', '', '2016-8-14', null, '2016-8-12/23:17:58', '已回复', '2016-8-12', '巳处理，待核对', '~*^*~Screenshot_20160812-111253.png', '2016-8-12/23:21:59');
INSERT INTO `任务` VALUES ('21', '5e99b16c-7ba2-4548-b03f-caf13dddb485', '华发左岸公寓主体建安1', '临时安排', '1471015574617', null, '其他', '劳务结算资料整理', '张群', '王剑', '18988583168', '', '2016-8-13', null, '2016-8-12/23:27:47', '已回复', '2016-8-14', '巳完成', '~*^*~F301.png', '2016-8-14/10:59:35');
INSERT INTO `任务` VALUES ('22', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '台山XX项目', '567888', '1472462289226', '次重要', '图纸会审', '67788', '小孩', '小孩,大人', '18988583168,15298336317', '678', '2016-8-29', null, '2016-8-29/17:18:34', '未回复', null, null, null, null);
INSERT INTO `任务` VALUES ('23', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '台山XX项目', '测试', '1472462594509', '重要', '图纸会审', '5778', '小孩', '大人', '15298336317', '567', '2016-8-29', null, '2016-8-29/17:23:32', '未回复', null, null, null, null);
INSERT INTO `任务` VALUES ('24', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '台山XX项目', '123', '1473128056139', '次重要', '技术交底', '213', '小孩', '小孩,大人', '18988583168,15298336317', '123', '2016-9-6', null, '2016-9-6/10:14:59', '已回复', '2016-9-6', '[小孩]任务回复：12313[小孩]任务回复：2222222222222222<br>(2016-9-6 10:18:32)<br>', null, '2016-9-6/10:18:35');

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
) ENGINE=InnoDB AUTO_INCREMENT=469 DEFAULT CHARSET=utf8;

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
INSERT INTO `分户验收` VALUES ('341', '3be03dcb-b5b8-4232-9636-bfd4b695a3c3', 'A206', '23355', '阿1,阿2', 'A', '206', '2016-8-13', null, '~*^*~F301.png', null, null, '2016-8-13/11:1:1');
INSERT INTO `分户验收` VALUES ('342', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼21', '阿狸', '阿1', '1号楼', '21', '2016-9-15', null, null, null, null, '2016-8-15/10:42:50');
INSERT INTO `分户验收` VALUES ('343', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼22', '阿狸', '阿1', '1号楼', '22', '2016-9-15', null, null, null, null, '2016-8-15/10:42:50');
INSERT INTO `分户验收` VALUES ('344', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼23', '阿狸', '阿1', '1号楼', '23', '2016-9-15', null, null, null, null, '2016-8-15/10:42:50');
INSERT INTO `分户验收` VALUES ('345', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼24', '阿狸', '阿1', '1号楼', '24', '2016-9-15', null, null, null, null, '2016-8-15/10:42:50');
INSERT INTO `分户验收` VALUES ('346', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼31', '阿狸', '阿1', '1号楼', '31', '2016-9-15', null, null, null, null, '2016-8-15/10:42:50');
INSERT INTO `分户验收` VALUES ('347', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼32', '阿狸', '阿1', '1号楼', '32', '2016-9-15', null, null, null, null, '2016-8-15/10:42:50');
INSERT INTO `分户验收` VALUES ('348', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼33', '阿狸', '阿1', '1号楼', '33', '2016-9-15', null, null, null, null, '2016-8-15/10:42:50');
INSERT INTO `分户验收` VALUES ('349', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼34', '阿狸', '阿1', '1号楼', '34', '2016-9-15', null, null, null, null, '2016-8-15/10:42:50');
INSERT INTO `分户验收` VALUES ('350', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼41', '阿狸', '阿1', '1号楼', '41', '2016-9-15', null, null, null, null, '2016-8-15/10:42:50');
INSERT INTO `分户验收` VALUES ('351', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼42', '阿狸', '阿1', '1号楼', '42', '2016-9-15', null, null, null, null, '2016-8-15/10:42:50');
INSERT INTO `分户验收` VALUES ('352', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼43', '阿狸', '阿1', '1号楼', '43', '2016-9-15', null, null, null, null, '2016-8-15/10:42:50');
INSERT INTO `分户验收` VALUES ('353', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼44', '阿狸', '阿1', '1号楼', '44', '2016-9-15', null, null, null, null, '2016-8-15/10:42:50');
INSERT INTO `分户验收` VALUES ('354', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼51', '阿狸', '阿1', '1号楼', '51', '2016-9-15', null, null, null, null, '2016-8-15/10:42:50');
INSERT INTO `分户验收` VALUES ('355', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼52', '阿狸', '阿1', '1号楼', '52', '2016-9-15', null, null, null, null, '2016-8-15/10:42:50');
INSERT INTO `分户验收` VALUES ('356', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼53', '阿狸', '阿1', '1号楼', '53', '2016-9-15', null, null, null, null, '2016-8-15/10:42:50');
INSERT INTO `分户验收` VALUES ('357', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼54', '阿狸', '阿1', '1号楼', '54', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('358', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼61', '阿狸', '阿1', '1号楼', '61', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('359', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼62', '阿狸', '阿1', '1号楼', '62', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('360', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼63', '阿狸', '阿1', '1号楼', '63', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('361', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼64', '阿狸', '阿1', '1号楼', '64', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('362', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼71', '阿狸', '阿1', '1号楼', '71', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('363', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼72', '阿狸', '阿1', '1号楼', '72', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('364', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼73', '阿狸', '阿1', '1号楼', '73', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('365', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼74', '阿狸', '阿1', '1号楼', '74', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('366', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼81', '阿狸', '阿1', '1号楼', '81', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('367', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼82', '阿狸', '阿1', '1号楼', '82', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('368', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼83', '阿狸', '阿1', '1号楼', '83', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('369', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼84', '阿狸', '阿1', '1号楼', '84', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('370', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼91', '阿狸', '阿1', '1号楼', '91', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('371', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼92', '阿狸', '阿1', '1号楼', '92', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('372', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼93', '阿狸', '阿1', '1号楼', '93', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('373', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼94', '阿狸', '阿1', '1号楼', '94', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('374', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼101', '阿狸', '阿1', '1号楼', '101', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('375', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼102', '阿狸', '阿1', '1号楼', '102', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('376', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼103', '阿狸', '阿1', '1号楼', '103', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('377', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼104', '阿狸', '阿1', '1号楼', '104', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('378', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼111', '阿狸', '阿1', '1号楼', '111', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('379', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼112', '阿狸', '阿1', '1号楼', '112', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('380', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼113', '阿狸', '阿1', '1号楼', '113', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('381', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼114', '阿狸', '阿1', '1号楼', '114', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('382', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼121', '阿狸', '阿1', '1号楼', '121', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('383', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼122', '阿狸', '阿1', '1号楼', '122', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('384', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼123', '阿狸', '阿1', '1号楼', '123', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('385', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '1号楼124', '阿狸', '阿1', '1号楼', '124', '2016-9-15', null, null, null, null, '2016-8-15/10:42:51');
INSERT INTO `分户验收` VALUES ('386', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘21', '一', '阿2', '甘', '21', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('387', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘22', '一', '阿2', '甘', '22', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('388', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘23', '一', '阿2', '甘', '23', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('389', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘24', '一', '阿2', '甘', '24', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('390', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘31', '一', '阿2', '甘', '31', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('391', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘32', '一', '阿2', '甘', '32', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('392', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘33', '一', '阿2', '甘', '33', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('393', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘34', '一', '阿2', '甘', '34', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('394', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘41', '一', '阿2', '甘', '41', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('395', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘42', '一', '阿2', '甘', '42', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('396', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘43', '一', '阿2', '甘', '43', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('397', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘44', '一', '阿2', '甘', '44', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('398', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘51', '一', '阿2', '甘', '51', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('399', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘52', '一', '阿2', '甘', '52', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('400', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘53', '一', '阿2', '甘', '53', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('401', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘54', '一', '阿2', '甘', '54', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('402', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘61', '一', '阿2', '甘', '61', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('403', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘62', '一', '阿2', '甘', '62', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('404', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘63', '一', '阿2', '甘', '63', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('405', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘64', '一', '阿2', '甘', '64', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('406', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘71', '一', '阿2', '甘', '71', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('407', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘72', '一', '阿2', '甘', '72', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('408', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘73', '一', '阿2', '甘', '73', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('409', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘74', '一', '阿2', '甘', '74', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('410', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘81', '一', '阿2', '甘', '81', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('411', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘82', '一', '阿2', '甘', '82', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('412', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘83', '一', '阿2', '甘', '83', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('413', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘84', '一', '阿2', '甘', '84', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('414', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘91', '一', '阿2', '甘', '91', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('415', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘92', '一', '阿2', '甘', '92', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('416', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘93', '一', '阿2', '甘', '93', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('417', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘94', '一', '阿2', '甘', '94', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('418', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘101', '一', '阿2', '甘', '101', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('419', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘102', '一', '阿2', '甘', '102', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('420', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘103', '一', '阿2', '甘', '103', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('421', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘104', '一', '阿2', '甘', '104', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('422', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘111', '一', '阿2', '甘', '111', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('423', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘112', '一', '阿2', '甘', '112', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('424', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘113', '一', '阿2', '甘', '113', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('425', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘114', '一', '阿2', '甘', '114', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('426', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘121', '一', '阿2', '甘', '121', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('427', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘122', '一', '阿2', '甘', '122', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('428', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘123', '一', '阿2', '甘', '123', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('429', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘124', '一', '阿2', '甘', '124', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('430', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘131', '一', '阿2', '甘', '131', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('431', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘132', '一', '阿2', '甘', '132', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('432', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘133', '一', '阿2', '甘', '133', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('433', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘134', '一', '阿2', '甘', '134', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('434', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘141', '一', '阿2', '甘', '141', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('435', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘142', '一', '阿2', '甘', '142', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('436', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘143', '一', '阿2', '甘', '143', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('437', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘144', '一', '阿2', '甘', '144', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('438', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘151', '一', '阿2', '甘', '151', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('439', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘152', '一', '阿2', '甘', '152', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('440', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘153', '一', '阿2', '甘', '153', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('441', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘154', '一', '阿2', '甘', '154', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('442', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘161', '一', '阿2', '甘', '161', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('443', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘162', '一', '阿2', '甘', '162', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('444', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘163', '一', '阿2', '甘', '163', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('445', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘164', '一', '阿2', '甘', '164', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('446', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘171', '一', '阿2', '甘', '171', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('447', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘172', '一', '阿2', '甘', '172', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('448', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘173', '一', '阿2', '甘', '173', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('449', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘174', '一', '阿2', '甘', '174', '2016-10-15', null, null, null, null, '2016-8-15/16:13:18');
INSERT INTO `分户验收` VALUES ('450', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘181', '一', '阿2', '甘', '181', '2016-10-15', null, null, null, null, '2016-8-15/16:13:19');
INSERT INTO `分户验收` VALUES ('451', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘182', '一', '阿2', '甘', '182', '2016-10-15', null, null, null, null, '2016-8-15/16:13:19');
INSERT INTO `分户验收` VALUES ('452', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘183', '一', '阿2', '甘', '183', '2016-10-15', null, null, null, null, '2016-8-15/16:13:19');
INSERT INTO `分户验收` VALUES ('453', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '甘184', '一', '阿2', '甘', '184', '2016-10-15', null, null, null, null, '2016-8-15/16:13:19');
INSERT INTO `分户验收` VALUES ('454', '3be03dcb-b5b8-4232-9636-bfd4b695a3c3', 'A308', '2233', '阿1,阿2', 'A', '308', '2016-8-16', null, '~*^*~F301.png', null, null, '2016-8-16/8:39:3');
INSERT INTO `分户验收` VALUES ('455', '3be03dcb-b5b8-4232-9636-bfd4b695a3c3', 'S402', 't5y', '阿1', 'S', '402', '2016-8-16', null, '~*^*~F301.png', null, null, '2016-8-16/8:40:44');
INSERT INTO `分户验收` VALUES ('456', '2091d7a1-5479-49f0-b037-3645c036f906', 'A294', 'gghhjjj', '阿3,阿4', 'A', '294', '2016-8-16', null, '~*^*~F301.png', null, null, '2016-8-16/15:29:30');
INSERT INTO `分户验收` VALUES ('457', '966bad11-3229-4cd8-9892-d1b05e41fe50', '1201', '干', '保1', '1', '201', '2016-8-17', null, null, null, null, '2016-8-17/15:0:35');
INSERT INTO `分户验收` VALUES ('458', '4d9bfdab-eba3-4a3b-8c4b-9a61cb4b04bd', 's401', '18855', '阿2', 's', '401', '2016-8-22', null, null, null, null, '2016-8-22/15:14:51');
INSERT INTO `分户验收` VALUES ('459', '2091d7a1-5479-49f0-b037-3645c036f906', 'A203', '858888', '阿1,阿2', 'A', '203', '2016-8-25', null, '~*^*~F301.png', null, null, '2016-8-25/16:19:13');
INSERT INTO `分户验收` VALUES ('460', '6583e183-8824-4b1b-8291-c2622b920098', 'A204', 'rghjgfgh', '阿1', 'A', '204', '2016-8-29', null, '~*^*~F301.png', null, null, '2016-8-29/15:7:2');
INSERT INTO `分户验收` VALUES ('461', '6c39d755-f546-4835-8e24-a9080b7f8a20', 'A201', 'fvdf', '阿4', 'A', '201', '2016-8-30', null, null, null, null, '2016-8-30/15:37:39');
INSERT INTO `分户验收` VALUES ('462', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', 'A191', '分户验收', '阿1', 'A', '191', '2016-7-4', null, null, null, null, '2016-9-6/10:9:25');
INSERT INTO `分户验收` VALUES ('463', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', 'A192', '分户验收', '阿1', 'A', '192', '2016-7-4', null, null, null, null, '2016-9-6/10:9:25');
INSERT INTO `分户验收` VALUES ('464', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', 'A202', '分户验收', '阿1', 'A', '202', '2016-7-4', null, null, null, null, '2016-9-6/10:9:25');
INSERT INTO `分户验收` VALUES ('465', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', 'A211', '分户验收', '阿1', 'A', '211', '2016-7-4', null, null, null, null, '2016-9-6/10:9:25');
INSERT INTO `分户验收` VALUES ('466', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', 'A212', '分户验收', '阿1', 'A', '212', '2016-7-4', null, null, null, null, '2016-9-6/10:9:25');
INSERT INTO `分户验收` VALUES ('467', 'dc799599-31b1-43f5-94e3-5592b8493508', 'f208', 'ddccv', '阿1', 'f', '208', '2016-9-6', null, '~*^*~F301.png', null, null, '2016-9-6/10:10:13');
INSERT INTO `分户验收` VALUES ('468', '69ddd335-130f-42da-a412-ec9932022b9e', 'G306', '娃儿', '阿1,阿2', 'G', '306', '2016-9-6', null, '~*^*~1473150348377.jpg', null, null, '2016-9-6/16:25:44');

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
) ENGINE=InnoDB AUTO_INCREMENT=530 DEFAULT CHARSET=utf8;

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
INSERT INTO `测点列表` VALUES ('232', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '墙面阴阳角方正', 'E1', '50', '', '2016-7-21/16:47:55', '', '');
INSERT INTO `测点列表` VALUES ('233', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '墙面阴阳角方正', 'E2', '5', '', '2016-7-21/16:47:55', '', '');
INSERT INTO `测点列表` VALUES ('234', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '墙面阴阳角方正', 'E3', '4', '', '2016-7-21/16:47:55', '', '');
INSERT INTO `测点列表` VALUES ('235', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '墙面阴阳角方正', 'E4', '', '', '2016-7-21/16:47:55', '', '');
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
INSERT INTO `测点列表` VALUES ('381', '3be03dcb-b5b8-4232-9636-bfd4b695a3c3', '341', '地面平整度', 'A1', '4', '', '2016-8-13/11:2:3', '239px', '166px');
INSERT INTO `测点列表` VALUES ('382', '3be03dcb-b5b8-4232-9636-bfd4b695a3c3', '341', '地面平整度', 'A2', '2', '', '2016-8-13/11:2:3', '250.547px', '64.438px');
INSERT INTO `测点列表` VALUES ('383', '3be03dcb-b5b8-4232-9636-bfd4b695a3c3', '341', '地面平整度', 'A3', '', '', '2016-8-13/11:2:3', '', '');
INSERT INTO `测点列表` VALUES ('384', '3be03dcb-b5b8-4232-9636-bfd4b695a3c3', '341', '地面平整度', 'A4', '', '', '2016-8-13/11:2:3', '', '');
INSERT INTO `测点列表` VALUES ('385', '3be03dcb-b5b8-4232-9636-bfd4b695a3c3', '341', '地面平整度', 'A5', '', '', '2016-8-13/11:2:3', '', '');
INSERT INTO `测点列表` VALUES ('386', '3be03dcb-b5b8-4232-9636-bfd4b695a3c3', '341', '地面平整度', 'A6', '', '', '2016-8-13/11:2:3', '', '');
INSERT INTO `测点列表` VALUES ('387', '3be03dcb-b5b8-4232-9636-bfd4b695a3c3', '341', '地面平整度', 'A7', '', '', '2016-8-13/11:2:4', '', '');
INSERT INTO `测点列表` VALUES ('388', '3be03dcb-b5b8-4232-9636-bfd4b695a3c3', '341', '地面平整度', 'A8', '', '', '2016-8-13/11:2:4', '', '');
INSERT INTO `测点列表` VALUES ('389', '3be03dcb-b5b8-4232-9636-bfd4b695a3c3', '341', '地面平整度', 'A9', '', '', '2016-8-13/11:2:4', '', '');
INSERT INTO `测点列表` VALUES ('390', '3be03dcb-b5b8-4232-9636-bfd4b695a3c3', '341', '地面平整度', 'A10', '', '', '2016-8-13/11:2:4', '', '');
INSERT INTO `测点列表` VALUES ('391', '3be03dcb-b5b8-4232-9636-bfd4b695a3c3', '341', '地面平整度', 'A11', '', '', '2016-8-13/11:2:4', '', '');
INSERT INTO `测点列表` VALUES ('392', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '385', '墙面平整度', 'C1', '5', '', '2016-8-15/10:44:0', '215px', '84px');
INSERT INTO `测点列表` VALUES ('393', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '385', '墙面平整度', 'C2', '6', '', '2016-8-15/10:44:0', '74px', '105px');
INSERT INTO `测点列表` VALUES ('394', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '385', '墙面平整度', 'C3', '4', '', '2016-8-15/10:44:0', '223px', '213px');
INSERT INTO `测点列表` VALUES ('395', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '385', '墙面平整度', 'C4', '', '', '2016-8-15/10:44:0', '86px', '203px');
INSERT INTO `测点列表` VALUES ('396', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '385', '墙面平整度', 'C5', '', '', '2016-8-15/10:44:0', '', '');
INSERT INTO `测点列表` VALUES ('397', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '385', '墙面平整度', 'C6', '', '', '2016-8-15/10:44:0', '', '');
INSERT INTO `测点列表` VALUES ('398', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '385', '墙面平整度', 'C7', '', '', '2016-8-15/10:44:0', '', '');
INSERT INTO `测点列表` VALUES ('399', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '385', '墙面平整度', 'C8', '', '', '2016-8-15/10:44:0', '', '');
INSERT INTO `测点列表` VALUES ('400', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '385', '墙面平整度', 'C9', '', '', '2016-8-15/10:44:0', '', '');
INSERT INTO `测点列表` VALUES ('401', 'e3ac44e5-7aff-41b7-a71d-54a6ae9d3558', '385', '墙面平整度', 'C10', '', '', '2016-8-15/10:44:0', '', '');
INSERT INTO `测点列表` VALUES ('402', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '453', '地面平整度', 'A1', '5', '', '2016-8-15/16:13:54', null, null);
INSERT INTO `测点列表` VALUES ('403', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '453', '地面平整度', 'A2', '4', '', '2016-8-15/16:13:54', null, null);
INSERT INTO `测点列表` VALUES ('404', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '453', '地面平整度', 'A3', '', '', '2016-8-15/16:13:54', null, null);
INSERT INTO `测点列表` VALUES ('405', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '453', '地面平整度', 'A4', '', '', '2016-8-15/16:13:54', null, null);
INSERT INTO `测点列表` VALUES ('406', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '453', '地面平整度', 'A5', '', '', '2016-8-15/16:13:54', null, null);
INSERT INTO `测点列表` VALUES ('407', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '453', '地面平整度', 'A6', '', '', '2016-8-15/16:13:54', null, null);
INSERT INTO `测点列表` VALUES ('408', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '453', '地面平整度', 'A7', '', '', '2016-8-15/16:13:54', null, null);
INSERT INTO `测点列表` VALUES ('409', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '453', '地面平整度', 'A8', '', '', '2016-8-15/16:13:54', null, null);
INSERT INTO `测点列表` VALUES ('410', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '453', '地面平整度', 'A9', '', '', '2016-8-15/16:13:54', null, null);
INSERT INTO `测点列表` VALUES ('411', 'beca5dc7-c37a-443c-95f9-5d963da2aebd', '453', '地面平整度', 'A10', '', '', '2016-8-15/16:13:54', null, null);
INSERT INTO `测点列表` VALUES ('412', '3be03dcb-b5b8-4232-9636-bfd4b695a3c3', '455', '墙面平整度', 'C1', '5', '', '2016-8-16/8:41:58', '218.818px', '78.656px');
INSERT INTO `测点列表` VALUES ('413', '3be03dcb-b5b8-4232-9636-bfd4b695a3c3', '455', '墙面平整度', 'C2', '3', '', '2016-8-16/8:41:58', '194.824px', '173.188px');
INSERT INTO `测点列表` VALUES ('414', '3be03dcb-b5b8-4232-9636-bfd4b695a3c3', '455', '墙面平整度', 'C3', '', '', '2016-8-16/8:41:58', '104.539px', '91.576px');
INSERT INTO `测点列表` VALUES ('415', '3be03dcb-b5b8-4232-9636-bfd4b695a3c3', '455', '墙面平整度', 'C4', '', '', '2016-8-16/8:41:58', '144.171px', '195.219px');
INSERT INTO `测点列表` VALUES ('416', '3be03dcb-b5b8-4232-9636-bfd4b695a3c3', '455', '墙面平整度', 'C5', '', '', '2016-8-16/8:41:58', '', '');
INSERT INTO `测点列表` VALUES ('417', '3be03dcb-b5b8-4232-9636-bfd4b695a3c3', '455', '墙面平整度', 'C6', '', '', '2016-8-16/8:41:58', '', '');
INSERT INTO `测点列表` VALUES ('418', '3be03dcb-b5b8-4232-9636-bfd4b695a3c3', '455', '墙面平整度', 'C7', '', '', '2016-8-16/8:41:58', '', '');
INSERT INTO `测点列表` VALUES ('419', '3be03dcb-b5b8-4232-9636-bfd4b695a3c3', '455', '墙面平整度', 'C8', '', '', '2016-8-16/8:41:58', '', '');
INSERT INTO `测点列表` VALUES ('420', '3be03dcb-b5b8-4232-9636-bfd4b695a3c3', '455', '墙面平整度', 'C9', '', '', '2016-8-16/8:41:58', '', '');
INSERT INTO `测点列表` VALUES ('421', '3be03dcb-b5b8-4232-9636-bfd4b695a3c3', '455', '墙面平整度', 'C10', '', '', '2016-8-16/8:41:58', '', '');
INSERT INTO `测点列表` VALUES ('422', '2091d7a1-5479-49f0-b037-3645c036f906', '456', '地面平整度', 'A1', '3', '', '2016-8-16/15:32:28', '218.261px', '166.174px');
INSERT INTO `测点列表` VALUES ('423', '2091d7a1-5479-49f0-b037-3645c036f906', '456', '地面平整度', 'A2', '5', '', '2016-8-16/15:32:28', '240.021px', '56.429px');
INSERT INTO `测点列表` VALUES ('424', '2091d7a1-5479-49f0-b037-3645c036f906', '456', '地面平整度', 'A3', '-2', '', '2016-8-16/15:32:28', '', '');
INSERT INTO `测点列表` VALUES ('425', '2091d7a1-5479-49f0-b037-3645c036f906', '456', '地面平整度', 'A4', '', '', '2016-8-16/15:32:29', '', '');
INSERT INTO `测点列表` VALUES ('426', '2091d7a1-5479-49f0-b037-3645c036f906', '456', '地面平整度', 'A5', '', '', '2016-8-16/15:32:29', '', '');
INSERT INTO `测点列表` VALUES ('427', '2091d7a1-5479-49f0-b037-3645c036f906', '456', '地面平整度', 'A6', '', '', '2016-8-16/15:32:29', '', '');
INSERT INTO `测点列表` VALUES ('428', '2091d7a1-5479-49f0-b037-3645c036f906', '456', '地面平整度', 'A7', '', '', '2016-8-16/15:32:29', '', '');
INSERT INTO `测点列表` VALUES ('429', '2091d7a1-5479-49f0-b037-3645c036f906', '456', '地面平整度', 'A8', '', '', '2016-8-16/15:32:29', '', '');
INSERT INTO `测点列表` VALUES ('430', '2091d7a1-5479-49f0-b037-3645c036f906', '456', '地面平整度', 'A9', '', '', '2016-8-16/15:32:29', '', '');
INSERT INTO `测点列表` VALUES ('431', '2091d7a1-5479-49f0-b037-3645c036f906', '456', '地面平整度', 'A10', '', '', '2016-8-16/15:32:29', '', '');
INSERT INTO `测点列表` VALUES ('432', '2091d7a1-5479-49f0-b037-3645c036f906', '456', '地面平整度', 'A11', '', '', '2016-8-16/15:32:29', '', '');
INSERT INTO `测点列表` VALUES ('433', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '339', '垂直度', 'D1', '6', '', '2016-8-17/11:17:8', '160.415px', '217.172px');
INSERT INTO `测点列表` VALUES ('434', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '339', '垂直度', 'D2', '', '', '2016-8-17/11:17:8', '', '');
INSERT INTO `测点列表` VALUES ('435', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '339', '垂直度', 'D3', '', '', '2016-8-17/11:17:8', '', '');
INSERT INTO `测点列表` VALUES ('436', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '339', '垂直度', 'D4', '', '', '2016-8-17/11:17:8', '', '');
INSERT INTO `测点列表` VALUES ('437', '650f9b91-e6d9-41a4-a5ef-86baa436e5af', '339', '垂直度', 'D5', '', '', '2016-8-17/11:17:8', '', '');
INSERT INTO `测点列表` VALUES ('438', '966bad11-3229-4cd8-9892-d1b05e41fe50', '457', '垂直度', 'D1', '5', '', '2016-8-17/15:0:9', null, null);
INSERT INTO `测点列表` VALUES ('439', '966bad11-3229-4cd8-9892-d1b05e41fe50', '457', '垂直度', 'D2', '4', '', '2016-8-17/15:0:9', null, null);
INSERT INTO `测点列表` VALUES ('440', '966bad11-3229-4cd8-9892-d1b05e41fe50', '457', '垂直度', 'D3', '', '', '2016-8-17/15:0:9', null, null);
INSERT INTO `测点列表` VALUES ('441', '966bad11-3229-4cd8-9892-d1b05e41fe50', '457', '垂直度', 'D4', '', '', '2016-8-17/15:0:9', null, null);
INSERT INTO `测点列表` VALUES ('442', '966bad11-3229-4cd8-9892-d1b05e41fe50', '457', '垂直度', 'D5', '', '', '2016-8-17/15:0:9', null, null);
INSERT INTO `测点列表` VALUES ('443', '966bad11-3229-4cd8-9892-d1b05e41fe50', '457', '垂直度', 'D6', '', '', '2016-8-17/15:0:9', null, null);
INSERT INTO `测点列表` VALUES ('444', '966bad11-3229-4cd8-9892-d1b05e41fe50', '457', '垂直度', 'D7', '', '', '2016-8-17/15:0:9', null, null);
INSERT INTO `测点列表` VALUES ('445', '966bad11-3229-4cd8-9892-d1b05e41fe50', '457', '垂直度', 'D8', '', '', '2016-8-17/15:0:9', null, null);
INSERT INTO `测点列表` VALUES ('446', '966bad11-3229-4cd8-9892-d1b05e41fe50', '457', '垂直度', 'D9', '', '', '2016-8-17/15:0:9', null, null);
INSERT INTO `测点列表` VALUES ('447', '966bad11-3229-4cd8-9892-d1b05e41fe50', '457', '垂直度', 'D10', '', '', '2016-8-17/15:0:9', null, null);
INSERT INTO `测点列表` VALUES ('448', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '地面平整度', 'A1', '5', '', '2016-8-18/14:59:31', '258px', '122px');
INSERT INTO `测点列表` VALUES ('449', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '地面平整度', 'A2', '', '', '2016-8-18/14:59:32', '66px', '211px');
INSERT INTO `测点列表` VALUES ('450', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '地面平整度', 'A3', '', '', '2016-8-18/14:59:32', '83px', '106px');
INSERT INTO `测点列表` VALUES ('451', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '地面平整度', 'A4', '', '', '2016-8-18/14:59:32', '198px', '235px');
INSERT INTO `测点列表` VALUES ('452', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '地面平整度', 'A5', '', '', '2016-8-18/14:59:32', '', '');
INSERT INTO `测点列表` VALUES ('453', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '地面平整度', 'A6', '', '', '2016-8-18/14:59:32', '', '');
INSERT INTO `测点列表` VALUES ('454', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '地面平整度', 'A7', '', '', '2016-8-18/14:59:32', '', '');
INSERT INTO `测点列表` VALUES ('455', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '地面平整度', 'A8', '', '', '2016-8-18/14:59:32', '', '');
INSERT INTO `测点列表` VALUES ('456', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '地面平整度', 'A9', '', '', '2016-8-18/14:59:32', '', '');
INSERT INTO `测点列表` VALUES ('457', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '地面平整度', 'A10', '', '', '2016-8-18/14:59:32', '', '');
INSERT INTO `测点列表` VALUES ('458', '2091d7a1-5479-49f0-b037-3645c036f906', '459', '地面平整度', 'A1', '3', '', '2016-8-25/16:20:22', '140.244px', '163.5px');
INSERT INTO `测点列表` VALUES ('459', '2091d7a1-5479-49f0-b037-3645c036f906', '459', '地面平整度', 'A2', '-3', '', '2016-8-25/16:20:22', '221.279px', '176.559px');
INSERT INTO `测点列表` VALUES ('460', '2091d7a1-5479-49f0-b037-3645c036f906', '459', '地面平整度', 'A3', '', '', '2016-8-25/16:20:22', '', '');
INSERT INTO `测点列表` VALUES ('461', '2091d7a1-5479-49f0-b037-3645c036f906', '459', '地面平整度', 'A4', '', '', '2016-8-25/16:20:22', '', '');
INSERT INTO `测点列表` VALUES ('462', '2091d7a1-5479-49f0-b037-3645c036f906', '459', '地面平整度', 'A5', '', '', '2016-8-25/16:20:22', '', '');
INSERT INTO `测点列表` VALUES ('463', '2091d7a1-5479-49f0-b037-3645c036f906', '459', '地面平整度', 'A6', '', '', '2016-8-25/16:20:22', '', '');
INSERT INTO `测点列表` VALUES ('464', '2091d7a1-5479-49f0-b037-3645c036f906', '459', '地面平整度', 'A7', '', '', '2016-8-25/16:20:22', '', '');
INSERT INTO `测点列表` VALUES ('465', '2091d7a1-5479-49f0-b037-3645c036f906', '459', '地面平整度', 'A8', '', '', '2016-8-25/16:20:22', '', '');
INSERT INTO `测点列表` VALUES ('466', '2091d7a1-5479-49f0-b037-3645c036f906', '459', '地面平整度', 'A9', '', '', '2016-8-25/16:20:22', '', '');
INSERT INTO `测点列表` VALUES ('467', '2091d7a1-5479-49f0-b037-3645c036f906', '459', '地面平整度', 'A10', '', '', '2016-8-25/16:20:22', '', '');
INSERT INTO `测点列表` VALUES ('468', '2091d7a1-5479-49f0-b037-3645c036f906', '459', '地面平整度', 'A11', '', '', '2016-8-25/16:20:22', '', '');
INSERT INTO `测点列表` VALUES ('469', '2091d7a1-5479-49f0-b037-3645c036f906', '459', '地面平整度', 'A12', '', '', '2016-8-25/16:20:22', '', '');
INSERT INTO `测点列表` VALUES ('470', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '垂直度', 'D1', '', '', '2016-8-29/10:0:44', null, null);
INSERT INTO `测点列表` VALUES ('471', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '垂直度', 'D2', '2.4', '', '2016-8-29/10:0:44', null, null);
INSERT INTO `测点列表` VALUES ('472', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '垂直度', 'D3', '', '', '2016-8-29/10:0:44', null, null);
INSERT INTO `测点列表` VALUES ('473', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '垂直度', 'D4', '', '', '2016-8-29/10:0:44', null, null);
INSERT INTO `测点列表` VALUES ('474', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '垂直度', 'D5', '', '', '2016-8-29/10:0:44', null, null);
INSERT INTO `测点列表` VALUES ('475', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '垂直度', 'D6', '', '', '2016-8-29/10:0:44', null, null);
INSERT INTO `测点列表` VALUES ('476', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '垂直度', 'D7', '', '', '2016-8-29/10:0:44', null, null);
INSERT INTO `测点列表` VALUES ('477', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '垂直度', 'D8', '', '', '2016-8-29/10:0:44', null, null);
INSERT INTO `测点列表` VALUES ('478', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '垂直度', 'D9', '', '', '2016-8-29/10:0:44', null, null);
INSERT INTO `测点列表` VALUES ('479', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '204', '垂直度', 'D10', '', '', '2016-8-29/10:0:44', null, null);
INSERT INTO `测点列表` VALUES ('480', '6583e183-8824-4b1b-8291-c2622b920098', '460', '墙面平整度', 'C1', '3', '', '2016-8-29/15:8:30', null, null);
INSERT INTO `测点列表` VALUES ('481', '6583e183-8824-4b1b-8291-c2622b920098', '460', '墙面平整度', 'C2', '-2', '', '2016-8-29/15:8:30', null, null);
INSERT INTO `测点列表` VALUES ('482', '6583e183-8824-4b1b-8291-c2622b920098', '460', '墙面平整度', 'C3', '', '', '2016-8-29/15:8:30', null, null);
INSERT INTO `测点列表` VALUES ('483', '6583e183-8824-4b1b-8291-c2622b920098', '460', '墙面平整度', 'C4', '', '', '2016-8-29/15:8:30', null, null);
INSERT INTO `测点列表` VALUES ('484', '6583e183-8824-4b1b-8291-c2622b920098', '460', '墙面平整度', 'C5', '', '', '2016-8-29/15:8:30', null, null);
INSERT INTO `测点列表` VALUES ('485', '6583e183-8824-4b1b-8291-c2622b920098', '460', '墙面平整度', 'C6', '', '', '2016-8-29/15:8:30', null, null);
INSERT INTO `测点列表` VALUES ('486', '6583e183-8824-4b1b-8291-c2622b920098', '460', '墙面平整度', 'C7', '', '', '2016-8-29/15:8:30', null, null);
INSERT INTO `测点列表` VALUES ('487', '6583e183-8824-4b1b-8291-c2622b920098', '460', '墙面平整度', 'C8', '', '', '2016-8-29/15:8:30', null, null);
INSERT INTO `测点列表` VALUES ('488', '6583e183-8824-4b1b-8291-c2622b920098', '460', '墙面平整度', 'C9', '', '', '2016-8-29/15:8:30', null, null);
INSERT INTO `测点列表` VALUES ('489', '6583e183-8824-4b1b-8291-c2622b920098', '460', '墙面平整度', 'C10', '', '', '2016-8-29/15:8:30', null, null);
INSERT INTO `测点列表` VALUES ('490', '6c39d755-f546-4835-8e24-a9080b7f8a20', '461', '墙面平整度', 'C1', '5', '', '2016-8-30/15:38:56', '99.214px', '166.18px');
INSERT INTO `测点列表` VALUES ('491', '6c39d755-f546-4835-8e24-a9080b7f8a20', '461', '墙面平整度', 'C2', '', '', '2016-8-30/15:38:56', '240.083px', '170.178px');
INSERT INTO `测点列表` VALUES ('492', '6c39d755-f546-4835-8e24-a9080b7f8a20', '461', '墙面平整度', 'C3', '', '', '2016-8-30/15:38:56', '', '');
INSERT INTO `测点列表` VALUES ('493', '6c39d755-f546-4835-8e24-a9080b7f8a20', '461', '墙面平整度', 'C4', '', '', '2016-8-30/15:38:56', '', '');
INSERT INTO `测点列表` VALUES ('494', '6c39d755-f546-4835-8e24-a9080b7f8a20', '461', '墙面平整度', 'C5', '', '', '2016-8-30/15:38:56', '', '');
INSERT INTO `测点列表` VALUES ('495', '6c39d755-f546-4835-8e24-a9080b7f8a20', '461', '墙面平整度', 'C6', '', '', '2016-8-30/15:38:56', '', '');
INSERT INTO `测点列表` VALUES ('496', '6c39d755-f546-4835-8e24-a9080b7f8a20', '461', '墙面平整度', 'C7', '', '', '2016-8-30/15:38:56', '', '');
INSERT INTO `测点列表` VALUES ('497', '6c39d755-f546-4835-8e24-a9080b7f8a20', '461', '墙面平整度', 'C8', '', '', '2016-8-30/15:38:56', '', '');
INSERT INTO `测点列表` VALUES ('498', '6c39d755-f546-4835-8e24-a9080b7f8a20', '461', '墙面平整度', 'C9', '', '', '2016-8-30/15:38:56', '', '');
INSERT INTO `测点列表` VALUES ('499', '6c39d755-f546-4835-8e24-a9080b7f8a20', '461', '墙面平整度', 'C10', '', '', '2016-8-30/15:38:56', '', '');
INSERT INTO `测点列表` VALUES ('500', '387d1073-e5f7-4c02-86b4-7b68e4e93edd', '205', '墙面平整度', 'C3', '', '', '2016-9-5/15:32:14', null, null);
INSERT INTO `测点列表` VALUES ('501', '387d1073-e5f7-4c02-86b4-7b68e4e93edd', '205', '墙面平整度', 'C4', '', '', '2016-9-5/15:32:14', null, null);
INSERT INTO `测点列表` VALUES ('502', '387d1073-e5f7-4c02-86b4-7b68e4e93edd', '205', '墙面平整度', 'C5', '', '', '2016-9-5/15:32:14', null, null);
INSERT INTO `测点列表` VALUES ('503', '387d1073-e5f7-4c02-86b4-7b68e4e93edd', '205', '墙面平整度', 'C6', '', '', '2016-9-5/15:32:14', null, null);
INSERT INTO `测点列表` VALUES ('504', '387d1073-e5f7-4c02-86b4-7b68e4e93edd', '205', '墙面平整度', 'C7', '', '', '2016-9-5/15:32:14', null, null);
INSERT INTO `测点列表` VALUES ('505', '387d1073-e5f7-4c02-86b4-7b68e4e93edd', '205', '墙面平整度', 'C8', '', '', '2016-9-5/15:32:14', null, null);
INSERT INTO `测点列表` VALUES ('506', '387d1073-e5f7-4c02-86b4-7b68e4e93edd', '205', '墙面平整度', 'C9', '', '', '2016-9-5/15:32:14', null, null);
INSERT INTO `测点列表` VALUES ('507', '387d1073-e5f7-4c02-86b4-7b68e4e93edd', '205', '墙面平整度', 'C10', '', '', '2016-9-5/15:32:14', null, null);
INSERT INTO `测点列表` VALUES ('508', '387d1073-e5f7-4c02-86b4-7b68e4e93edd', '205', '墙面平整度', 'C11', '', '', '2016-9-5/15:32:14', null, null);
INSERT INTO `测点列表` VALUES ('509', '387d1073-e5f7-4c02-86b4-7b68e4e93edd', '205', '墙面平整度', 'C12', '', '', '2016-9-5/15:32:14', null, null);
INSERT INTO `测点列表` VALUES ('510', 'dc799599-31b1-43f5-94e3-5592b8493508', '467', '墙面平整度', 'C1', '', '', '2016-9-6/10:11:42', null, null);
INSERT INTO `测点列表` VALUES ('511', 'dc799599-31b1-43f5-94e3-5592b8493508', '467', '墙面平整度', 'C2', '', '', '2016-9-6/10:11:42', null, null);
INSERT INTO `测点列表` VALUES ('512', 'dc799599-31b1-43f5-94e3-5592b8493508', '467', '墙面平整度', 'C3', '', '', '2016-9-6/10:11:43', null, null);
INSERT INTO `测点列表` VALUES ('513', 'dc799599-31b1-43f5-94e3-5592b8493508', '467', '墙面平整度', 'C4', '', '', '2016-9-6/10:11:43', null, null);
INSERT INTO `测点列表` VALUES ('514', 'dc799599-31b1-43f5-94e3-5592b8493508', '467', '墙面平整度', 'C5', '', '', '2016-9-6/10:11:43', null, null);
INSERT INTO `测点列表` VALUES ('515', 'dc799599-31b1-43f5-94e3-5592b8493508', '467', '墙面平整度', 'C6', '', '', '2016-9-6/10:11:43', null, null);
INSERT INTO `测点列表` VALUES ('516', 'dc799599-31b1-43f5-94e3-5592b8493508', '467', '墙面平整度', 'C7', '', '', '2016-9-6/10:11:43', null, null);
INSERT INTO `测点列表` VALUES ('517', 'dc799599-31b1-43f5-94e3-5592b8493508', '467', '墙面平整度', 'C8', '', '', '2016-9-6/10:11:43', null, null);
INSERT INTO `测点列表` VALUES ('518', 'dc799599-31b1-43f5-94e3-5592b8493508', '467', '墙面平整度', 'C9', '', '', '2016-9-6/10:11:43', null, null);
INSERT INTO `测点列表` VALUES ('519', 'dc799599-31b1-43f5-94e3-5592b8493508', '467', '墙面平整度', 'C10', '', '', '2016-9-6/10:11:43', null, null);
INSERT INTO `测点列表` VALUES ('520', '69ddd335-130f-42da-a412-ec9932022b9e', '468', '墙面平整度', 'C1', '2', '', '2016-9-6/16:27:14', '229px', '156px');
INSERT INTO `测点列表` VALUES ('521', '69ddd335-130f-42da-a412-ec9932022b9e', '468', '墙面平整度', 'C2', '-3', '', '2016-9-6/16:27:14', '83px', '145px');
INSERT INTO `测点列表` VALUES ('522', '69ddd335-130f-42da-a412-ec9932022b9e', '468', '墙面平整度', 'C3', '5', '', '2016-9-6/16:27:14', '246px', '44px');
INSERT INTO `测点列表` VALUES ('523', '69ddd335-130f-42da-a412-ec9932022b9e', '468', '墙面平整度', 'C4', '', '', '2016-9-6/16:27:14', '', '');
INSERT INTO `测点列表` VALUES ('524', '69ddd335-130f-42da-a412-ec9932022b9e', '468', '墙面平整度', 'C5', '', '', '2016-9-6/16:27:14', '', '');
INSERT INTO `测点列表` VALUES ('525', '69ddd335-130f-42da-a412-ec9932022b9e', '468', '墙面平整度', 'C6', '', '', '2016-9-6/16:27:14', '', '');
INSERT INTO `测点列表` VALUES ('526', '69ddd335-130f-42da-a412-ec9932022b9e', '468', '墙面平整度', 'C7', '', '', '2016-9-6/16:27:14', '', '');
INSERT INTO `测点列表` VALUES ('527', '69ddd335-130f-42da-a412-ec9932022b9e', '468', '墙面平整度', 'C8', '', '', '2016-9-6/16:27:14', '', '');
INSERT INTO `测点列表` VALUES ('528', '69ddd335-130f-42da-a412-ec9932022b9e', '468', '墙面平整度', 'C9', '', '', '2016-9-6/16:27:14', '', '');
INSERT INTO `测点列表` VALUES ('529', '69ddd335-130f-42da-a412-ec9932022b9e', '468', '墙面平整度', 'C10', '', '', '2016-9-6/16:27:14', '', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;

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
INSERT INTO `用户信息` VALUES ('125', '125020514', 'zla1314520', '125020514@qq.com', '18676415528');
INSERT INTO `用户信息` VALUES ('126', '123456', '123456', '1327794681@qq.com', '18219013053');
INSERT INTO `用户信息` VALUES ('127', '343102246', '369852', '343102246@qq.com', '18825811483');
INSERT INTO `用户信息` VALUES ('128', 'hongrun2016', '838605', '752746439@qq.com', '15362728235');
INSERT INTO `用户信息` VALUES ('129', '9204167', '9204167', '9204167@QQ.COM', '18218954286');
INSERT INTO `用户信息` VALUES ('130', '121672526', 'wskfnaps0', '121672526@qq.com', '13928165061');
INSERT INTO `用户信息` VALUES ('131', 'jimidot2016', '123456', '593707046@qq.com', '18928108583');
INSERT INTO `用户信息` VALUES ('132', 'joxjrt', '5201314x', '383950294@qq.com', '13286378913');
INSERT INTO `用户信息` VALUES ('133', 'liuyun', '13318286335', '806675061@qq.com', '13318286335');
INSERT INTO `用户信息` VALUES ('134', '1315809037', '18955424942', '1315809037@@qq.com', '15395491745');
INSERT INTO `用户信息` VALUES ('135', '495736923', '0970462', '495736923@qq.com', '13450970462');
INSERT INTO `用户信息` VALUES ('136', '15622355493', '158130ljyab', '1527020828@qq.com', '15622355493');
INSERT INTO `用户信息` VALUES ('137', 'caq7777777', '940723csj', '315871372@qq.com', '18898777572');
INSERT INTO `用户信息` VALUES ('138', '201608', '123456', '870376827@qq.com', '13421406503');
INSERT INTO `用户信息` VALUES ('139', '13560638631', '253613', '70382101@qq.com', '13560638631');
INSERT INTO `用户信息` VALUES ('140', '1593879562', '@#hhx18124204459', '1593879562@qq.com', '15622354907');
INSERT INTO `用户信息` VALUES ('141', '1225507776', 'a123456789', '1225507776@qq.com', '13189235266');
INSERT INTO `用户信息` VALUES ('142', '1638329747', '1008susainan', '1638329747@qq.com', '18274199862');
INSERT INTO `用户信息` VALUES ('143', '19920120', 'WZZ1391918952', '962773394@qq.com', '15860620037');
INSERT INTO `用户信息` VALUES ('144', 'fuxudong', '123456789', '1186600923@qq.com', '18680171679');
INSERT INTO `用户信息` VALUES ('145', 'sunyanping', 'sunyanping', '632730569@qq.com', '18300058860');
INSERT INTO `用户信息` VALUES ('146', 'sunyanping333', 'sunyanping', '632730569@qq.com', '18300058860');
INSERT INTO `用户信息` VALUES ('147', '13420466365', 'yu13420466365', '953581051@qq.com', '13420466365');
INSERT INTO `用户信息` VALUES ('148', 'suSam', 'szj072519', '1007765453@QQ.com', '13512787455');
INSERT INTO `用户信息` VALUES ('149', '18688934462', '051918', '358334296@qq.com', '18688934462');
INSERT INTO `用户信息` VALUES ('150', 'z1011937', '123456', '1092872536@qq.com', '15183989239');
INSERT INTO `用户信息` VALUES ('151', '13822696956', '9zx754862', '673473728@qq.com', '13822696959');
INSERT INTO `用户信息` VALUES ('152', 'jyx0206', 'qweasdzxc', '609828908@qq.com', '13703030517');
INSERT INTO `用户信息` VALUES ('153', 'lidegejing', 'linjingheng', '1829007321@qq.com', '15323212398');
INSERT INTO `用户信息` VALUES ('154', '18191727076', '0123..', '363453294@qq.com', '18191727076');
INSERT INTO `用户信息` VALUES ('155', '645776125', 'lhm780213@', '645776125@qq.com', '13560624590');
INSERT INTO `用户信息` VALUES ('156', '18824956782', '020510', '674513515@qq.com', '18824956782');
INSERT INTO `用户信息` VALUES ('157', '美茵888', '7798tingKENlu', '75521746@qq.com', '13702311777');
INSERT INTO `用户信息` VALUES ('158', '15089920923', '15089920923', '267139176@qq.com', '15089920923');
INSERT INTO `用户信息` VALUES ('159', '13420456691', '111222', '330832587@qq.com', '13420456691');
INSERT INTO `用户信息` VALUES ('160', '15089914662', '1980052000f', '752402970@qq.com', '15089914662');
INSERT INTO `用户信息` VALUES ('161', '13380884122', 'yanghuaguo131480', '1101964335@qq.com', '13380884122');
INSERT INTO `用户信息` VALUES ('162', 'longchang', '88558213', '82319564@qq.com', '13590999714');
INSERT INTO `用户信息` VALUES ('163', '领尚阳光家园一期工程', 'ls141016', '1185237058@qq.com', '18825092351');
INSERT INTO `用户信息` VALUES ('164', '18676114516', '5687061', '181984609@qq.com', '18676114516');
INSERT INTO `用户信息` VALUES ('165', '陈陈陈陈陈', '123456', '1390847147@qq.com', '13823593597');
INSERT INTO `用户信息` VALUES ('166', 'weijinhuan', '5687062wjh', 'weijinhuan@126.com', '13500052575');
INSERT INTO `用户信息` VALUES ('167', 'lusaih', '1116930lusaih', 'lusaih@163.com', '18068150228');
INSERT INTO `用户信息` VALUES ('168', 'connie99', 'connie99', '769866155@QQ.com', '13542197375');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 组员信息
-- ----------------------------
INSERT INTO `组员信息` VALUES ('1', '1470494132300', '小孩', '老板', '18988583168', '5677', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '台山XX项目', '2016-8-6/22:35:36');
INSERT INTO `组员信息` VALUES ('2', '1470494164836', '大人', '456', '15298336317', '5678', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '台山XX项目', '2016-8-6/22:36:9');
INSERT INTO `组员信息` VALUES ('3', '1471014253721', '张群', '项目总工', '18988583166', '359349558@qq.com', '5e99b16c-7ba2-4548-b03f-caf13dddb485', '华发左岸公寓主体建安1', '2016-8-12/23:4:18');
INSERT INTO `组员信息` VALUES ('4', '1471014322232', '张群', '项目总工', '18988583166', '359349558@qq.com', '5e99b16c-7ba2-4548-b03f-caf13dddb485', '华发左岸公寓主体建安1', '2016-8-12/23:5:27');
INSERT INTO `组员信息` VALUES ('5', '1471014417393', '李军仪', '项目经理', '18988583163', '478673767@qq.com', '5e99b16c-7ba2-4548-b03f-caf13dddb485', '华发左岸公寓主体建安1', '2016-8-12/23:7:2');
INSERT INTO `组员信息` VALUES ('6', '1471015560077', '王剑', '资料员', '18988583168', '593707046@qq.com', '5e99b16c-7ba2-4548-b03f-caf13dddb485', '华发左岸公寓主体建安1', '2016-8-12/23:26:5');
INSERT INTO `组员信息` VALUES ('7', '1471142214296', '梁工', '项目总监', '18928108583', '359349558@qq.com', '5e99b16c-7ba2-4548-b03f-caf13dddb485', '华发左岸公寓主体建安1', '2016-8-14/10:36:55');
INSERT INTO `组员信息` VALUES ('9', '1472115580136', '王剑', '', '18988583168', '', '2091d7a1-5479-49f0-b037-3645c036f906', '深圳市鲁班大厦工程项目', '2016-8-25/16:59:45');
INSERT INTO `组员信息` VALUES ('10', '1473128258879', '孟老师', '123', '123', '123123@', '0644bce1-88af-4a2d-98c9-bfe73c7df269', '台山XX项目', '2016-9-6/10:17:40');
