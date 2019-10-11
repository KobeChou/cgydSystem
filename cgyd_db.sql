/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : cgyd_db

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 07/10/2019 13:40:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin`  (
  `userId` int(11) NOT NULL,
  `userName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userPw` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES (1, 'admin', 'admin');

-- ----------------------------
-- Table structure for t_catelog
-- ----------------------------
DROP TABLE IF EXISTS `t_catelog`;
CREATE TABLE `t_catelog`  (
  `catelog_id` int(11) NOT NULL,
  `catelog_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `catelog_del` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`catelog_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_catelog
-- ----------------------------
INSERT INTO `t_catelog` VALUES (2, '羽毛球场地', 'no');
INSERT INTO `t_catelog` VALUES (7, '乒乓球场地', 'no');

-- ----------------------------
-- Table structure for t_gonggao
-- ----------------------------
DROP TABLE IF EXISTS `t_gonggao`;
CREATE TABLE `t_gonggao`  (
  `gonggao_id` int(11) NOT NULL,
  `gonggao_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gonggao_content` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gonggao_data` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gonggao_fabuzhe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gonggao_del` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gonggao_one1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gonggao_one2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gonggao_one3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gonggao_one4` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gonggao_one5` datetime(0) NULL DEFAULT NULL,
  `gonggao_one6` datetime(0) NULL DEFAULT NULL,
  `gonggao_one7` int(11) NULL DEFAULT NULL,
  `gonggao_one8` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`gonggao_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_gonggao
-- ----------------------------
INSERT INTO `t_gonggao` VALUES (1, '健身公告', '传递运动价值,缔造健康未来&rdquo;为经营理念,促进体育运动事业的健康发展为企业宗旨，始终坚持科学的发展观和&ldquo;唯才是用&rdquo;的人才观，以责任和关爱支持回报社会。<br />', '2016-3-17 11:56:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_liuyan
-- ----------------------------
DROP TABLE IF EXISTS `t_liuyan`;
CREATE TABLE `t_liuyan`  (
  `liuyan_id` int(11) NOT NULL,
  `liuyan_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `liuyan_content` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `liuyan_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `liuyan_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`liuyan_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_liuyan
-- ----------------------------
INSERT INTO `t_liuyan` VALUES (1, '环境不错', '干净  卫生 设施好', '2016-3-17 1:27:43', 'liusan');
INSERT INTO `t_liuyan` VALUES (2, '场地不错', '<p>适合休闲 锻炼</p>', '2016-3-17 15:31:30', 'liusan');

-- ----------------------------
-- Table structure for t_pinglun
-- ----------------------------
DROP TABLE IF EXISTS `t_pinglun`;
CREATE TABLE `t_pinglun`  (
  `id` int(11) NOT NULL,
  `qch_id` int(11) NULL DEFAULT NULL,
  `content` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shijian` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_pinglun
-- ----------------------------
INSERT INTO `t_pinglun` VALUES (1, NULL, '<p>hao</p>', '2016-3-17 01:23');
INSERT INTO `t_pinglun` VALUES (2, NULL, '<p>wwwww</p>', '2016-3-17 01:25');
INSERT INTO `t_pinglun` VALUES (3, NULL, '<p>haob</p>', '2016-3-17 14:05');
INSERT INTO `t_pinglun` VALUES (4, NULL, '<p>还行，</p>', '2016-3-17 14:24');
INSERT INTO `t_pinglun` VALUES (5, 10, '<p>很好 太好了 下回还来</p>', '2016-3-17 15:27');
INSERT INTO `t_pinglun` VALUES (6, 10, 'adsf', '2019-10-04 15:31');
INSERT INTO `t_pinglun` VALUES (7, 10, '垃圾体育馆', '2019-10-06 22:26');
INSERT INTO `t_pinglun` VALUES (8, 4, 'asdfadfadf', '2019-10-07 02:02');
INSERT INTO `t_pinglun` VALUES (9, 4, 'adfadfasf', '2019-10-07 02:05');
INSERT INTO `t_pinglun` VALUES (10, 4, '请输入内容adsfadsfadsf', '2019-10-07 02:05');

-- ----------------------------
-- Table structure for t_qch
-- ----------------------------
DROP TABLE IF EXISTS `t_qch`;
CREATE TABLE `t_qch`  (
  `id` int(11) NOT NULL,
  `qcbh` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `area` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jieshao` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fujian` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qianshu` int(11) NULL DEFAULT NULL,
  `catelog_id` int(11) NULL DEFAULT NULL,
  `del` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `catelog_id`(`catelog_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_qch
-- ----------------------------
INSERT INTO `t_qch` VALUES (9, '5001', '200', '<p>假日好去处 健身娱乐</p>', '/upload/1394250765632.jpg', 8, 2, 'no');
INSERT INTO `t_qch` VALUES (10, '5002', '200', '健身 时尚 休闲', '/upload/1394250810106.jpg', 8, 2, 'no');
INSERT INTO `t_qch` VALUES (12, '1001', '100', '乒乒乓乓', '/upload/1570384451746.jpg', 8, 7, 'no');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_pw` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_realname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_sex` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_qq` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fujian` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_del` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userIDNo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'liusan', 'liusan', '刘三', '北京路', '男', '1355555555', 'liusan@yahoo.cn', '2222', '/upload/1336708799437.jpg', '普通会员', 'no', NULL);
INSERT INTO `t_user` VALUES (2, 'zhangwu', 'zhangwu', '张武', '和平区', '男', '13988887777', '123456@qq.com', '12346', '/upload/1386525061675.jpg', '普通会员', 'no', NULL);
INSERT INTO `t_user` VALUES (3, '1212', '123456', '12', '1', '男', '1', '1', '1', '/img/none.gif', '普通会员', 'no', NULL);
INSERT INTO `t_user` VALUES (4, '12121', '111111', '12', '1', '男', '1', '1', '1', '/img/none.gif', '普通会员', 'no', NULL);
INSERT INTO `t_user` VALUES (5, 'asdf', '123456', '12', '1', '男', '1', '1', '1', '/img/none.gif', '普通会员', 'no', NULL);
INSERT INTO `t_user` VALUES (6, 'tt', '123456', '123456', '1', '男', '111111', '1', '1', '/img/none.gif', '普通会员', 'no', NULL);
INSERT INTO `t_user` VALUES (7, 'zhanghao', '123456tt', '张三', '阿道夫', '男', '18066073291', '1111@qq.com', '', '/img/none.gif', '��ͨ��Ա', 'no', NULL);
INSERT INTO `t_user` VALUES (8, '121212', '11111111', '1212', '12', '男', '12', '12@q.com', '', '/img/none.gif', '��ͨ��Ա', 'no', NULL);
INSERT INTO `t_user` VALUES (9, 'asdfadsf', '11111111', '1111', '1', '��', '1', '1111@qq.com', '', '/img/none.gif', '普通会员', 'no', NULL);
INSERT INTO `t_user` VALUES (10, '121211111', '123456', '12', '1', '��', '1', '1111@qq.com', '', '/img/none.gif', '鏅�氫細鍛�', 'no', NULL);
INSERT INTO `t_user` VALUES (11, '1212111111', '123456', '1', '1', '男', '1', '1111@qq.com', '', '/img/none.gif', '鏅�氫細鍛�', 'no', NULL);
INSERT INTO `t_user` VALUES (12, '1212141', '123456tt', '1212', '1', '男', '1', '1111@qq.com', '1', '/img/none.gif', '普通会员', 'no', NULL);

-- ----------------------------
-- Table structure for t_yuding
-- ----------------------------
DROP TABLE IF EXISTS `t_yuding`;
CREATE TABLE `t_yuding`  (
  `id` int(11) NOT NULL,
  `userId` int(11) NULL DEFAULT NULL,
  `qchId` int(11) NULL DEFAULT NULL,
  `tianshu` int(11) NULL DEFAULT NULL,
  `yudingzheTel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shijian` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sjdlist` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ydrq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paystatus` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '0:未支付，1：已支付',
  `hystatus` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '0：未核验，1：已核验',
  `hycode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '核验码',
  `jingdu` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '未开始，已完成',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `qchId`(`qchId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_yuding
-- ----------------------------
INSERT INTO `t_yuding` VALUES (18, 6, 12, NULL, '11', '2019-10-07 09:07', 'no', '{\"time12\":\"20:00-21:00\"}', '2019-10-07', '1', '0', '1570410458523', '0');
INSERT INTO `t_yuding` VALUES (19, 6, 9, NULL, '1', '2019-10-07 09:08', 'no', '{\"time10\":\"18:00-19:00\",\"time11\":\"19:00-20:00\"}', '2019-10-07', '0', '0', NULL, '0');
INSERT INTO `t_yuding` VALUES (20, 6, 9, NULL, '1', '2019-10-07 09:08', 'no', '{\"time10\":\"18:00-19:00\",\"time11\":\"19:00-20:00\"}', '2019-10-07', '0', '0', NULL, '0');

-- ----------------------------
-- Table structure for t_yudingshijian
-- ----------------------------
DROP TABLE IF EXISTS `t_yudingshijian`;
CREATE TABLE `t_yudingshijian`  (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `qchId` int(10) NULL DEFAULT NULL,
  `shijian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time1` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time2` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time3` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time4` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time5` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time6` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time7` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time8` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time9` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time10` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time11` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time12` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_yudingshijian
-- ----------------------------
INSERT INTO `t_yudingshijian` VALUES (20, 12, '2019-10-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20:00-21:00');
INSERT INTO `t_yudingshijian` VALUES (21, 9, '2019-10-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18:00-19:00', '19:00-20:00', NULL);

-- ----------------------------
-- Table structure for t_zlxx
-- ----------------------------
DROP TABLE IF EXISTS `t_zlxx`;
CREATE TABLE `t_zlxx`  (
  `id` int(11) NOT NULL DEFAULT 0,
  `qch_id` int(11) NULL DEFAULT NULL,
  `kehuming` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kehuzheng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rushijian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lishijian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `feiyong` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_zlxx
-- ----------------------------
INSERT INTO `t_zlxx` VALUES (1, 3, '刘三', '3713231980', '2016-3-17 16:25', '2016-3-17 16:25', 100);

SET FOREIGN_KEY_CHECKS = 1;
