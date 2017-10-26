/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : elsdb

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-10-26 08:51:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for batch_courseware
-- ----------------------------
DROP TABLE IF EXISTS `batch_courseware`;
CREATE TABLE `batch_courseware` (
  `batch_courseware_id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_innformation_id` int(11) DEFAULT NULL,
  `courseware_id` int(11) DEFAULT NULL,
  `batch_name` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`batch_courseware_id`),
  KEY `courseware_id` (`courseware_id`),
  KEY `batch_innformation_id` (`batch_innformation_id`),
  CONSTRAINT `batch_courseware_ibfk_2` FOREIGN KEY (`courseware_id`) REFERENCES `courseware` (`courseware_id`),
  CONSTRAINT `batch_courseware_ibfk_3` FOREIGN KEY (`batch_innformation_id`) REFERENCES `batch_innformation` (`batch_innformation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of batch_courseware
-- ----------------------------
INSERT INTO `batch_courseware` VALUES ('1', '1', '5', '2016-2017-1');
INSERT INTO `batch_courseware` VALUES ('2', '2', '7', '2016-2017-2');
INSERT INTO `batch_courseware` VALUES ('3', '3', '8', '2016-2017-3');

-- ----------------------------
-- Table structure for batch_innformation
-- ----------------------------
DROP TABLE IF EXISTS `batch_innformation`;
CREATE TABLE `batch_innformation` (
  `batch_innformation_id` int(11) NOT NULL AUTO_INCREMENT,
  `starttime` datetime NOT NULL,
  `endtime` datetime NOT NULL,
  `score` varchar(255) NOT NULL,
  PRIMARY KEY (`batch_innformation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of batch_innformation
-- ----------------------------
INSERT INTO `batch_innformation` VALUES ('1', '2017-10-11 13:44:15', '2017-10-11 15:44:29', '5');
INSERT INTO `batch_innformation` VALUES ('2', '2017-10-11 21:46:22', '2017-10-11 22:46:26', '5');
INSERT INTO `batch_innformation` VALUES ('3', '2017-10-11 19:46:34', '2017-10-11 22:46:39', '5');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `course_code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '软件测试技术', '22');
INSERT INTO `course` VALUES ('2', '软件工程', '1222');
INSERT INTO `course` VALUES ('3', 'R语言', '1490007');

-- ----------------------------
-- Table structure for courseware
-- ----------------------------
DROP TABLE IF EXISTS `courseware`;
CREATE TABLE `courseware` (
  `courseware_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `credit` int(10) NOT NULL,
  `status` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`courseware_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `courseware_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of courseware
-- ----------------------------
INSERT INTO `courseware` VALUES ('5', '软件测试技术（一）', '/uploadResource/02afe791-a1d3-4aec-8120-2238c522a1e3.mp3', '0', '10', '-1', '1');
INSERT INTO `courseware` VALUES ('7', '软件测试技术（二）', '/uploadResource/15680a24-24dd-414f-8af9-451f94fddbbb.mp3', '0', '5', '-1', '1');
INSERT INTO `courseware` VALUES ('8', '软件工程（一）', '/uploadResource/17cc6ab1-a0a1-4afd-9726-e27e84965aa0.mp3', '0', '5', '-1', '2');
INSERT INTO `courseware` VALUES ('9', '软件测试技术（三）', '/uploadResource/88699f2d-6fa5-4c24-8b34-a2f2e5fc286b.mp4', '1', '11', '-1', '1');
INSERT INTO `courseware` VALUES ('10', '111', '/uploadResource/3027bf3a-4487-4897-ba10-9eb83d2548fa.mp3', '1', '1', '-1', '1');

-- ----------------------------
-- Table structure for learnrecord
-- ----------------------------
DROP TABLE IF EXISTS `learnrecord`;
CREATE TABLE `learnrecord` (
  `learnrecord_id` int(11) NOT NULL AUTO_INCREMENT,
  `studybatch_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `courseware_id` int(11) NOT NULL,
  `starttime` datetime NOT NULL,
  `endtime` datetime NOT NULL,
  PRIMARY KEY (`learnrecord_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of learnrecord
-- ----------------------------

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `mname` varchar(200) NOT NULL,
  `sortcode` int(11) NOT NULL DEFAULT '10',
  `url` varchar(200) DEFAULT NULL,
  `parent_id` int(200) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '学员管理', '0', '...', '0');
INSERT INTO `menu` VALUES ('2', '资源库管理', '0', '...', '0');
INSERT INTO `menu` VALUES ('3', '系统管理', '0', '...', '0');
INSERT INTO `menu` VALUES ('4', '其他管理', '0', '', '0');
INSERT INTO `menu` VALUES ('5', '我的培训', '0', 'jsp/learnrecordList.jsp', '1');
INSERT INTO `menu` VALUES ('6', '学员成绩', '0', ' ', '1');
INSERT INTO `menu` VALUES ('7', '课程管理', '30', '/selectAllCourse', '2');
INSERT INTO `menu` VALUES ('8', '课件管理', '20', '/selectAllCourseware', '2');
INSERT INTO `menu` VALUES ('9', '批次管理', '10', '/selectAllBatch', '2');
INSERT INTO `menu` VALUES ('10', '用户管理', '10', '/selectAllUser', '3');
INSERT INTO `menu` VALUES ('11', '角色管理', '10', '/selectAllRole', '3');
INSERT INTO `menu` VALUES ('13', '学习记录', '10', 'jsp/learnrecord.jsp', '1');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `rname` varchar(50) NOT NULL DEFAULT '' COMMENT 'Ã¨Â§ÂÃ¨ÂÂ²Ã¥ÂÂ',
  `rstatus` int(1) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '学员', '-1');
INSERT INTO `role` VALUES ('2', '管理员', '-1');
INSERT INTO `role` VALUES ('3', '开发人员', '-1');

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu` (
  `role_menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`role_menu_id`),
  KEY `role_id` (`role_id`),
  KEY `menu_id` (`menu_id`),
  CONSTRAINT `role_menu_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`),
  CONSTRAINT `role_menu_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES ('1', '1', '1');
INSERT INTO `role_menu` VALUES ('2', '5', '1');
INSERT INTO `role_menu` VALUES ('4', '2', '1');
INSERT INTO `role_menu` VALUES ('5', '7', '1');
INSERT INTO `role_menu` VALUES ('6', '8', '1');
INSERT INTO `role_menu` VALUES ('7', '9', '1');
INSERT INTO `role_menu` VALUES ('9', '13', '1');
INSERT INTO `role_menu` VALUES ('10', '1', '2');
INSERT INTO `role_menu` VALUES ('11', '5', '2');
INSERT INTO `role_menu` VALUES ('13', '2', '2');
INSERT INTO `role_menu` VALUES ('14', '7', '2');
INSERT INTO `role_menu` VALUES ('15', '8', '2');
INSERT INTO `role_menu` VALUES ('16', '9', '2');
INSERT INTO `role_menu` VALUES ('17', '3', '2');
INSERT INTO `role_menu` VALUES ('18', '10', '2');
INSERT INTO `role_menu` VALUES ('19', '11', '2');
INSERT INTO `role_menu` VALUES ('22', '13', '2');

-- ----------------------------
-- Table structure for role_user
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user` (
  `role_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`role_user_id`),
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `role_id` (`role_id`) USING BTREE,
  CONSTRAINT `role_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `role_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of role_user
-- ----------------------------
INSERT INTO `role_user` VALUES ('1', '1', '1');
INSERT INTO `role_user` VALUES ('2', '2', '2');
INSERT INTO `role_user` VALUES ('5', '1', '5');

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `score_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `score` int(255) DEFAULT NULL,
  `studybatch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`score_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('1', '1001', '90', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(20) NOT NULL DEFAULT '',
  `status` int(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zhangsan', '123456', '-1');
INSERT INTO `user` VALUES ('2', 'admin', 'password', '-1');
INSERT INTO `user` VALUES ('5', 'lisi', '123456', '-1');
