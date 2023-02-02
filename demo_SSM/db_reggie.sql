/*
 Navicat Premium Data Transfer

 Source Server         : localhost😊
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : localhost:3306
 Source Schema         : ssm_db

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 02/02/2023 22:59:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_book
-- ----------------------------
DROP TABLE IF EXISTS `tbl_book`;
CREATE TABLE `tbl_book`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_book
-- ----------------------------
INSERT INTO `tbl_book` VALUES (1, '计算机理论', 'Spring核心', 'Spring入门教程');
INSERT INTO `tbl_book` VALUES (2, '小说', '记忆书店', '故事从十五年前开始。那时学成归国的刘明愚，为...');
INSERT INTO `tbl_book` VALUES (3, '社会纪实', '梅西传奇', '21世纪球王的传奇人生！一本值得收藏的梅西传记！全彩印刷，精选超百张梅西照片，随书超值附赠三张梅西海报和一张世界杯观战指南。');
INSERT INTO `tbl_book` VALUES (4, '绘本漫画', '翻面的黑猫', '《翻面的黑猫》是知名漫画家高野文子首部短篇漫画集，原名《绝/对安全剃刀》，曾获第十一届日本漫画家协会奖，共收录十七篇漫画作品，特别收录致中国读者寄语。');
INSERT INTO `tbl_book` VALUES (5, 'no_type', 'no_name', 'hello world');
INSERT INTO `tbl_book` VALUES (6, 'nobody', 'know', 'better than me!');
INSERT INTO `tbl_book` VALUES (14, '杂志', '读者', '一本风靡全国的老少皆宜的杂志');
INSERT INTO `tbl_book` VALUES (15, '11', '22', '33');
INSERT INTO `tbl_book` VALUES (10, 'you', 'are', 'best one');
INSERT INTO `tbl_book` VALUES (11, 'hello', 'world', 'good night!');
INSERT INTO `tbl_book` VALUES (12, 'please', 'help', 'me');
INSERT INTO `tbl_book` VALUES (13, '杂志', '青年文摘', '一种深受中学生喜爱的杂志');
INSERT INTO `tbl_book` VALUES (16, '杂志', '故事会', '较早的杂志，是很多人的青春');
INSERT INTO `tbl_book` VALUES (17, '小说', '三体', '知名的科幻小说');
INSERT INTO `tbl_book` VALUES (18, '小说', '三国演义', '改编自《三国志》的古典小说，四大名著之一');
INSERT INTO `tbl_book` VALUES (19, '教材', '五年高考三年模拟', '高中生常用的作业题册');
INSERT INTO `tbl_book` VALUES (24, '编程', 'C++', '编程语言的学习');
INSERT INTO `tbl_book` VALUES (23, '教材', '计算机程序的构造和解释', '一本买了很久但是一只没看的书，不是难懂只是书很枯燥！');

SET FOREIGN_KEY_CHECKS = 1;
