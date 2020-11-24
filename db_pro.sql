/*
 Navicat Premium Data Transfer

 Source Server         : mypro
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : db_pro

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 24/11/2020 17:09:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `adminid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `adminpassword` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`adminid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', 'admin');

-- ----------------------------
-- Table structure for orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `orderinfo`;
CREATE TABLE `orderinfo`  (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `orderuid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `orderuname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `orderutel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `orderuaddress` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ordersname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ordersnum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `orderssize` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ordersimg` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ordersprice` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`orderid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderinfo
-- ----------------------------
INSERT INTO `orderinfo` VALUES (1, '201720', '青', '15978284959', '山东省青岛市', '复刻女子运动鞋 Air Jordan 6 Retro SD', '1', '41', 'shoesimg/1605683102175.jpg', '1599');
INSERT INTO `orderinfo` VALUES (2, '201721', '岛', '15873642598', '山东青岛', '复刻女子运动鞋 Air Jordan 6 Retro SD', '1', '40', 'shoesimg/1605683102175.jpg', '1599');
INSERT INTO `orderinfo` VALUES (3, '201720', '青', '15978284959', '山东省青岛市', '男子运动鞋 Air Jordan 1 Zoom Air CMFT BBS', '1', '41', 'shoesimg/1605683291312.jpg', '1199');
INSERT INTO `orderinfo` VALUES (4, '201721', '岛', '15873642598', '山东青岛', '男子运动鞋 Air Jordan 7 Retro GC', '1', '40', 'shoesimg/1605683349220.jpg', '1599');
INSERT INTO `orderinfo` VALUES (5, '201720', '青', '15978284959', '山东省青岛市', '男子篮球鞋 Air Jordan XXXV SP-Z PF', '1', '41', 'shoesimg/1606206155987.jpg', '1499');

-- ----------------------------
-- Table structure for shoes
-- ----------------------------
DROP TABLE IF EXISTS `shoes`;
CREATE TABLE `shoes`  (
  `shoesid` int(11) NOT NULL AUTO_INCREMENT,
  `shoesname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `shoesclass` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `s40` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `s41` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `s42` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `s43` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `s44` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `s45` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `s46` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `shoesimg` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `shoesprice` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`shoesid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shoes
-- ----------------------------
INSERT INTO `shoes` VALUES (1, '复刻女子运动鞋 Air Jordan 6 Retro SD', 'Air Jordan 6', '0', '0', '1', '1', '1', '1', '1', 'shoesimg/1605683102175.jpg', '1599');
INSERT INTO `shoes` VALUES (2, '男子篮球鞋 Air Jordan XXXV PF', 'Air Jordan XXXV', '1', '1', '1', '1', '1', '1', '1', 'shoesimg/1605683160041.jpg', '1499');
INSERT INTO `shoes` VALUES (3, '男子运动鞋 Air Jordan 1 Zoom Air CMFT', 'Air Jordan 1', '1', '1', '1', '1', '1', '1', '1', 'shoesimg/1605683219287.jpg', '1199');
INSERT INTO `shoes` VALUES (4, '男子运动鞋 Air Jordan 1 Zoom Air CMFT BBS', 'Air Jordan 1', '1', '0', '1', '1', '1', '1', '1', 'shoesimg/1605683291312.jpg', '1199');
INSERT INTO `shoes` VALUES (5, '男子运动鞋 Air Jordan 7 Retro GC', 'Air Jordan 7', '0', '1', '1', '1', '1', '1', '1', 'shoesimg/1605683349220.jpg', '1599');
INSERT INTO `shoes` VALUES (10, '男子篮球鞋 Air Jordan XXXV SP-Z PF', 'Air Jordan XXXV', '1', '0', '1', '1', '1', '1', '1', 'shoesimg/1606206155987.jpg', '1499');
INSERT INTO `shoes` VALUES (11, '男子运动鞋 Air Jordan 1 Mid SE', 'Air Jordan 1', '1', '1', '1', '1', '1', '1', '1', 'shoesimg/1606206186780.jpg', '999');
INSERT INTO `shoes` VALUES (12, '复刻男子运动鞋 Air Jordan 3 Retro SE', 'Air Jordan 3', '1', '1', '1', '1', '1', '1', '1', 'shoesimg/1606206274464.jpg', '1399');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `useremail` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `userpassword` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `usergender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `usertel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `usershsize` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `userstate` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `useraddress` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('201720', '201720@qq.com', '201720', '青', '男', '15978284959', '41', '账号正常', '山东省青岛市');
INSERT INTO `userinfo` VALUES ('201721', '201721@qq.com', '201721', '岛', '女', '15873642598', '40', '账号正常', '山东青岛');

SET FOREIGN_KEY_CHECKS = 1;
