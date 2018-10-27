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
)

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '123456', 10);
INSERT INTO `users` VALUES (2, 'admin', '123456', 10);
INSERT INTO `users` VALUES (3, 'admin', '123456', 10);
INSERT INTO `users` VALUES (4, 'admin', '123456', 10);
INSERT INTO `users` VALUES (5, 'admin', '123456', 10);

SET FOREIGN_KEY_CHECKS = 1;
