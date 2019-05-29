/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50623
Source Host           : localhost:3306
Source Database       : 同欣易送检

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2016-11-30 21:36:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pc_资料知识列表
-- ----------------------------
DROP TABLE IF EXISTS `pc_资料知识列表`;
CREATE TABLE `pc_资料知识列表` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `时间戳` varchar(100) DEFAULT NULL,
  `资料知识类型` varchar(100) DEFAULT NULL,
  `资料知识子类型` varchar(100) DEFAULT NULL,
  `表格名称` varchar(100) DEFAULT NULL,
  `表格编号` varchar(10) NOT NULL,
  `上传图片` text,
  `填表说明` text,
  `注意要点` text,
  `添加时间` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`表格编号`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pc_资料知识列表
-- ----------------------------
INSERT INTO `pc_资料知识列表` VALUES ('4', '1480512521735', '质量验收资料', '子类1', '单位（子单位）工程观感质量检查评定记录', 'GD403', '1480512521735.png,1480512521736.png,1480512521737.png,1480512521738.png,1480512521739.png,1480512521740.png,1480512521741.png', '<ol><li>填写过程中不可涂改；</li><li>严格按照相关标准格式；</li><li>内容真实。</li></ol>', '<ol><li>调理清晰；</li><li>层次分明；</li><li>简洁明了。</li></ol>', '2016-11-30/21:28:41');
INSERT INTO `pc_资料知识列表` VALUES ('5', '1480512681539', '质量验收资料', '子类1', '锤击混凝土预制桩、钢桩施工工艺试验记录表(A4)', 'GD2301011', '1480512681539.png', '<ul><li>填写过程中不可涂改；</li><li>严格按照相关标准格式；<br></li><li>内容真实。<br></li></ul>', '<ul><li>简洁明了</li><li>层次分明</li><li>调理清晰</li></ul>', '2016-11-30/21:31:21');
INSERT INTO `pc_资料知识列表` VALUES ('6', '1480512749744', '质量验收资料', '子类2', '钻(冲)孔灌注桩施工资料汇总表(A4)', 'GD2301021', '1480512749744.png', '<ul><li>后台编辑</li></ul>', '<ul><li>后台编辑</li></ul>', '2016-11-30/21:32:29');
INSERT INTO `pc_资料知识列表` VALUES ('7', '1480512811562', '质量验收资料', '子类2', '混凝土同条件养护试件日累计养护温度记录表', 'GD2301065', '1480512811562.png', '<ul><li>后台编辑</li><li>后台编辑</li><li>后台编辑</li></ul>', '<ul><li>后台编辑</li><li>后台编辑</li><li>后台编辑</li></ul>', '2016-11-30/21:33:31');
INSERT INTO `pc_资料知识列表` VALUES ('8', '1480512859727', '质量验收资料', '子类3', '钢筋安装工程检验批质量验收记录表(II)', 'GD24020105', '1480512859727.png', '<ul><li>GD24020105</li><li>GD24020105</li><li>GD24020105</li><li>GD24020105</li><li>GD24020105</li><li>GD24020105</li></ul>', '<ul><li>GD24020105</li><li>GD24020105</li><li>GD24020105</li><li>GD24020105</li><li>GD24020105</li><li>GD24020105</li></ul>', '2016-11-30/21:34:19');
INSERT INTO `pc_资料知识列表` VALUES ('9', '1480512902877', '质量验收资料', '子类3', '现浇混凝土结构观感质量及尺寸偏差检验批验收记录表(I)', 'GD24020112', '1480512902877.png', '<ul><li>GD24020112</li><li>GD24020112<br></li><li>GD24020112<br></li><li>GD24020112<br></li><li>GD24020112<br></li></ul>', '<ul><li>GD24020112</li><li>GD24020112<br></li><li>GD24020112<br></li><li>GD24020112<br></li><li>GD24020112</li></ul>', '2016-11-30/21:35:2');
