/*
 Navicat Premium Data Transfer

 Source Server         : 10.215.50.107
 Source Server Type    : MySQL
 Source Server Version : 50641
 Source Host           : 10.215.50.107:3306
 Source Schema         : springboot

 Target Server Type    : MySQL
 Target Server Version : 50641
 File Encoding         : 65001

 Date: 27/10/2018 17:37:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint(20) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (14);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `PASSWORD` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `AGE` int(11) NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '123456', 10);
INSERT INTO `users` VALUES (2, 'admin', '123456', 10);
INSERT INTO `users` VALUES (3, 'admin', '123456', 10);
INSERT INTO `users` VALUES (4, 'admin', '123456', 10);
INSERT INTO `users` VALUES (5, 'admin', '123456', 10);

SET FOREIGN_KEY_CHECKS = 1;
