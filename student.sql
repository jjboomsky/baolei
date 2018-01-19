/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : student

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-01-19 18:14:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_coursename` varchar(100) NOT NULL,
  `c_classid` varchar(11) NOT NULL,
  `c_teacherid` int(11) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'java', '04', '1');

-- ----------------------------
-- Table structure for `honor`
-- ----------------------------
DROP TABLE IF EXISTS `honor`;
CREATE TABLE `honor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL,
  `creatdata` varchar(25) NOT NULL,
  `honor` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`),
  CONSTRAINT `sid` FOREIGN KEY (`sid`) REFERENCES `student` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of honor
-- ----------------------------
INSERT INTO `honor` VALUES ('2', '102', '2017-12-26', '三好学生');
INSERT INTO `honor` VALUES ('3', '104', '2017-12-27', '三好学生');
INSERT INTO `honor` VALUES ('4', '108', '2017-12-27', '优秀学生');

-- ----------------------------
-- Table structure for `reach`
-- ----------------------------
DROP TABLE IF EXISTS `reach`;
CREATE TABLE `reach` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_noreachtime` varchar(25) NOT NULL,
  `r_sid` int(11) NOT NULL,
  `r_tid` int(11) NOT NULL,
  `r_cid` int(11) DEFAULT NULL,
  `r_type` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`r_id`),
  KEY `s_id` (`r_sid`),
  KEY `t_id` (`r_tid`),
  KEY `c_id` (`r_cid`),
  CONSTRAINT `c_id` FOREIGN KEY (`r_cid`) REFERENCES `course` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `s_id` FOREIGN KEY (`r_sid`) REFERENCES `student` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_id` FOREIGN KEY (`r_tid`) REFERENCES `teacher` (`t_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reach
-- ----------------------------
INSERT INTO `reach` VALUES ('1', '2017-12-26:00:17', '104', '2', '1', '旷课');
INSERT INTO `reach` VALUES ('2', '2017-12-26:16:03', '102', '2', '1', '旷课');
INSERT INTO `reach` VALUES ('3', '2017-12-26:16:03', '104', '2', '1', '旷课');
INSERT INTO `reach` VALUES ('6', '2017-12-26:16:03', '108', '2', '1', '旷课');
INSERT INTO `reach` VALUES ('7', '2017-12-26:16:03', '109', '2', '1', '旷课');
INSERT INTO `reach` VALUES ('8', '2017-12-26:16:03', '115', '2', '1', '旷课');
INSERT INTO `reach` VALUES ('9', '2017-12-26:16:03', '130', '2', '1', '旷课');
INSERT INTO `reach` VALUES ('10', '2017-12-26:16:03', '133', '2', '1', '旷课');
INSERT INTO `reach` VALUES ('11', '2017-12-26:16:03', '135', '2', '1', '旷课');
INSERT INTO `reach` VALUES ('12', '2017-12-26:16:03', '102', '2', '1', '旷课');
INSERT INTO `reach` VALUES ('13', '2017-12-26:16:03', '102', '2', '1', '迟到');
INSERT INTO `reach` VALUES ('14', '2017-12-26:20:27', '102', '2', '1', '迟到');
INSERT INTO `reach` VALUES ('15', '2017-12-26:20:27', '104', '2', '1', '迟到');
INSERT INTO `reach` VALUES ('18', '2017-12-26:20:27', '108', '2', '1', '迟到');
INSERT INTO `reach` VALUES ('19', '2017-12-26:20:27', '109', '2', '1', '迟到');
INSERT INTO `reach` VALUES ('20', '2017-12-26:20:27', '115', '2', '1', '迟到');
INSERT INTO `reach` VALUES ('21', '2017-12-26:20:27', '130', '2', '1', '迟到');
INSERT INTO `reach` VALUES ('22', '2017-12-26:20:27', '133', '2', '1', '迟到');
INSERT INTO `reach` VALUES ('23', '2017-12-26:20:27', '135', '2', '1', '迟到');
INSERT INTO `reach` VALUES ('24', '2017-12-26:20:53', '138', '2', '1', '迟到');
INSERT INTO `reach` VALUES ('25', '2017-12-26:20:53', '139', '2', '1', '迟到');
INSERT INTO `reach` VALUES ('26', '2017-12-26:20:57', '136', '2', '1', '迟到');
INSERT INTO `reach` VALUES ('27', '2017-12-26:20:57', '137', '2', '1', '迟到');
INSERT INTO `reach` VALUES ('28', '2017-12-26:20:57', '138', '2', '1', '迟到');
INSERT INTO `reach` VALUES ('29', '2017-12-26:20:57', '139', '2', '1', '迟到');
INSERT INTO `reach` VALUES ('30', '2017-12-26:20:57', '140', '2', '1', '迟到');
INSERT INTO `reach` VALUES ('31', '2017-12-26:20:57', '141', '2', '1', '迟到');
INSERT INTO `reach` VALUES ('32', '2017-12-26:20:57', '142', '2', '1', '迟到');
INSERT INTO `reach` VALUES ('33', '2017-12-26:20:57', '143', '2', '1', '迟到');
INSERT INTO `reach` VALUES ('34', '2017-12-26:20:57', '144', '2', '1', '迟到');
INSERT INTO `reach` VALUES ('35', '2017-12-26:20:57', '145', '2', '1', '迟到');
INSERT INTO `reach` VALUES ('36', '2017-12-27:08:34', '104', '2', '1', '旷课');
INSERT INTO `reach` VALUES ('37', '2017-12-27:08:34', '133', '2', '1', '旷课');
INSERT INTO `reach` VALUES ('38', '2017-12-27:08:34', '138', '2', '1', '旷课');
INSERT INTO `reach` VALUES ('39', '2017-12-27:08:34', '140', '2', '1', '旷课');
INSERT INTO `reach` VALUES ('40', '2017-12-27:08:34', '104', '2', '1', '迟到');
INSERT INTO `reach` VALUES ('41', '2017-12-27:08:34', '133', '2', '1', '迟到');
INSERT INTO `reach` VALUES ('42', '2017-12-27:08:34', '138', '2', '1', '迟到');
INSERT INTO `reach` VALUES ('43', '2017-12-27:08:34', '140', '2', '1', '迟到');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(255) NOT NULL,
  `s_idnumber` varchar(20) DEFAULT NULL,
  `s_schoolid` int(20) DEFAULT NULL,
  `s_password` varchar(255) NOT NULL,
  `s_activedcode` varchar(100) DEFAULT NULL,
  `s_firsttime` varchar(50) NOT NULL,
  `s_address` varchar(255) DEFAULT NULL,
  `s_phone` int(15) DEFAULT NULL,
  `s_homephone` int(15) DEFAULT NULL,
  `s_class` varchar(50) NOT NULL,
  `s_bedroom` varchar(20) DEFAULT NULL,
  `s_sex` varchar(5) DEFAULT NULL,
  `s_studyid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('102', '张三', '123456789132456789', '2017120449', '456789', null, '2017-11', 'dgbgf年会节目已经', '123456789', '123465789', '04', '1234', '男', null);
INSERT INTO `student` VALUES ('104', '王尼玛', '123456789132456789', '2017120451', '456789', null, '2017-12', 'dgbgf年会节目已经', '123456789', '123465789', '04', '1234', '男', null);
INSERT INTO `student` VALUES ('108', '李宁', '123456789132456789', '2017120455', '456789', null, '2017-12', 'dgbgf年会节目已经', '123456789', '123465789', '04', '1234', '男', null);
INSERT INTO `student` VALUES ('109', '莱万', '123456789132456789', '2017120456', '456789', null, '2017-12', 'dgbgf年会节目已经', '123456789', '123465789', '04', '1234', '男', null);
INSERT INTO `student` VALUES ('115', '李三', '123456789132456789', '2017120462', '456789', null, '2017-12', 'dgbgf年会节目已经', '123456789', '123465789', '04', '1234', '男', null);
INSERT INTO `student` VALUES ('130', '李四', '123456789132456789', '2017120477', '456789', null, '2017-12', 'dgbgf年会节目已经', '123456789', '123465789', '04', '1234', '男', null);
INSERT INTO `student` VALUES ('133', '王五', '123456789132456789', '2017120480', '456789', null, '2017-12', 'dgbgf年会节目已经', '123456789', '123465789', '04', '1234', '男', null);
INSERT INTO `student` VALUES ('135', '李四', '123456789132456789', '2017120481', '456789', null, '2017-12', 'dgbgf年会节目已经', '123456789', '123465789', '04', '1234', '男', null);
INSERT INTO `student` VALUES ('136', '蔡依林', '123456789123456789', '2017120482', '456789', null, '2017-12', 'sfnhgnhgngngf', '123456789', '123456789', '04', '1234', '女', null);
INSERT INTO `student` VALUES ('137', '那英', '123456789123456789', '2017120482', '456789', null, '2017-12', '123456789123456789', '123456789', '123456789', '04', '1234', '女', null);
INSERT INTO `student` VALUES ('138', '王颖', '123456789123456789', '2017120201', '456789', null, '2017-12', '123456789', '123456789', '123456789', '02', '1234', '女', null);
INSERT INTO `student` VALUES ('139', '杨颖', '123456789123456789', '2017120301', '456789', null, '2017-12', '1324654678123123sdsdsa', '123456789', '123456789', '03', '1234', '女', null);
INSERT INTO `student` VALUES ('140', '王力宏', '123456789123456789', '2017120120', '456789', null, '2017-12', '浙江省湖州市湖州职业技术学院', '123456798', '132456789', '01', '1234', '男', null);
INSERT INTO `student` VALUES ('141', '周杰伦', '123456789123456789', '2017120205', '456789', null, '2017-12', '浙江省湖州市湖州职业技术学院', '123456789', '123456789', '02', '1234', '男', null);
INSERT INTO `student` VALUES ('142', '姜小白', '123456789123456789', '2017120206', '456789', null, '2017-12', '浙江省湖州市湖州职业技术学院', '123456789', '123456789', '02', '1234', '男', null);
INSERT INTO `student` VALUES ('143', '长焦', '123456789123456789', '2017120303', '456789', null, '2017-12', '浙江省湖州市湖州职业技术学院', '123456789', '123456789', '03', '1234', '男', null);
INSERT INTO `student` VALUES ('144', '张三丰', '123456789123456789', '2017120203', '456789', null, '2017-12', '浙江省湖州市湖州职业技术学院', '123456789', '123456789', '02', '1352', '男', null);
INSERT INTO `student` VALUES ('145', '张无忌', '123456789123456789', '2017120482', '456789', null, '2017-12', '浙江省湖州市湖州职业技术学院', '123456789', '123456789', '04', '1236', '男', null);
INSERT INTO `student` VALUES ('146', '刘七', '123456789123456789', '2017120202', '456789', null, '2017-12', '浙江省湖州市湖州职业技术学院', '123456789', '123456789', '02', '1235', '男', null);
INSERT INTO `student` VALUES ('147', '议政', '123456789123456789', '2017120302', '456789', null, '2017-12', 'dsadsadsad的撒大苏打撒旦撒', '123456789', '123456789', '03', '1234', '男', null);
INSERT INTO `student` VALUES ('148', '倒萨', '123456789123456789', '2017120207', '456789', null, '2017-12', '浙江省湖州市湖州职业技术学院', '123456789', '123456789', '02', '1226', '男', null);
INSERT INTO `student` VALUES ('149', '张三', '123456789123456789', '2017120304', '456789', null, '2017-12', '浙江省湖州市湖州职业技术学院', '12345678', '12345678', '03', '1234', '男', null);

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_name` varchar(255) NOT NULL,
  `t_idnumber` varchar(20) DEFAULT NULL,
  `t_teacherid` varchar(20) NOT NULL,
  `t_password` varchar(255) NOT NULL,
  `t_activedcode` varchar(100) DEFAULT NULL,
  `t_firsttime` varchar(30) NOT NULL,
  `t_address` varchar(255) NOT NULL,
  `t_phone` int(15) DEFAULT NULL,
  `t_homephone` int(15) DEFAULT NULL,
  `t_ifadmin` bit(1) NOT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '21312', '312312', '123456', '123456', '312312', '312312', '312', '321312', '312312', '');
INSERT INTO `teacher` VALUES ('2', '赵六', '165345646523', 'admin', 'admin', '14564', '2335264', 'sdasdasda', '123456789', '1231465489', '');
